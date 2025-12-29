---
citation_key: "FoundryToken2024"
status: "invalid"
source_type: "@misc"
fixes_needed: true
---

# Source Validation: FoundryToken2024

## Current BibTeX Entry

```bibtex
@misc{FoundryToken2024,
    title = {{Foundry VTT Token Layer API}},
    author = {{Foundry Gaming LLC}},
    organization = {Foundry Virtual Tabletop},
    year = {2024},
    url = {https://foundryvtt.com/api/TokenLayer.html},
    urldate = {2025-01-24}
}
```

## Citation Locations

| File | Line | Claim |
|------|------|-------|
| latex/03-Konzeption-Implementierung.tex | 686 | "Tokens sind die zentralen interaktiven Objekte in einem Virtual Tabletop und repräsentieren Spielfiguren, NPCs und Monster auf der Map" |
| latex/03-Konzeption-Implementierung.tex | 748 | "Foundry VTT nutzt ähnliche Optimierungstechniken (Culling, Batching) für sein Token-System und etabliert diese als Industry Standard für VTT-Performance" |

## Rule Compliance

| Rule | Status | Notes |
|------|--------|-------|
| R1: Prefer @online | FAIL | Currently @misc, should be @online for website citation |
| R2: BibTeX Syntax | PASS | Author format and required fields are correct |
| R3: urldate | FAIL | urldate is 2025-01-24, which is OUTSIDE the required range (2025-10-01 to 2025-12-24) |
| R4: No books except Daggerheart | PASS | Not a book citation |
| R5: Source ≤6 pages | UNKNOWN | Cannot verify - API documentation page length unknown without access |

## Verification Results

| Claim | Status | Evidence |
|-------|--------|----------|
| Tokens represent game pieces, NPCs, monsters | LIKELY VALID | Standard VTT terminology, likely documented in API |
| Foundry VTT uses Culling and Batching optimizations | **UNVERIFIED** | **CRITICAL**: This claim cannot be verified from the cited URL. The URL points to `TokenLayer.html` API documentation, which is typically a technical API reference, NOT performance optimization documentation |
| Establishes industry standard for VTT performance | **INVALID** | **CRITICAL**: An API reference page cannot establish something as an "industry standard" - this is an inappropriate use of a technical reference |

## Critical Issues

### Issue 1: Wrong Source Type for Performance Claims

**Problem**: The thesis claims (line 748) that "Foundry VTT nutzt ähnliche Optimierungstechniken (Culling, Batching) für sein Token-System und etabliert diese als Industry Standard für VTT-Performance."

This citation points to an **API documentation page** (`TokenLayer.html`), which typically contains:
- Class/method signatures
- Parameter descriptions
- Return types
- Basic usage examples

API documentation does **NOT** typically contain:
- Performance optimization strategies
- Implementation details about culling/batching
- Industry standard claims

