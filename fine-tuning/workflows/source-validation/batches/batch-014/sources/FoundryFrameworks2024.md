# Source Validation Report: FoundryFrameworks2024

## Source Information

**Citation Key:** FoundryFrameworks2024
**Title:** System Development Part 3: Frameworks and APIs
**Author:** Foundry Gaming LLC
**URL:** https://foundryvtt.com/article/frameworks/
**Current Type:** @misc
**urldate:** 2025-01-24

## Citation Usage

**File:** `/home/fabian/Github/bachelor-thesis/latex/03-Konzeption-Implementierung.tex`
**Line:** 550
**Context:** Used to support the claim that PIXI.js is used by Foundry VTT as their rendering engine, validating its suitability for VTT applications.

**Exact citation context:**
> "Zudem wird PIXI.js von Foundry VTT, dem marktfuehrenden Virtual Tabletop Tool, als Rendering-Engine eingesetzt\autocite{FoundryFrameworks2024}, was die Eignung fuer VTT-Anwendungen unter Beweis stellt."

## URL Accessibility

**Status:** ACCESSIBLE (with limitations)
**Note:** The page requires JavaScript to be enabled for full functionality. The content is accessible and describes the frameworks and libraries bundled with Foundry VTT, including:
- Handlebars (templating)
- jQuery (DOM manipulation)
- PixiJS (WebGL rendering)
- GreenSock (animations)

The page confirms that PixiJS is indeed used by Foundry VTT for WebGL rendering.

## Rule Validation

| Rule | Description | Status | Details |
|------|-------------|--------|---------|
| R1 | Prefer @online over other types | FAIL | Current type is `@misc`, should be `@online` for website citations |
| R2 | Valid BibTeX syntax | PASS | Author format `{Foundry Gaming LLC}` is valid for organizational authors |
| R3 | urldate between 2025-10-01 and 2025-12-24 | FAIL | urldate is `2025-01-24`, which is OUTSIDE the valid range (too early) |
| R4 | No book citations (except Daggerheart) | PASS | This is not a book citation |
| R5 | Source length <= 6 pages | PASS | Single page article with 4 short subsections |

## Summary

**Total Rules:** 5
**Passed:** 3
**Failed:** 2

### Issues Requiring Fix

1. **R1 Violation:** Change citation type from `@misc` to `@online`
2. **R3 Violation:** Update `urldate` from `2025-01-24` to a date within the valid range (2025-10-01 to 2025-12-24)

## Recommended BibTeX (for reference only - DO NOT APPLY)

```bibtex
@online{FoundryFrameworks2024,
    title = {{System Development Part 3: Frameworks and APIs}},
    author = {{Foundry Gaming LLC}},
    organization = {Foundry Virtual Tabletop},
    year = {2024},
    url = {https://foundryvtt.com/article/frameworks/},
    urldate = {2025-12-15}
}
```

---
**Validation Date:** 2025-12-28
**Validator:** Source Validation Agent
**Batch:** batch-014
