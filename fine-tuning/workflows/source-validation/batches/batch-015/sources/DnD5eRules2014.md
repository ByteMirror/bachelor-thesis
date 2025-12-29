# DnD5eRules2014 Validation Report

**URL**: N/A (book)
**Status**: invalid (Rule 4 - book not allowed)
**Agent**: Agent-4

## Bibliographic Information

- **Citation Key**: DnD5eRules2014
- **Type**: @book
- **Author(s)**: Wizards of the Coast
- **Title**: Dungeons & Dragons Player's Handbook
- **Year**: 2014
- **Publisher**: Wizards of the Coast
- **Edition**: 5th

## Citation Location

| File | Line | Context Summary |
|------|------|-----------------|
| `03-Konzeption-Implementierung.tex` | 587 | Grid squares represent 5 feet in D&D 5e |

## Rule Compliance

| Rule | Status | Notes |
|------|--------|-------|
| 1. @online preferred | N/A | Entry is @book |
| 2. BibTeX syntax | PASS | Syntax is correct |
| 3. urldate range | N/A | No URL (book) |
| 4. Book rule | **FAIL** | @book entry, only Daggerheart allowed |
| 5. Max 6 pages | N/A | Not applicable to books |

## Claimed Information

**Claim**: In D&D 5e, one grid square represents 5 feet of real distance.
- **Location**: `03-Konzeption-Implementierung.tex:587`
- **Quote from thesis**: "In D&D 5e entspricht dabei typischerweise ein Quadrat 5 Fuß realer Distanz"

## Replacement Recommendation

### Existing Source Available: DnDBasicRules2014

**Good news**: The citation key `DnDBasicRules2014` already exists as a validated @online source that covers the EXACT same content!

| Attribute | DnD5eRules2014 (current) | DnDBasicRules2014 (existing) |
|-----------|--------------------------|------------------------------|
| Type | @book | @online |
| Status | Invalid (Rule 4) | Valid (batch-001) |
| URL | N/A | https://www.dndbeyond.com/sources/dnd/basic-rules-2014/combat |
| Content | D&D 5e rules | D&D 5e Basic Rules |
| Grid rules | Yes (5-ft squares) | Yes (5-ft squares) |

### Evidence from DnDBasicRules2014 Validation

From the batch-001 validation report, `DnDBasicRules2014` already covers:
- **Claim 2**: "D&D 5e defines grid-based movement system where each grid square represents 5 feet" (VERIFIED)
- The source is the official D&D Beyond Basic Rules documentation
- Already cited 5 times in the thesis for related D&D 5e mechanics

### Recommended Action

**Replace `DnD5eRules2014` with `DnDBasicRules2014`** in the LaTeX file.

The claim at line 587 uses `DnD5eRules2014` to support the same information (5-foot grid squares) that is already verified and documented in the `DnDBasicRules2014` source. This is a simple citation key replacement - no new source is needed.

## Required Change

**In `latex/03-Konzeption-Implementierung.tex` line 587:**

```latex
% Current (invalid):
In D\&D 5e entspricht dabei typischerweise ein Quadrat 5 Fuß realer Distanz\autocite{DnD5eRules2014}

% Should be:
In D\&D 5e entspricht dabei typischerweise ein Quadrat 5 Fuß realer Distanz\autocite{DnDBasicRules2014}
```

**In `references.bib`:**

DELETE the entry `@book{DnD5eRules2014, ...}` (lines 765-772) - no longer needed since `DnDBasicRules2014` covers the same content.

## Content Summary

The `DnD5eRules2014` citation references the D&D 5th Edition Player's Handbook to support the claim that grid squares represent 5 feet in the D&D tactical combat system. This is a fundamental D&D 5e rule that is also documented in the free online Basic Rules at D&D Beyond.

Since `DnDBasicRules2014` already exists as a validated @online source covering this exact same rule, the @book entry is redundant and violates Rule 4 (only Daggerheart allowed as @book). The solution is to replace the citation key in the LaTeX file and remove the duplicate BibTeX entry.

## Notes

- The D&D Basic Rules are the official free version of D&D 5e rules published by Wizards of the Coast
- They contain the same core combat and movement rules as the Player's Handbook
- Using the online source is preferred per Rule 1 (@online over other types) and required per Rule 4 (books not allowed except Daggerheart)
- No content loss occurs from this replacement - the claim is still properly sourced

## Validation Summary

| Item | Status |
|------|--------|
| Source valid | NO - Rule 4 violation |
| Replacement available | YES - DnDBasicRules2014 |
| Action required | Replace citation key in LaTeX, delete BibTeX entry |
| New source needed | NO |