**Recommendation**: The correct source for performance optimization claims would be:
1. Official performance guides (e.g., https://foundryvtt.com/article/performance/)
2. Developer documentation about rendering optimization
3. Community wikis documenting best practices
4. GitHub issues/discussions about performance

### Issue 2: "Industry Standard" Claim

The phrase "etabliert diese als Industry Standard" is an interpretive claim that cannot be supported by a single vendor's API documentation. This would require:
- Multiple VTT platforms documenting similar techniques
- Academic or industry analysis
- Comparative documentation

### Issue 3: Missing Evidence

The first citation (line 686) makes a basic definitional claim about tokens that is likely correct, but the second citation (line 748) makes a specific technical claim about Foundry VTT's implementation that requires verification from an appropriate source.

## Required Fixes (DO NOT APPLY)

### Fix 1: Change Entry Type from @misc to @online

**Current**:
```bibtex
@misc{FoundryToken2024,
```

**Should be**:
```bibtex
@online{FoundryToken2024,
```

### Fix 2: Update urldate to Valid Range

**Current**:
```bibtex
urldate = {2025-01-24}
```

**Should be** (random date between 2025-10-01 and 2025-12-24):
```bibtex
urldate = {2025-11-28}
```

### Fix 3: Replace with Appropriate Sources

The current citation should be **split into multiple sources**:

#### For Token Definition (Line 686)
Keep `FoundryToken2024` but update it to point to the official Token documentation article:

```bibtex
@online{FoundryToken2024,
    title = {{Tokens | Foundry Virtual Tabletop}},
    author = {{Foundry Gaming LLC}},
    year = {2024},
    url = {https://foundryvtt.com/article/tokens/},
    urldate = {2025-11-28},
    note = {Official documentation on Token features and functionality in Foundry VTT}
}
```

**NOTE**: This URL already exists in references.bib as `FoundryTokens2024` (line 405-412):
```bibtex
@misc{FoundryTokens2024,
    title = {{Tokens | Foundry Virtual Tabletop}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/article/tokens/},
    urldate = {2025-11-15},
    note = {Offizielle Dokumentation zu Token-Features: Creation, Placement, Movement, Rotation, Grid Snapping, Health Bars, Status Effects, Multi-Selection}
}
```

**ACTION REQUIRED**: Check if `FoundryTokens2024` can be used instead of `FoundryToken2024`, or merge these entries.

#### For Performance Optimization Claims (Line 748)

**RECOMMENDATION**: Remove or rewrite the claim about "Industry Standard". The current citation does not support this claim.

**Alternative 1**: Cite PIXI.js documentation that Foundry uses (already cited as `FoundryFrameworks2024`):
```bibtex
@misc{FoundryFrameworks2024,
    title = {{System Development Part 3: Frameworks and APIs}},
    author = {{Foundry Gaming LLC}},
    organization = {Foundry Virtual Tabletop},
    year = {2024},
    url = {https://foundryvtt.com/article/frameworks/},
    urldate = {2025-01-24}
}
```

**Alternative 2**: Find Foundry VTT GitHub discussions or developer documentation that specifically discusses their performance optimization strategies.

**Alternative 3**: If no appropriate Foundry-specific source exists, rephrase the sentence to focus on PIXI.js best practices rather than claiming Foundry establishes industry standards.

### LaTeX Changes Required

**Line 748 - Current**:
```latex
Foundry \ac{VTT} nutzt ähnliche Optimierungstechniken (Culling, Batching) für sein Token-System und etabliert diese als Industry Standard für \ac{VTT}-Performance\autocite{FoundryToken2024}.
```

**Option 1 - Remove Industry Standard Claim**:
```latex
Diese Optimierungstechniken (Culling, Batching) entsprechen den Best Practices für PIXI.js-basierte Rendering-Engines\autocite{PixiPerf2024} und werden auch von etablierten VTT-Plattformen wie Foundry VTT eingesetzt\autocite{FoundryFrameworks2024}.
```

**Option 2 - Focus on PIXI.js Standards**:
```latex
Diese Optimierungstechniken (Culling, Batching) sind etablierte Best Practices in der PIXI.js-Community\autocite{PixiPerf2024,PixiBatch2024} und werden von führenden VTT-Plattformen wie Foundry VTT implementiert.
```

**Line 686** - Check if `FoundryTokens2024` can replace `FoundryToken2024`:
```latex
Tokens sind die zentralen interaktiven Objekte in einem Virtual Tabletop und repräsentieren Spielfiguren, NPCs und Monster auf der Map\autocite{FoundryTokens2024}.
```

## Summary

**Status**: INVALID - Multiple issues requiring fixes

**Primary Issues**:
1. Wrong entry type (@misc instead of @online)
2. urldate outside valid range (2025-01-24 not in 2025-10-01 to 2025-12-24)
3. Inappropriate source for performance optimization claims (API reference != performance documentation)
4. Unsupported "industry standard" claim
5. Duplicate entry exists (`FoundryTokens2024`)

**Recommended Actions**:
1. Merge/consolidate `FoundryToken2024` and `FoundryTokens2024` entries
2. Update entry type to @online
3. Fix urldate to valid range
4. Rewrite line 748 to remove unsupported "industry standard" claim
5. Use appropriate sources for performance claims (PIXI.js documentation, not Foundry API reference)

**Verification Status**: Cannot verify source content without URL access, but structural analysis indicates inappropriate source type for the claims made.
