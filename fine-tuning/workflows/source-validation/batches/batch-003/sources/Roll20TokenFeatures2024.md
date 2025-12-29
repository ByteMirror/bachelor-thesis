# Source Validation Report: Roll20TokenFeatures2024

## Source Information

**BibTeX Key**: Roll20TokenFeatures2024
**Type**: @misc (Website)
**Title**: Token Features – Roll20 Help Center
**Author**: The Orr Group LLC
**Year**: 2024
**URL**: https://help.roll20.net/hc/en-us/articles/360039674573-Token-Features

## Current BibTeX Entry

```bibtex
@misc{Roll20TokenFeatures2024,
    title = {{Token Features – Roll20 Help Center}},
    year = {2024},
    author = {{The Orr Group LLC}},
    url = {https://help.roll20.net/hc/en-us/articles/360039674573-Token-Features},
    urldate = {2025-12-23},
    note = {Offizielle Dokumentation zu Roll20 Token-Features: Drag \& Drop, Grid Snapping, Rotation, Health Bars}
}
```

## Citations in Thesis

### Location 1: latex/03-Konzeption-Implementierung.tex:65
**Context**:
```latex
\textbf{Roll20} bietet vergleichbare Kern-Funktionalität: Drag \& Drop von Tokens aus der Art Library auf den Tabletop, automatisches Grid-Snapping beim Movement (kann per Alt-Taste deaktiviert werden), sowie Token-Rotation mit 45°-Schritten für Square-Grids und 30°-Schritten für Hexagonal-Grids\autocite{Roll20Graphics2024,Roll20TokenFeatures2024}.
```

**Usage**: Citing Roll20's token features including drag-drop, grid snapping, and rotation increments (45° for square grids, 30° for hex grids).

## Source Verification

### URL Accessibility
- **Direct fetch**: 403 Forbidden (Cloudflare protection)
- **Search verification**: URL confirmed to exist via web search
- **Content match**: VERIFIED via search results

### Content Verification
The search results confirm the following features documented on this page:
- **Drag and Drop**: Drag-n-drop images from Art Library to map
- **Grid Snapping**: When enabled, images snap to grid (bottom right for square, center for hex)
- **Rotation**: 45° increments for square grids, 30° for hex grids (matches citation exactly)
- **ALT key**: Disables snap-to-grid temporarily

**Citation accuracy**: The thesis correctly cites "45°-Schritten für Square-Grids und 30°-Schritten für Hexagonal-Grids" which matches the source.

## Rule Validation

### R1: Website Preferred
- **Status**: PASS
- **Reason**: This is a website (@misc), which is the preferred source type

### R2: BibTeX Syntax
- **Status**: PASS
- **Author format**: `{The Orr Group LLC}` - Correctly uses double braces for corporate author
- **Required fields**: All present (title, year, author, url, urldate)
- **Title format**: Uses double braces for proper capitalization

### R3: urldate Field
- **Status**: PASS (but could be randomized)
- **Current value**: 2025-12-23
- **Valid range**: 2025-10-01 to 2025-12-24
- **Note**: Current date is within valid range, no change needed

### R4: No Books (except Daggerheart)
- **Status**: PASS
- **Reason**: This is a website, not a book

### R5: Source ≤6 Pages
- **Status**: PASS
- **Reason**: Website help article, single page documentation

## Summary

| Rule | Status | Notes |
|------|--------|-------|
| R1: Website preferred | PASS | @misc website source |
| R2: BibTeX syntax | PASS | All fields correct |
| R3: urldate field | PASS | 2025-12-23 within valid range |
| R4: No books | PASS | N/A - website |
| R5: Source ≤6 pages | PASS | Single help page |

## Required Fixes

**NONE** - This source passes all validation rules.

## Final Verdict

**VALID** - No changes required. The source is properly formatted, accessible (verified via search), and accurately cited in the thesis.
