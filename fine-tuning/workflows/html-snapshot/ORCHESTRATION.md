# HTML Snapshot Orchestration

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
    │batch-001│    │batch-002│    │batch-003│    │batch-XXX│
    └────┬────┘    └────┬────┘    └────┬────┘    └────┬────┘
         │              │              │              │
    ┌────┼────┐    ┌────┼────┐   (same pattern)  (same pattern)
    │    │    │    │    │    │
   A1   A2   A3   A1   A2   A3
   A4   A5        A4   A5

   Each agent captures 1 source → ephemeral-sources/{key}/
```

**Key Principle**: Each orchestrator claims sources atomically, creates its own batch folder, spawns snapshot agents, and operates independently.

---

## Multi-Orchestrator Protocol

### Step 1: Generate Unique ID

```bash
# Format: snap-YYYYMMDD-HHMM-random
ORCH_ID="snap-$(date +%Y%m%d-%H%M)-$RANDOM"
```

### Step 2: Atomic Source Claiming

**CRITICAL**: Read and update CLAIMED.md BEFORE spawning any agents.

```markdown
# In CLAIMED.md, add your sources:
| Citation Key | Orchestrator | Batch | Claimed At | Status |
|--------------|--------------|-------|------------|--------|
| PixiPerf2024 | snap-20251229-1430-12345 | batch-001 | 2025-12-29 14:30 | capturing |
| FoundryVTT2024 | snap-20251229-1430-12345 | batch-001 | 2025-12-29 14:30 | capturing |
```

### Step 3: Create Batch Folder

```bash
BATCH_NUM="001"  # Next available number
mkdir -p fine-tuning/workflows/html-snapshot/batches/batch-${BATCH_NUM}/reports
```

### Step 4: Create Manifest

```markdown
# batches/batch-001/MANIFEST.md
**Orchestrator**: snap-20251229-1430-12345
**Created**: 2025-12-29 14:30
**Status**: IN PROGRESS

## Sources
| Citation Key | URL | Agent | Status |
|--------------|-----|-------|--------|
| PixiPerf2024 | https://pixijs.com/... | Agent-1 | pending |
| FoundryVTT2024 | https://foundryvtt.com/... | Agent-2 | pending |
| Roll202024 | https://roll20.net/ | Agent-3 | pending |
| ElectronWiki2024 | https://en.wikipedia.org/... | Agent-4 | pending |
| PixiJS2024Launch | https://pixijs.com/... | Agent-5 | pending |
```

### Step 5: Spawn Snapshot Agents (5 in parallel)

**IMPORTANT**: Spawn exactly 5 agents in a SINGLE message block for parallel execution!

**Agent Prompt Template**:

```
You are an HTML snapshot agent. Capture and verify ONE web source for archival.

**Your assigned source**: {CITATION_KEY}
**URL**: {URL}
**Batch folder**: fine-tuning/workflows/html-snapshot/batches/batch-{XXX}/reports/
**Snapshot destination**: ephemeral-sources/{CITATION_KEY}/

**CRITICAL INSTRUCTIONS**:
1. Navigate to the URL using browser_navigate
2. Wait for page load using browser_wait_for (2-3 seconds or specific text)
3. Capture accessibility snapshot using browser_snapshot → save as content.md
4. Take screenshot using browser_take_screenshot → save as screenshot.png
5. Extract full HTML using browser_evaluate with document.documentElement.outerHTML
6. Create snapshot folder: ephemeral-sources/{CITATION_KEY}/
7. Save all artifacts (snapshot.html, content.md, screenshot.png, metadata.json)
8. Create verification report at: batches/batch-{XXX}/reports/{CITATION_KEY}.md

**Verification checklist**:
- Page loaded successfully (no 404/500 errors)
- Content is present (not empty/error page)
- Content matches expected topic
- All files saved correctly

**Fallback if Playwright fails**:
- Try WebFetch as alternative
- Search for archive.org version
- Document failure and flag for manual review

**Working directory**: /home/fabian/Github/bachelor-thesis

Report your findings when complete.
```

### Step 6: Wait for Agents

```python
# Spawn 5 agents in parallel with run_in_background=true
# Use TaskOutput to wait for completion
```

### Step 7: Consolidate Results

After all agents complete:

1. Review all reports from `batches/batch-XXX/reports/`
2. Verify snapshots exist in `ephemeral-sources/`
3. Create `batches/batch-XXX/RESULTS.md` with summary
4. Note any failures for retry or manual handling

### Step 8: Complete Batch

1. Update `COMPLETED.md` with results
2. Remove sources from `CLAIMED.md`
3. Update `QUEUE.md` statistics
4. Mark `MANIFEST.md` as completed

---

## Spawning Agents - CRITICAL

**You MUST spawn all 5 agents in a SINGLE message with 5 parallel Task tool calls!**

Example of CORRECT spawning:

```
<use Task tool for Agent 1>
<use Task tool for Agent 2>  (same message)
<use Task tool for Agent 3>  (same message)
<use Task tool for Agent 4>  (same message)
<use Task tool for Agent 5>  (same message)
```

This ensures all agents run truly in parallel.

---

## Conflict Prevention

### File Locking via CLAIMED.md

- Before picking a source, check if it's in CLAIMED.md
- Add your claim IMMEDIATELY after deciding
- Claims older than 30 minutes can be considered abandoned

### Batch Number Allocation

- Check existing `batches/batch-XXX/` folders
- Use next available number
- Include orchestrator ID in MANIFEST.md to track ownership

### Snapshot Folder Conflicts

- Each source has unique citation_key
- Only one agent works on each key
- Check if folder exists before creating (skip if already done)

---

## Batch Sizes & Timing

| Metric | Value |
|--------|-------|
| Agents per batch | 5 |
| Sources per agent | 1 |
| Expected time per source | 30-60 seconds |
| Batch completion | 2-3 minutes |
| Total sources | ~81 |
| Total batches | ~17 |

---

## Quick Start Command

```
Run HTML snapshot workflow:
1. Generate orchestrator ID: snap-{timestamp}
2. Read QUEUE.md for available sources
3. Check CLAIMED.md for conflicts
4. Claim 5 sources by updating CLAIMED.md
5. Create batches/batch-XXX/ folder
6. Spawn 5 snapshot agents IN PARALLEL (single message!)
7. Wait for completion
8. Review reports and verify snapshots
9. Update COMPLETED.md and QUEUE.md
```

---

## Error Recovery

### Agent Failure

If an agent fails mid-capture:
1. Check if partial files exist
2. Either retry the source or mark as failed
3. Document in RESULTS.md

### Orchestrator Crash

If orchestrator dies:
1. Check CLAIMED.md for orphaned claims
2. Clean up incomplete batch
3. Resume with new orchestrator

---

## Files Overview

| File | Purpose | Update Frequency |
|------|---------|------------------|
| QUEUE.md | Available sources | After each batch |
| CLAIMED.md | Active claims (locks) | Before/after each batch |
| COMPLETED.md | Finished snapshots | After each batch |
| batches/batch-XXX/MANIFEST.md | Batch contents | During batch |
| batches/batch-XXX/RESULTS.md | Batch summary | After batch |
| batches/batch-XXX/reports/*.md | Agent reports | By agents |
| ephemeral-sources/{key}/* | Actual snapshots | By agents |

---

> Last updated: 2025-12-29
