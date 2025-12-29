# Grammar Correction - Orchestration Protocol

## Overview

This document defines how to run grammar correction across all thesis sections using **5 parallel agents per batch**.

**Architecture**: One orchestrator manages batches of 5 agents, each correcting one subchapter simultaneously.

---

## Batch Configuration

- **Agents per batch**: 5
- **Total sections**: 38
- **Estimated batches**: 8 (7 full + 1 partial)

---

## Orchestrator Workflow

### Phase 1: Claim Sections (5 at a time)

1. Read `QUEUE.md` for available sections
2. Read `CLAIMED.md` to verify no conflicts
3. Pick **5 unclaimed sections** (prioritize by: Critical → High → Medium → Low)
4. **IMMEDIATELY** update `CLAIMED.md` with all 5 claims
5. Create batch folder: `batches/batch-XXX/`

### Phase 2: Create Batch Manifest

Create `batches/batch-XXX/MANIFEST.md`:

```markdown
# Batch XXX Manifest

## Batch Info
- **Orchestrator**: orch-YYYYMMDD-HHMM
- **Created**: YYYY-MM-DD HH:MM
- **Status**: in_progress

## Sections (5)

| # | Section ID | Chapter | Title | Agent Status |
|---|------------|---------|-------|--------------|
| 1 | 01-1 | 01-Einleitung | Hinführung zum Thema | pending |
| 2 | 01-2 | 01-Einleitung | Darstellung der Problemstellung | pending |
| 3 | 01-3 | 01-Einleitung | Zielsetzung und Forschungsfrage | pending |
| 4 | 01-4 | 01-Einleitung | Aufbau der Arbeit | pending |
| 5 | 02-1.1 | 02-Theoretische-Grundlagen | VTT Tools | pending |

## Progress
- Started: YYYY-MM-DD HH:MM
- Completed: (pending)
- Issues Found: 0
- Issues Fixed: 0
```

### Phase 3: Spawn 5 Agents in Parallel

Use the Task tool to spawn **5 agents simultaneously** in a single message:

```
Launch 5 grammar correction agents in parallel:

Agent 1: Section {SECTION_1_ID}
Agent 2: Section {SECTION_2_ID}
Agent 3: Section {SECTION_3_ID}
Agent 4: Section {SECTION_4_ID}
Agent 5: Section {SECTION_5_ID}
```

**CRITICAL**: All 5 Task tool calls must be in the SAME message to run in parallel.

### Phase 4: Wait for Completion

1. Use `TaskOutput` to wait for all 5 agents
2. Can check status with `block=false` for progress updates
3. Wait until all 5 complete before proceeding

### Phase 5: Verify & Consolidate

1. Review all 5 reports in `batches/batch-XXX/sections/`
2. Verify LaTeX still compiles: `pdflatex Arbeit.tex`
3. Create `batches/batch-XXX/SUMMARY.md` with consolidated stats

### Phase 6: Complete Batch

1. Update `COMPLETED.md` with all 5 sections
2. Remove all 5 from `CLAIMED.md`
3. Update `QUEUE.md` statistics
4. Update MANIFEST.md status to `completed`

### Phase 7: Next Batch

If sections remain in queue:
1. Increment batch number
2. Return to Phase 1

---

## Agent Spawn Template

For each of the 5 agents, use this prompt (from AGENT-PROMPT.md):

```
Du bist ein professioneller deutscher Lektor mit Spezialisierung auf wissenschaftliche Arbeiten im Bereich Informatik.

## DEINE AUFGABE

Korrigiere den folgenden Abschnitt der Bachelorarbeit:
- **Kapitel**: {CHAPTER_FILE}
- **Abschnitt**: {SECTION_ID} - {SECTION_TITLE}
- **Zeilen**: {START_LINE}-{END_LINE}
- **Batch**: batch-{XXX}

## KRITISCHE REGELN

1. KEINE Em-Dashes (— oder ---) → verwende " -- " (En-Dash mit Leerzeichen)
2. Komma VOR: dass, weil, obwohl, um zu, ohne zu, erweiterte Infinitive (seit 2024!)
3. Kein Komma VOR: und, oder, sowie in Aufzählungen
4. Genitiv NACH: wegen, trotz, während, aufgrund ("wegen des", nicht "wegen dem")
5. Komposita mit Anglizismen: "Performance-Optimierung" (mit Bindestrich)

## ARBEITSABLAUF

1. Lies WORKFLOW.md für alle 10 Regeln
2. Lies den Abschnitt in latex/{CHAPTER_FILE}.tex
3. Identifiziere ALLE Grammatik-/Rechtschreib-/Typografie-Fehler
4. Erstelle Bericht: batches/batch-{XXX}/sections/{CHAPTER}_{SECTION}.md
5. Wende Korrekturen auf die LaTeX-Datei an
6. Melde Abschluss mit Zusammenfassung

Working directory: /home/fabian/Github/bachelor-thesis
Workflow docs: fine-tuning/workflows/grammar-correction/
```

---

## Parallel Execution Example

```python
# Pseudocode for orchestrator
sections = claim_5_sections_from_queue()
update_claimed_md(sections)
create_batch_manifest(batch_num, sections)

# Spawn all 5 in ONE message (parallel execution)
agents = []
for section in sections:
    agent = Task(
        prompt=generate_agent_prompt(section),
        subagent_type="general-purpose",
        description=f"Grammar: {section.id}"
    )
    agents.append(agent)

# Wait for all to complete
results = wait_for_all(agents)

# Consolidate
update_completed_md(results)
release_claims(sections)
update_queue_stats()
```

---

## Recommended Batch Order

Process sections in this order for best efficiency:

| Batch | Sections | Priority Focus |
|-------|----------|----------------|
| 001 | 01-1, 01-2, 01-3, 01-4, 02-1.1 | Einleitung + Start Grundlagen |
| 002 | 02-1.2, 02-2.1, 02-2.2, 02-2.3, 03-1.1 | Grundlagen + Start Konzeption |
| 003 | 03-1.2, 03-2.1, 03-2.2, 03-3.1, 03-3.2 | Konzeption (Core) |
| 004 | 03-3.3, 04-1.1, 04-1.2, 04-2.1, 04-2.2 | Konzeption + Evaluation |
| 005 | 04-2.3, 04-3.1, 04-3.2, 04-3.3, 05-1 | Evaluation + Start Fazit |
| 006 | 05-2, 05-3.1, 05-3.2, 05-3.3, 05-4.1 | Fazit (Core) |
| 007 | 05-4.2, 05-4.3, 00-A, A-1, A-2 | Fazit + Anhang |
| 008 | A-3, A-4, A-5, A-6, V, ABK | Remaining |

---

## Error Handling

### Agent Fails
- Re-spawn single agent for failed section
- Other 4 results remain valid

### Merge Conflicts
- If two sections in same file, apply fixes sequentially
- Agent reports contain exact line numbers for conflict resolution

### LaTeX Compilation Fails
- Review changes in affected file
- Revert problematic changes
- Re-run agent with more specific instructions

---

## Status Tracking

Update these files after each batch:

| File | Update |
|------|--------|
| `CLAIMED.md` | Remove completed sections |
| `COMPLETED.md` | Add 5 new entries |
| `QUEUE.md` | Update statistics |
| `batches/batch-XXX/MANIFEST.md` | Mark as completed |

---

> Last updated: 2025-12-29
