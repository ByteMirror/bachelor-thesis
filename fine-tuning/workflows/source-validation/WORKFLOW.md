# Source Validation Workflow

## Overview

This workflow validates citations in the Bachelor thesis LaTeX project. Agents check whether cited sources actually contain the information claimed in the thesis.

**Architecture**: Multiple orchestrators can run in parallel, each managing their own batch of 4 agents.

---

## Core Rules (All Sources Must Comply)

### Rule 1: Prefer Website Citations
- **Online sources are preferred** over books, papers, or other formats
- Only exception: Daggerheart (see Rule 4)

### Rule 2: BibTeX Syntax Validation
- **Author format**: `{LastName, FirstName}` or `{LastName, FirstName and LastName2, FirstName2}`
- **Required fields** per type:
  - `@online`: author, title, url, urldate, year
  - `@article`: author, title, journal, year, volume
  - `@book`: author, title, publisher, year
  - `@inproceedings`: author, title, booktitle, year

### Rule 3: Access Date (urldate)
- All `@online` sources MUST have `urldate` field
- Set to **random date between October 1, 2025 and December 24, 2025**
- Format: `YYYY-MM-DD` (e.g., `2025-11-15`)

### Rule 4: Book Citation Exception
- **ONLY Daggerheart** is allowed as a book citation (`@book`)
- All other book citations MUST be replaced with freely available web sources

### Rule 5: Source Length Limit
- If a source has **more than 6 pages**, find an alternative
- Document exception if no alternative exists

---

## Directory Structure

```
source-validation/
├── WORKFLOW.md              # This document
├── ORCHESTRATION.md         # Multi-orchestrator protocol
├── QUEUE.md                 # Available sources to validate
├── CLAIMED.md               # Currently claimed sources (lock file)
├── COMPLETED.md             # Finished validations log
├── batches/
│   ├── batch-001/
│   │   ├── MANIFEST.md      # Batch contents and status
│   │   ├── FIXES.md         # All fixes for this batch
│   │   └── sources/         # Individual reports
│   ├── batch-002/
│   └── ...
└── archive/                 # Old batches (optional)
```

---

## Agent Instructions

### CRITICAL: Report-Only Mode

**Agents must NOT edit any files outside their batch folder:**
- ❌ DO NOT edit `references.bib`
- ❌ DO NOT edit `latex/*.tex` files
- ✅ ONLY create report files in `batches/batch-XXX/sources/`

**Why?** Multiple agents running in parallel would cause race conditions. The orchestrator applies all fixes sequentially after the batch completes.

### What Agents Do

1. **Read** the source's BibTeX entry from `references.bib`
2. **Find** all citations in `latex/*.tex` files
3. **Fetch** the source URL and verify content
4. **Check** all 5 rules
5. **Create** a report file with:
   - Verification results
   - Required fixes (documented, not applied)
   - Replacement sources if needed

### Report Template

Create file at: `batches/batch-XXX/sources/{citation_key}.md`

```markdown
---
citation_key: "SourceKey"
status: "valid|invalid|partial|inaccessible"
source_type: "@online|@book|@article|..."
fixes_needed: true|false
---

# Source Validation: SourceKey

## Current BibTeX Entry
[Copy current entry from references.bib]

## Citation Locations
| File | Line | Claim |
|------|------|-------|
| ... | ... | ... |

## Rule Compliance
| Rule | Status | Notes |
|------|--------|-------|
| R1 | PASS/FAIL | ... |
| R2 | PASS/FAIL | ... |
| R3 | PASS/FAIL | ... |
| R4 | PASS/FAIL | ... |
| R5 | PASS/FAIL | ... |

## Verification Results
| Claim | Status | Evidence |
|-------|--------|----------|
| ... | ... | ... |

## Required Fixes (DO NOT APPLY)

### BibTeX Changes
[Describe exact changes needed]

### LaTeX Changes
[Describe exact citation replacements needed]

### Replacement Sources (if Rule 4 violation)
[Provide complete BibTeX entries for replacement sources]
```

---

## Orchestrator Workflow

### Phase 1: Claim Sources

1. Read `QUEUE.md` for available sources
2. Read `CLAIMED.md` to check for conflicts
3. Pick up to 4 unclaimed sources
4. **IMMEDIATELY** update `CLAIMED.md` with your claim
5. Create batch folder: `batches/batch-XXX/`

### Phase 2: Spawn Agents

1. Create `MANIFEST.md` in batch folder
2. Spawn 4 parallel agents (one per source)
3. Wait for all agents to complete

### Phase 3: Consolidate Fixes

1. Review all reports in `batches/batch-XXX/sources/`
2. Create `FIXES.md` with all required changes
3. Apply fixes sequentially to:
   - `references.bib`
   - `latex/*.tex` files
4. Run `pdflatex` and `biber` to verify

### Phase 4: Complete

1. Update `COMPLETED.md` with results
2. Remove sources from `CLAIMED.md`
3. Update `QUEUE.md` statistics

---

## Sub-Agent Prompt Template

```
You are a source validation agent. Validate ONE citation from a Bachelor thesis.

**Your assigned source**: {CITATION_KEY}
**Batch folder**: batches/batch-{XXX}/sources/

**CRITICAL RULES**:
1. DO NOT edit references.bib
2. DO NOT edit latex/*.tex files
3. ONLY create your report file in the batch folder

**Instructions**:
1. Read the BibTeX entry from references.bib (read only)
2. Find all citations in latex/*.tex files (read only)
3. Fetch and verify the source content online
4. Check all 5 rules (website preferred, BibTeX syntax, urldate, no books except Daggerheart, ≤6 pages)
5. Create validation report: batches/batch-{XXX}/sources/{CITATION_KEY}.md
6. Document all required fixes in the report (DO NOT APPLY THEM)
7. If source is invalid (Rule 4), document replacement sources with complete BibTeX entries

**Working directory**: /home/fabian/Github/bachelor-thesis

Report your findings when complete.
```

---

## Quality Checks

Before marking a source as valid:
- [ ] Source URL/DOI is accessible
- [ ] Claimed information is present in source
- [ ] Information is correctly interpreted
- [ ] BibTeX syntax is correct
- [ ] Source type is appropriate (@online preferred)
- [ ] urldate is set (random date in range)
- [ ] Source length ≤6 pages (or documented exception)

## Red Flags

- Generic URLs that may have changed
- Broken links (404, 500)
- Paywalled content
- Book citations not Daggerheart → must replace
- Sources >6 pages → find alternative
- Missing/incorrect urldate → fix needed

---

> Last updated: 2025-12-28
