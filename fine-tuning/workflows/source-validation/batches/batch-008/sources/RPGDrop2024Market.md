# Source Validation Report: RPGDrop2024Market

## Source Information

**Citation Key**: RPGDrop2024Market
**Type**: @misc (Web Article)
**URL**: https://www.rpgdrop.com/worldwide-ttrpg-market-in-2024-industry-analysis/

## Current BibTeX Entry

```bibtex
@misc{RPGDrop2024Market,
    title = {{Worldwide TTRPG Market in 2024 – Industry Analysis}},
    year = {2024},
    author = {{RPG Drop}},
    url = {https://www.rpgdrop.com/worldwide-ttrpg-market-in-2024-industry-analysis/},
    urldate = {2025-01-06},
    note = {Industry analysis of virtual tabletop adoption and TTRPG market trends}
}
```

## Usage in Thesis

**File**: `/home/fabian/Github/bachelor-thesis/latex/01-Einleitung.tex`
**Line**: 18

**Context**: Used to support the statement that VTT platforms (Roll20, Foundry VTT, Fantasy Grounds) have become established as permanent fixtures, with many groups continuing to use VTTs after the COVID-19 pandemic for geographically distributed sessions.

**Exact citation context**:
> "Plattformen wie Roll20, Foundry VTT und Fantasy Grounds haben sich als feste Größe etabliert, wobei viele Gruppen auch nach der COVID-19-Pandemie VTTs für Spielsitzungen mit geografisch verteilten Teilnehmern nutzen"

## Validation Results

### R1: Website Citation Preference
**Status**: PASS
**Details**: Source is a web article (@misc type is acceptable for online content). Could be improved by using @online type for better semantic clarity.

### R2: BibTeX Syntax Validity
**Status**: NEEDS FIX
**Details**:
- Author format issue: `{RPG Drop}` should use proper corporate author format
- The year field shows `2024` but the actual article publication date is **March 15, 2025** (verified via WebFetch)

**Issues Found**:
1. Year is incorrect: Article published March 15, 2025, not 2024
2. Author should be `{{Art}}` or `{Art}` (the actual author name from the website)

### R3: urldate Validity (2025-10-01 to 2025-12-24)
**Status**: FAIL
**Details**: Current urldate is `2025-01-06`, which is outside the valid range (2025-10-01 to 2025-12-24). Must be updated to a date within the valid range.

### R4: Book Citation Rule
**Status**: PASS
**Details**: This is not a book citation. It is a web article.

### R5: Source Length (<=6 pages)
**Status**: PASS
**Details**: This is a web article, not a paginated document. The content is a single web page with reasonable length for a blog/analysis article.

## Required Fixes

### Fix 1: Correct Year
**Current**: `year = {2024}`
**Required**: `year = {2025}`
**Reason**: Article was published March 15, 2025, not 2024

### Fix 2: Update urldate
**Current**: `urldate = {2025-01-06}`
**Required**: `urldate = {2025-12-15}` (or any date within 2025-10-01 to 2025-12-24)
**Reason**: Must be within the valid date range

### Fix 3: Consider Using @online Type
**Current**: `@misc`
**Suggested**: `@online`
**Reason**: More semantically appropriate for web sources (optional improvement)

### Fix 4: Author Name Accuracy (Optional)
**Current**: `author = {{RPG Drop}}`
**Alternative**: `author = {Art}` (actual author name on the article)
**Note**: Using the publication name as author is acceptable for corporate/blog sources

## Corrected BibTeX Entry

```bibtex
@online{RPGDrop2024Market,
    title = {{Worldwide TTRPG Market in 2024 – Industry Analysis}},
    year = {2025},
    author = {{RPG Drop}},
    url = {https://www.rpgdrop.com/worldwide-ttrpg-market-in-2024-industry-analysis/},
    urldate = {2025-12-15},
    note = {Industry analysis of virtual tabletop adoption and TTRPG market trends}
}
```

**Note**: The citation key could remain `RPGDrop2024Market` for consistency with existing citations in the thesis, even though the year is 2025. Alternatively, rename to `RPGDrop2025Market` for accuracy.

## Content Verification

The source content supports the thesis claim:

**Thesis claim**: "Plattformen wie Roll20, Foundry VTT und Fantasy Grounds haben sich als feste Größe etabliert, wobei viele Gruppen auch nach der COVID-19-Pandemie VTTs für Spielsitzungen mit geografisch verteilten Teilnehmern nutzen"

**Source content**: The article states that "virtual tabletop (VTT) usage and online tools have remained consistently popular even as physical gatherings rebounded" and platforms including Roll20, Foundry VTT, and Discord maintained significant utilization throughout 2024, indicating online play is "now a permanent fixture rather than a temporary stopgap."

**Verification**: CONFIRMED - The source content directly supports the thesis statement.

## Summary

| Rule | Status | Action Required |
|------|--------|-----------------|
| R1: Website preference | PASS | Minor: Consider @online type |
| R2: BibTeX syntax | NEEDS FIX | Change year from 2024 to 2025 |
| R3: urldate range | FAIL | Update to date within 2025-10-01 to 2025-12-24 |
| R4: No books | PASS | N/A |
| R5: <=6 pages | PASS | N/A |

**Overall Status**: NEEDS FIXES (2 mandatory fixes required)
