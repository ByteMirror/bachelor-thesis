# German Grammar & Spelling Correction Workflow

## Overview

This workflow systematically corrects German grammar, spelling, and typography in the Bachelor thesis LaTeX project. Agents process one subchapter at a time, ensuring high-quality corrections following Duden standards and academic German writing conventions.

**Goal**: Zero tolerance for grammar, spelling, and typography errors while preserving the author's voice and technical accuracy.

---

## Core Rules (All Corrections Must Comply)

### Rule 1: Typography - NO Em Dashes

**CRITICAL**: Em dashes (—) are NEVER used in German typography.

- **FORBIDDEN**: `—` (em dash, U+2014)
- **FORBIDDEN**: `---` (LaTeX em dash)
- **ALLOWED**: `--` (LaTeX en dash) WITH spaces: `Text -- Text`
- **ALLOWED**: `-` (hyphen) for compound words WITHOUT spaces

**German dash rules (Duden)**:
| Use Case | Correct | Example |
|----------|---------|---------|
| Gedankenstrich (parenthetical) | ` -- ` (space-en dash-space) | `Die Lösung -- und das ist wichtig -- funktioniert.` |
| Bis-Strich (ranges) | `--` (no spaces) | `2020--2025`, `S. 10--15` |
| Streckenstrich (routes) | `--` (no spaces) | `Berlin--München` |
| Bindestrich (compound words) | `-` (hyphen) | `Performance-Optimierung` |

### Rule 2: Comma Rules (Kommasetzung)

Follow the 2024 Amtliches Regelwerk for German orthography:

**MANDATORY commas**:
- Before subordinating conjunctions: `dass`, `weil`, `obwohl`, `wenn`, `als`, `ob`, `damit`, `sodass`
- Extended infinitives with `zu` (seit 2024): `Es ist wichtig, die Daten zu speichern.`
- Before `um zu`, `ohne zu`, `anstatt zu`: `Um dies zu erreichen, ...`
- After introductory phrases: `Darüber hinaus, ...`
- Before `sondern`, `jedoch`, `aber`, `allein`
- Relative clauses: `Die Funktion, die aufgerufen wird, ...`

**NO comma**:
- Before `und`, `oder`, `sowie` in enumerations
- Before `als` in comparisons: `größer als erwartet`
- Simple infinitives: `Es ist möglich dies zu tun.` (only with extension!)

### Rule 3: Case Agreement (Kasus)

Verify correct case usage:
- **Nominativ**: Subject
- **Akkusativ**: Direct object, nach: durch, für, gegen, ohne, um
- **Dativ**: Indirect object, nach: aus, bei, mit, nach, seit, von, zu
- **Genitiv**: Possession, nach: anstatt, aufgrund, trotz, während, wegen

**Common errors**:
- `wegen dem` → `wegen des` (Genitiv!)
- `trotz dem` → `trotz des` (Genitiv!)
- `laut dem Bericht` → `laut des Berichts` (Genitiv!)

### Rule 4: Subject-Verb Agreement (Kongruenz)

- Plural subjects require plural verbs
- Collective nouns: `Die Menge der Daten ist...` (singular!)
- `Weder...noch` / `Entweder...oder`: Verb agrees with nearest subject

### Rule 5: Compound Words (Zusammenschreibung)

German favors compound words:
- `Performance Optimierung` → `Performance-Optimierung` (with English word)
- `Rendering Pipeline` → `Rendering-Pipeline`
- `Frame Rate` → `Frame-Rate` or `Framerate`
- Pure German compounds: written together (`Leistungsoptimierung`)

### Rule 6: Consistent Terminology

- Maintain consistent technical terms throughout
- English IT terms remain in English (italicized or in \texttt{})
- Hybrid terms use hyphens: `Token-Management`, `Grid-System`

### Rule 7: Academic Style

- No contractions
- Avoid first person (use passive or impersonal constructions)
- Formal register throughout
- `man` is acceptable but use sparingly

### Rule 8: Spelling (Rechtschreibung)

- Follow current Duden (2024) spelling
- `ss` vs `ß` rules: `dass`, `muss`, `Maß`, `groß`
- Capitalization: All nouns capitalized
- Anglicisms: Check Duden for accepted spellings

### Rule 9: LaTeX-Specific Rules

- Preserve all LaTeX commands (`\autocite`, `\ac`, `\texttt`, etc.)
- Preserve all labels and references
- Keep code formatting intact
- Only modify text content, not structure

### Rule 10: Quotation Marks

