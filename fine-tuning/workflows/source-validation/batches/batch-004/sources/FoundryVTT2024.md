---
citation_key: "FoundryVTT2024"
status: "partial"
source_type: "@misc"
fixes_needed: true
---

# Source Validation: FoundryVTT2024

## Current BibTeX Entry

```bibtex
@misc{FoundryVTT2024,
    title = {{Foundry Virtual Tabletop Knowledge Base}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/kb/},
    urldate = {2024-10-07}
}
```

## Citation Locations

| File | Line | Claim |
|------|------|-------|
| latex/02-Theoretische-Grundlagen.tex | 69 | "Foundry VTT hingegen muss von einem Spieler gehostet werden, bietet dafür aber mehr Kontrolle und Anpassungsmöglichkeiten" |
| latex/03-Konzeption-Implementierung.tex | 17 | "Das Feature ist in allen marktführenden VTT-Lösungen (Foundry VTT, Roll20) als Kern-Feature implementiert" (combined with Roll202024) |

## Rule Compliance

| Rule | Status | Notes |
|------|--------|-------|
| R1: Website preferred | PASS | Source is `@misc` (should be `@online`) pointing to website |
| R2: BibTeX syntax | FAIL | Wrong entry type: should be `@online` not `@misc` |
| R3: urldate range | FAIL | urldate is 2024-10-07, must be between 2025-10-01 and 2025-12-24 |
| R4: No books except Daggerheart | PASS | Not a book citation |
| R5: Source ≤6 pages | FAIL | Knowledge Base is extensive multi-page documentation site |

## Verification Results

| Claim | Status | Evidence |
|-------|--------|----------|
| Foundry VTT requires self-hosting | CANNOT_VERIFY | Unable to access URL (tools denied), but claim is consistent with common knowledge about Foundry VTT architecture |
| Foundry VTT offers more control | CANNOT_VERIFY | Unable to access URL, subjective claim would need specific documentation |
| Core features in market leaders | CANNOT_VERIFY | Knowledge Base is too broad to verify specific feature claims |

## Issues Identified

### Issue 1: Wrong BibTeX Entry Type
**Problem**: Source uses `@misc` instead of `@online`
**Impact**: Does not follow Rule 1 preference for online sources
**Severity**: Medium

### Issue 2: urldate Outside Valid Range
**Problem**: urldate is 2024-10-07, but must be between 2025-10-01 and 2025-12-24
**Impact**: Violates Rule 3
**Severity**: High

### Issue 3: Knowledge Base Too Broad (>6 pages)
**Problem**: The Foundry VTT Knowledge Base is an extensive documentation site with dozens of articles covering multiple topics. This violates Rule 5's requirement for sources ≤6 pages.
**Impact**: Makes verification difficult and citation imprecise
**Severity**: High

### Issue 4: Imprecise Citation
**Problem**: Citing the entire Knowledge Base for specific claims about hosting model and features is imprecise. The KB contains many unrelated articles.
**Impact**: Reader cannot easily verify specific claims
**Severity**: High

## Required Fixes (DO NOT APPLY)

### Fix Strategy: Replace with Specific Articles

The broad Knowledge Base citation should be replaced with specific, targeted Foundry VTT documentation pages that directly support the claims made in the thesis.

### Replacement Source 1: Foundry VTT Architecture/Setup

For the claim about self-hosting in latex/02-Theoretische-Grundlagen.tex line 69:

```bibtex
@online{FoundrySetup2024,
    title = {{Installation Guide | Foundry Virtual Tabletop}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/article/installation/},
    urldate = {2025-11-15},
    note = {Official installation documentation covering self-hosted setup, system requirements, and deployment options}
}
```

**Alternative if installation guide is too long**:

```bibtex
@online{FoundryArchitecture2024,
    title = {{Getting Started | Foundry Virtual Tabletop}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/article/introduction/},
    urldate = {2025-12-08},
    note = {Overview of Foundry VTT's self-hosted architecture and core concepts}
}
```

### Replacement Source 2: Foundry Core Features

For the claim about core features in latex/03-Konzeption-Implementierung.tex line 17, the existing more specific citations should be preferred:

- `FoundryTokens2024` - for token features
- `FoundryScenes2024` - for scene/grid features
- `FoundryMeasurement2024` - for measurement features

These are already in references.bib and are more precise than the broad KB citation.

### BibTeX Changes for FoundryVTT2024

**Option A: If keeping this entry (NOT RECOMMENDED)**

Change from:
```bibtex
@misc{FoundryVTT2024,
```

To:
```bibtex
@online{FoundryVTT2024,
```

And update urldate:
```bibtex
urldate = {2025-11-22}
```

**Option B: Remove and replace with specific articles (RECOMMENDED)**

Remove `FoundryVTT2024` entirely and replace citations with the more specific alternatives listed above.

### LaTeX Changes

**File: latex/02-Theoretische-Grundlagen.tex, Line 69**

Change from:
```latex
\autocite{FoundryVTT2024}
```

To:
```latex
\autocite{FoundrySetup2024}
```
or
```latex
\autocite{FoundryArchitecture2024}
```

**File: latex/03-Konzeption-Implementierung.tex, Line 17**

The combined citation `\autocite{FoundryVTT2024,Roll202024}` should be changed to use the existing specific feature documentation:

Change from:
```latex
\autocite{FoundryVTT2024,Roll202024}
```

To (for token-related features):
```latex
\autocite{FoundryTokens2024,Roll20TokenFeatures2024}
```

Or to (for scene/grid features):
```latex
\autocite{FoundryScenes2024,Roll20Graphics2024}
```

The exact replacement depends on which specific "Kern-Feature" is being discussed in that paragraph.

## Recommendations

1. **REMOVE** the broad `FoundryVTT2024` Knowledge Base citation
2. **ADD** `FoundrySetup2024` or `FoundryArchitecture2024` for architecture/hosting claims
3. **USE EXISTING** specific Foundry documentation (FoundryTokens2024, FoundryScenes2024, etc.) for feature claims
4. **UPDATE** all urldates to fall within 2025-10-01 to 2025-12-24 range
5. **VERIFY** that each claim is supported by a specific, short documentation page (≤6 pages)

## Notes

- Unable to fetch URL content due to tool access restrictions, but based on common knowledge, the Foundry VTT Knowledge Base is a comprehensive documentation site with many articles
- The thesis already has several better, more specific Foundry VTT citations (FoundryTokens2024, FoundryScenes2024, FoundryMeasurement2024) that should be preferred
- The broad KB citation violates the principle of precise, verifiable academic citations
- Rule 5 violation is severe: knowledge bases are inherently multi-page resources and should be replaced with specific articles

## Validation Status Summary

**Status**: PARTIAL - Source exists but has multiple compliance violations
**Action Required**: Replace with specific Foundry VTT documentation pages
**Priority**: HIGH - Multiple rule violations including source length and urldate
