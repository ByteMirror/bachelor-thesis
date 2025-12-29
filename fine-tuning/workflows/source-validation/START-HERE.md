# Source Validation - Orchestrator Entry Point

**Read this file first. It tells you everything you need to run a validation batch.**

---

## Your Job

Validate citations in a Bachelor thesis by:
1. Claiming 4 unclaimed sources
2. Spawning 4 parallel agents (one per source)
3. Reviewing their reports
4. Applying fixes to `references.bib` and `latex/*.tex`

---

## Quick Start (Copy-Paste Ready)

### Step 1: Generate Your ID
```
ORCH_ID = orch-{YYYYMMDD}-{HHMM}  (e.g., orch-20251228-2230)
```

### Step 2: Claim Sources

1. Read `QUEUE.md` → pick 4 sources (highest priority first)
2. Read `CLAIMED.md` → verify they're not already claimed
3. **IMMEDIATELY** update `CLAIMED.md` with your claim:

```markdown
| Citation Key | Orchestrator | Batch | Claimed At | Status |
|--------------|--------------|-------|------------|--------|
| Source1 | your-orch-id | batch-XXX | timestamp | validating |
| Source2 | your-orch-id | batch-XXX | timestamp | validating |
| Source3 | your-orch-id | batch-XXX | timestamp | validating |
| Source4 | your-orch-id | batch-XXX | timestamp | validating |
```

### Step 3: Create Batch Folder

```
batches/batch-XXX/
├── MANIFEST.md    (create this with your sources list)
└── sources/       (agents write reports here)
```

### Step 4: Spawn 4 Agents

Use this prompt template for each agent:

```
You are a source validation agent. Validate ONE citation.

**Your source**: {CITATION_KEY}
**Output folder**: fine-tuning/workflows/source-validation/batches/batch-{XXX}/sources/

**CRITICAL - READ-ONLY MODE**:
- DO NOT edit references.bib
- DO NOT edit latex/*.tex
- ONLY create your report file

**Steps**:
1. Read `WORKFLOW.md` for the 5 validation rules
2. Find the BibTeX entry in `references.bib`
3. Find all \autocite{{CITATION_KEY}} in `latex/*.tex`
4. Fetch the source URL and verify claims
5. Create report: `batches/batch-{XXX}/sources/{CITATION_KEY}.md`
6. Document all required fixes (but DO NOT apply them)

Working directory: /home/fabian/Github/bachelor-thesis
```

### Step 5: Wait & Review

After all agents complete:
1. Read all reports in `batches/batch-XXX/sources/`
2. Create `batches/batch-XXX/FIXES.md` with consolidated changes

### Step 6: Apply Fixes

Apply changes sequentially to:
- `references.bib` (BibTeX type changes, urldate fixes)
- `latex/*.tex` (citation replacements if needed)

### Step 7: Complete

1. Update `COMPLETED.md` with results
2. Remove your sources from `CLAIMED.md`
3. Update statistics in `QUEUE.md`

---

## Key Files

| File | Purpose | When to Read |
|------|---------|--------------|
| `QUEUE.md` | Available sources | Step 2 |
| `CLAIMED.md` | Lock file | Step 2 (read & write) |
| `WORKFLOW.md` | 5 validation rules | Reference |
| `ORCHESTRATION.md` | Detailed protocol | If confused |
| `COMPLETED.md` | Done log | Step 7 |

---

## The 5 Rules (Summary)

1. **Prefer @online** over books/papers
2. **BibTeX syntax** must be correct
3. **urldate** must be between 2025-10-01 and 2025-12-24
4. **Only Daggerheart** allowed as @book (replace others)
5. **≤6 pages** or document exception

---

## Example Batch Run

```
Orchestrator: orch-20251228-2300
Batch: batch-002
Sources: FoundryTokens2024, Roll20Graphics2024, ElectronPerformanceGuide2024, Canvas2025

[Claim sources in CLAIMED.md]
[Create batches/batch-002/MANIFEST.md]
[Spawn 4 agents with report-only instructions]
[Wait for completion]
[Review 4 reports]
[Create FIXES.md]
[Apply fixes to references.bib]
[Update COMPLETED.md, CLAIMED.md, QUEUE.md]
```

---

## Current Status

- **Completed**: 4 sources (batch-001)
- **Remaining**: 61 sources
- **Next batch**: batch-002

---

> Point new orchestrators to: `fine-tuning/workflows/source-validation/START-HERE.md`
