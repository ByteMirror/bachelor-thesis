# Grammar Correction - Orchestrator Entry Point

**Read this file first. It tells you how to run a grammar correction batch with 5 parallel agents.**

---

## Your Job

Orchestrate grammar correction across the Bachelor thesis by:
1. Claiming 5 unclaimed sections
2. Spawning 5 parallel agents (one per section)
3. Waiting for all agents to complete
4. Verifying corrections and updating logs

---

## Quick Start (Copy-Paste Ready)

### Step 1: Generate Your ID
```
ORCH_ID = orch-{YYYYMMDD}-{HHMM}  (e.g., orch-20251229-1430)
```

### Step 2: Claim 5 Sections

1. Read `QUEUE.md` → pick 5 sections (highest priority first)
2. Read `CLAIMED.md` → verify they're not already claimed
3. **IMMEDIATELY** update `CLAIMED.md` with your claims:

```markdown
| Section ID | Orchestrator | Batch | Claimed At | Status |
|------------|--------------|-------|------------|--------|
| 01-1 | orch-20251229-1430 | batch-001 | 2025-12-29 14:30 | correcting |
| 01-2 | orch-20251229-1430 | batch-001 | 2025-12-29 14:30 | correcting |
| 01-3 | orch-20251229-1430 | batch-001 | 2025-12-29 14:30 | correcting |
| 01-4 | orch-20251229-1430 | batch-001 | 2025-12-29 14:30 | correcting |
| 02-1.1 | orch-20251229-1430 | batch-001 | 2025-12-29 14:30 | correcting |
```

### Step 3: Create Batch Folder

```
batches/batch-XXX/
├── MANIFEST.md    (create with your 5 sections)
└── sections/      (agents write reports here)
```

### Step 4: Spawn 5 Agents in Parallel

**CRITICAL**: Send ALL 5 Task tool calls in ONE message for parallel execution!

Use this prompt template for each agent:

```
Du bist ein professioneller deutscher Lektor. Korrigiere einen Abschnitt der Bachelorarbeit.

**Dein Abschnitt**: {SECTION_ID} - {SECTION_TITLE}
**Datei**: latex/{CHAPTER_FILE}.tex
**Zeilen**: {START_LINE}-{END_LINE}
**Output**: fine-tuning/workflows/grammar-correction/batches/batch-{XXX}/sections/

**KRITISCHE REGELN**:
1. KEINE Em-Dashes (— oder ---) → " -- " (En-Dash mit Leerzeichen)
2. Komma VOR: dass, weil, obwohl, um zu, erweiterte Infinitive
3. Genitiv NACH: wegen, trotz, während ("wegen des", nicht "wegen dem")
4. Komposita: "Performance-Optimierung" (mit Bindestrich)

**Schritte**:
1. Lies WORKFLOW.md für alle 10 Regeln
2. Lies den Abschnitt in der LaTeX-Datei
3. Erstelle Bericht: sections/{CHAPTER}_{SECTION}.md
4. Wende Korrekturen auf die LaTeX-Datei an
5. Melde Zusammenfassung der Korrekturen

Working directory: /home/fabian/Github/bachelor-thesis
```

### Step 5: Wait for All 5 Agents

After spawning, wait for all agents to complete. Each will:
- Create a report in `batches/batch-XXX/sections/`
- Apply corrections to the LaTeX file
- Report a summary

### Step 6: Verify & Complete

1. Check all 5 reports exist
2. Optionally verify LaTeX compiles: `pdflatex Arbeit.tex`
3. Update `COMPLETED.md` with all 5 sections
4. Remove sections from `CLAIMED.md`
5. Update `QUEUE.md` statistics

---

## Key Files

| File | Purpose | When to Read |
|------|---------|--------------|
| `QUEUE.md` | Available sections | Step 2 |
| `CLAIMED.md` | Lock file | Step 2 (read & write) |
| `WORKFLOW.md` | 10 grammar rules | Reference for agents |
| `ORCHESTRATION.md` | Detailed protocol | If confused |
| `AGENT-PROMPT.md` | Full agent prompt | For spawning agents |
| `COMPLETED.md` | Done log | Step 6 |

---

## The 10 Rules (Summary for Agents)

| Rule | Focus | Common Errors |
|------|-------|---------------|
| R1 | Typography | Em dashes (—) → en dashes (--) |
| R2 | Commas | Missing before dass/weil/obwohl |
| R3 | Cases | wegen dem → wegen des |
| R4 | Agreement | Subject-verb mismatch |
| R5 | Compounds | Performance Optimierung → Performance-Optimierung |
| R6 | Terminology | Inconsistent technical terms |
| R7 | Academic style | No contractions, no first person |
| R8 | Spelling | ss/ß rules, capitalization |
| R9 | LaTeX | Preserve all commands |
| R10 | Quotes | Use German „..." quotation |

---

## Example Batch Run

```
Orchestrator: orch-20251229-1430
Batch: batch-001
Sections: 01-1, 01-2, 01-3, 01-4, 02-1.1

[Claim 5 sections in CLAIMED.md]
[Create batches/batch-001/MANIFEST.md]
[Spawn 5 agents in parallel - ONE message with 5 Task calls]
[Wait for all 5 to complete]
[Review 5 reports in batches/batch-001/sections/]
[Update COMPLETED.md with 5 entries]
[Remove from CLAIMED.md]
[Update QUEUE.md statistics]

Next: batch-002 with sections 02-1.2, 02-2.1, 02-2.2, 02-2.3, 03-1.1
```

---

## Recommended Batch Order

| Batch | Sections (5) | Focus |
|-------|--------------|-------|
| 001 | 01-1, 01-2, 01-3, 01-4, 02-1.1 | Einleitung complete |
| 002 | 02-1.2, 02-2.1, 02-2.2, 02-2.3, 03-1.1 | Grundlagen + Konzeption start |
| 003 | 03-1.2, 03-2.1, 03-2.2, 03-3.1, 03-3.2 | Konzeption core |
| 004 | 03-3.3, 04-1.1, 04-1.2, 04-2.1, 04-2.2 | Konzeption + Evaluation |
| 005 | 04-2.3, 04-3.1, 04-3.2, 04-3.3, 05-1 | Evaluation + Fazit start |
| 006 | 05-2, 05-3.1, 05-3.2, 05-3.3, 05-4.1 | Fazit core |
| 007 | 05-4.2, 05-4.3, 00-A, A-1, A-2 | Fazit + Anhang |
| 008 | A-3, A-4, A-5, A-6, V | Remaining |

---

## Current Status

- **Completed**: 0 sections (0 batches)
- **Remaining**: 38 sections (8 batches)
- **Next batch**: batch-001

---

> Point new orchestrators to: `fine-tuning/workflows/grammar-correction/START-HERE.md`
