# Currently Claimed Sources

> **IMPORTANT**: Before picking sources, check this file. After picking, IMMEDIATELY add your claim here.
>
> **Format**: `| CitationKey | Orchestrator-ID | Batch | Timestamp | Status |`

## Active Claims

| Citation Key | Orchestrator | Batch | Claimed At | Status |
|--------------|--------------|-------|------------|--------|
| (none) | - | - | - | - |

---

## Claiming Protocol

### Step 1: Generate Orchestrator ID
Use format: `orch-{timestamp}` (e.g., `orch-20251228-2200`)

### Step 2: Check for Conflicts
Read this file. If your target source is already claimed, pick a different one.

### Step 3: Claim Sources (ATOMIC)
Add your sources to the table above BEFORE spawning any agents.

### Step 4: Create Batch Folder
Create `batches/batch-XXX/` with your claimed sources.

### Step 5: Spawn Agents
Only after claiming and folder creation, spawn validation agents.

### Step 6: On Completion
- Move completed sources to COMPLETED.md
- Remove from this file
- Update QUEUE.md statistics

---

## Claim Timeout

If a claim is older than **2 hours** without completion, it can be considered abandoned.
Other orchestrators may reclaim abandoned sources.

---

> Last updated: 2025-12-29