German uses „..." (opening below, closing above):
- In LaTeX: `\enquote{Text}` or `` "`Text"' ``
- NOT: "..." (English style)
- NOT: »...« (French style, acceptable but not standard)

---

## Directory Structure

```
grammar-correction/
├── WORKFLOW.md              # This document (10 rules)
├── START-HERE.md            # Orchestrator entry point
├── ORCHESTRATION.md         # Multi-agent protocol (5 parallel)
├── AGENT-PROMPT.md          # Optimized German prompt for agents
├── QUEUE.md                 # Available sections to correct
├── CLAIMED.md               # Currently claimed sections
├── COMPLETED.md             # Finished corrections log
└── batches/
    ├── batch-001/
    │   ├── MANIFEST.md      # Batch contents and status
    │   └── sections/        # Individual correction reports (5 per batch)
    └── ...
```

---

## Orchestration: 5 Parallel Agents

**Architecture**: Each batch processes 5 sections in parallel.

- **Agents per batch**: 5
- **Total sections**: 38
- **Estimated batches**: 8

See `ORCHESTRATION.md` for detailed protocol and `START-HERE.md` for quick start.

---

## Agent Instructions

### CRITICAL: Report-Then-Edit Mode

Agents work in two phases:

**Phase 1 - Analysis** (Report):
1. Read the assigned subchapter completely
2. Identify ALL issues (grammar, spelling, typography)
3. Create a detailed report with:
   - Issue location (line number, context)
   - Issue type (Rule violated)
   - Current text
   - Corrected text
   - Explanation

**Phase 2 - Correction** (Edit):
1. Apply corrections one by one
2. Verify each correction preserves meaning
3. Update report with applied status

### What Agents Check (Priority Order)

1. **Typography** (Rule 1): Em dashes → en dashes
2. **Commas** (Rule 2): Missing/incorrect commas
3. **Cases** (Rule 3): Incorrect grammatical cases
4. **Agreement** (Rule 4): Subject-verb mismatches
5. **Compounds** (Rule 5): Incorrect word separation
6. **Spelling** (Rule 8): Typos, incorrect spellings
7. **Style** (Rule 7): Academic register issues

### Report Template

Create file at: `batches/batch-XXX/sections/{chapter}_{section}.md`

```markdown
---
chapter: "01-Einleitung"
section: "1.1"
section_title: "Hinführung zum Thema und Motivation"
status: "pending|in_progress|completed"
issues_found: 0
issues_fixed: 0
---

# Grammar Correction Report: {Section Title}

## Summary
- **File**: `latex/{chapter}.tex`
- **Lines**: {start}-{end}
- **Total Issues**: {count}
- **Critical Issues**: {count}

## Issues Found

### Issue 1: [RULE-X] {Brief Description}
- **Line**: {number}
- **Type**: Typography/Comma/Case/Spelling/...
- **Context**: `...surrounding text...`
- **Current**: `{incorrect text}`
- **Corrected**: `{correct text}`
- **Explanation**: {Why this is wrong and how to fix it}
- **Status**: [ ] Pending / [x] Fixed

### Issue 2: ...

## Corrections Applied

| Line | Rule | Before | After | Status |
|------|------|--------|-------|--------|
| ... | ... | ... | ... | Fixed/Pending |

## Notes
{Any observations about recurring patterns, style consistency, etc.}
```

---

## Quality Checks

Before marking a section as complete:

- [ ] All em dashes replaced with en dashes (spaces where appropriate)
- [ ] All comma placements verified against Duden rules
- [ ] All cases verified (especially Genitiv after certain prepositions)
- [ ] Subject-verb agreement verified
- [ ] Compound words correctly hyphenated/joined
- [ ] No new errors introduced
- [ ] LaTeX commands preserved and functional
- [ ] Text meaning unchanged
- [ ] Consistent terminology maintained

---

## Red Flags

Watch for these common issues:

- `—` or `---` anywhere in text → Replace with ` -- `
- `wegen dem`, `trotz dem` → Requires Genitiv
- Missing comma before `dass`, `weil`, `obwohl`
- Missing comma after `um zu`, `ohne zu`, `anstatt zu` constructions
- `Performance Optimierung` → `Performance-Optimierung`
- Inconsistent capitalization of English terms
- Missing commas in extended infinitives (2024 rule!)

---

## Resources

- [Duden Online](https://www.duden.de/) - Official German spelling reference
- [Rat für deutsche Rechtschreibung](https://www.rechtschreibrat.com/) - Official rulebook
- [Scribbr Kommasetzung](https://www.scribbr.de/category/kommasetzung/) - Comma rules guide

---

> Last updated: 2025-12-29
