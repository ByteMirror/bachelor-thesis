# Source Validation Orchestration

## Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                    Shared State (Files)                          │
│  ┌──────────┐  ┌──────────┐  ┌────────────┐  ┌────────────┐    │
│  │ QUEUE.md │  │CLAIMED.md│  │COMPLETED.md│  │ batches/   │    │
│  │(available)│ │ (locks)  │  │  (done)    │  │            │    │
│  └──────────┘  └──────────┘  └────────────┘  └────────────┘    │
└─────────────────────────────────────────────────────────────────┘
         │              │              │              │
    ┌────┴────┐    ┌────┴────┐    ┌────┴────┐    ┌────┴────┐
    │  Orch 1 │    │  Orch 2 │    │  Orch 3 │    │  Orch N │
    │batch-002│    │batch-003│    │batch-004│    │batch-XXX│
    └────┬────┘    └────┬────┘    └────┬────┘    └────┬────┘
         │              │              │              │
    ┌────┼────┐    ┌────┼────┐   (same pattern)  (same pattern)
    │    │    │    │    │    │
   A1   A2   A3   A1   A2   A3
   A4            A4
```

**Key Principle**: Each orchestrator claims sources atomically, creates its own batch folder, and operates independently. No conflicts because each works on different sources.

---

## Multi-Orchestrator Protocol

### Step 1: Generate Unique ID

```bash
# Format: orch-YYYYMMDD-HHMM-random
ORCH_ID="orch-$(date +%Y%m%d-%H%M)-$RANDOM"
```

### Step 2: Atomic Source Claiming

**CRITICAL**: Read and update CLAIMED.md BEFORE spawning any agents.

```markdown
# In CLAIMED.md, add your sources:
| Citation Key | Orchestrator | Batch | Claimed At | Status |
|--------------|--------------|-------|------------|--------|
| FoundryTokens2024 | orch-20251228-2230-12345 | batch-002 | 2025-12-28 22:30 | validating |
| Roll20Graphics2024 | orch-20251228-2230-12345 | batch-002 | 2025-12-28 22:30 | validating |
```

### Step 3: Create Batch Folder

```bash
BATCH_NUM="002"  # Next available number
mkdir -p batches/batch-${BATCH_NUM}/sources
```

### Step 4: Create Manifest

```markdown
# batches/batch-002/MANIFEST.md
**Orchestrator**: orch-20251228-2230-12345
**Created**: 2025-12-28 22:30
**Status**: IN PROGRESS

## Sources
| Citation Key | Agent | Status |
|--------------|-------|--------|
| FoundryTokens2024 | Agent-1 | pending |
| Roll20Graphics2024 | Agent-2 | pending |
| ElectronPerformanceGuide2024 | Agent-3 | pending |
| Canvas2025 | Agent-4 | pending |
```

### Step 5: Spawn Agents (Report-Only)

**Agent Prompt Template**:

```
You are a source validation agent. Validate ONE citation from a Bachelor thesis.

**Your assigned source**: {CITATION_KEY}
**Batch folder**: fine-tuning/workflows/source-validation/batches/batch-{XXX}/sources/

**CRITICAL RULES**:
1. DO NOT edit references.bib - only READ it
2. DO NOT edit latex/*.tex files - only READ them
3. ONLY create your report file in the batch folder

**Instructions**:
1. Read WORKFLOW.md for the 5 validation rules
2. Read the BibTeX entry for {CITATION_KEY} from references.bib
3. Find all \\autocite{CITATION_KEY} in latex/*.tex files
4. Fetch the source URL and verify the content matches claims
5. Check all 5 rules (prefer @online, BibTeX syntax, urldate range, only Daggerheart as book, ≤6 pages)
6. Create report: batches/batch-{XXX}/sources/{CITATION_KEY}.md
7. Document ALL required fixes in the report (but DO NOT apply them)
8. If Rule 4 violation (book), provide complete replacement BibTeX entries

**Working directory**: /home/fabian/Github/bachelor-thesis

Report your findings when complete.
```

### Step 6: Wait for Agents

```python
# Spawn 4 agents in parallel with run_in_background=true
# Use TaskOutput to wait for completion
```

### Step 7: Consolidate & Apply Fixes

After all agents complete:

1. Read all reports from `batches/batch-XXX/sources/`
2. Create `batches/batch-XXX/FIXES.md` documenting all changes
3. Apply BibTeX fixes to `references.bib` (sequential)
4. Apply LaTeX fixes to `latex/*.tex` (sequential)
5. Run `latexmk` to verify compilation

### Step 8: Complete Batch

1. Update `COMPLETED.md` with results
2. Remove sources from `CLAIMED.md`
3. Update `QUEUE.md` statistics
4. Mark `MANIFEST.md` as completed

---

## Conflict Prevention

### File Locking via CLAIMED.md

- Before picking a source, check if it's in CLAIMED.md
- Add your claim IMMEDIATELY after deciding
- Claims older than 2 hours can be considered abandoned

### Batch Number Allocation

- Check existing `batches/batch-XXX/` folders
- Use next available number
- Include orchestrator ID in MANIFEST.md to track ownership

### Fix Application Order

- Only ONE orchestrator applies fixes at a time
- Other orchestrators wait or work on unclaimed sources
- Use file modification timestamps to detect conflicts

---

## Example: Running Multiple Orchestrators

**Terminal 1**:
```bash
claude --dangerously-skip-permissions
> Run source validation batch. Use orchestrator ID orch-term1-001.
> Pick 4 sources from QUEUE.md and validate them.
```

**Terminal 2** (simultaneously):
```bash
claude --dangerously-skip-permissions
> Run source validation batch. Use orchestrator ID orch-term2-001.
> Pick 4 DIFFERENT sources from QUEUE.md (check CLAIMED.md first).
```

Both orchestrators:
1. Claim different sources in CLAIMED.md
2. Create separate batch folders (batch-002, batch-003)
3. Run their agents in parallel
4. Apply fixes sequentially (one waits for other)

---

## Estimated Runtime

| Phase | Time | Parallelism |
|-------|------|-------------|
| Claim sources | <1 min | Per orchestrator |
| Agent validation | 2-5 min | 4 agents parallel |
| Fix application | 1-2 min | Sequential |
| Verification | 1 min | Sequential |

**With 4 orchestrators**: ~15 batches × 5 min = ~75 min for 61 sources

---

## Files Overview

| File | Purpose | Update Frequency |
|------|---------|------------------|
| QUEUE.md | Available sources | After each batch |
| CLAIMED.md | Active claims (locks) | Before/after each batch |
| COMPLETED.md | Finished validations | After each batch |
| batches/batch-XXX/MANIFEST.md | Batch contents | During batch |
| batches/batch-XXX/FIXES.md | Required changes | After agents complete |
| batches/batch-XXX/sources/*.md | Validation reports | By agents |

---

## Quick Start Command

```
Run source validation workflow:
1. Generate orchestrator ID: orch-{timestamp}
2. Read QUEUE.md for available sources
3. Check CLAIMED.md for conflicts
4. Claim 4 sources by updating CLAIMED.md
5. Create batches/batch-XXX/ folder
6. Spawn 4 report-only agents in parallel
7. Wait for completion
8. Review reports and create FIXES.md
9. Apply all fixes sequentially
10. Update COMPLETED.md and QUEUE.md
```

---

> Last updated: 2025-12-28
