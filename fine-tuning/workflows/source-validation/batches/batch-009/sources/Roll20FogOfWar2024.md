---
citation_key: "Roll20FogOfWar2024"
status: "partial"
source_type: "@misc"
fixes_needed: true
---

# Source Validation: Roll20FogOfWar2024

## Current BibTeX Entry

```bibtex
@misc{Roll20FogOfWar2024,
    title = {{Advanced Fog of War - Roll20 Wiki}},
    year = {2024},
    author = {{The Orr Group LLC}},
    url = {https://wiki.roll20.net/Advanced_Fog_of_War},
    urldate = {2025-12-23},
    note = {Offizielle Dokumentation zu Roll20 Fog of War: GM/Player Views, Reveal/Hide Tools, Grid-basierte Fog Cells}
}
```

## Citation Locations

| File | Line | Claim |
|------|------|-------|
| latex/03-Konzeption-Implementierung.tex | 100 | Roll20 bietet Advanced Fog of War mit grid-basierten Fog Cells: Token passieren Grid-Zelle → dauerhaft aufgedeckt für kontrollierenden Spieler. System unterstützt Rectangle/Polygon-Tools für manuelle Fog-Manipulation. Fog-Aufdeckung pro Token gespeichert (individuelle Map-Exploration pro Spieler). Separate Rendering-Modi: GM (vollständige Map) vs Player (opaque Fog). |

## Rule Compliance

| Rule | Status | Notes |
|------|--------|-------|
| **R1: Prefer @online** | ⚠️ **FAIL** | Currently `@misc`, should be `@online` for web documentation |
| **R2: BibTeX Syntax** | ⚠️ **PARTIAL** | Missing required `organization` field for @online type. Author format is correct `{{The Orr Group LLC}}` |
| **R3: urldate Range** | ✅ **PASS** | `urldate = {2025-12-23}` is within valid range (2025-10-01 to 2025-12-24) |
| **R4: Books Exception** | ✅ **PASS** | Not a book citation |
| **R5: Source Length** | ⚠️ **UNKNOWN** | Unable to verify page count (web access unavailable). Wiki pages typically 2-4 pages, likely compliant |

## Verification Results

### Content Claims Analysis

| Claim | Status | Evidence |
|-------|--------|----------|
| Grid-basierte Fog Cells | ⚠️ **UNVERIFIED** | Cannot access URL to verify. Citation context in line 100 describes grid-based cells that reveal when tokens pass through them - matches typical Roll20 AFoW behavior based on product knowledge |
| GM/Player Views separation | ⚠️ **UNVERIFIED** | Cannot access URL. Thesis claims separate rendering modes (GM: full map, Player: opaque fog) - standard VTT feature |
| Rectangle/Polygon Tools | ⚠️ **UNVERIFIED** | Cannot access URL. Manual fog manipulation tools are mentioned in thesis context |
| Per-token fog tracking | ⚠️ **UNVERIFIED** | Cannot access URL. Individual map exploration per player is described |
| Official documentation | ✅ **LIKELY VALID** | URL structure `wiki.roll20.net` is Roll20's official wiki domain. Author listed as "The Orr Group LLC" (Roll20's parent company) |

### URL Accessibility

- **URL Format**: `https://wiki.roll20.net/Advanced_Fog_of_War`
- **Expected Content**: Roll20 Wiki documentation page
- **Accessibility**: Unable to verify during validation (web tools unavailable)
- **Risk Assessment**: **LOW** - Roll20 Wiki is a stable, official documentation source

## Required Fixes (DO NOT APPLY)

### Priority 1: Change Entry Type

**Issue**: Source is using `@misc` instead of `@online`

**Fix**: Change entry type from `@misc` to `@online` to comply with Rule 1 (prefer website citations).

```bibtex
@online{Roll20FogOfWar2024,
    title = {{Advanced Fog of War - Roll20 Wiki}},
    year = {2024},
    author = {{The Orr Group LLC}},
    organization = {Roll20},
    url = {https://wiki.roll20.net/Advanced_Fog_of_War},
    urldate = {2025-12-23},
    note = {Offizielle Dokumentation zu Roll20 Fog of War: GM/Player Views, Reveal/Hide Tools, Grid-basierte Fog Cells}
}
```

### Priority 2: Add Organization Field

**Issue**: Missing `organization` field required for `@online` type (Rule 2)

**Fix**: Add `organization = {Roll20}` to the entry (see above)

## Validation Summary

### Status: PARTIAL (Fixes Required)

**Type Issues**:
- ❌ Using `@misc` instead of `@online`
- ❌ Missing `organization` field

**Content Issues**:
- ⚠️ Content claims cannot be verified due to web access limitations
- ✅ URL structure and author suggest official documentation
- ✅ Citation context matches expected Roll20 Advanced Fog of War features

**Compliance Issues**:
- ✅ urldate is compliant (2025-12-23)
- ✅ Not a book citation
- ⚠️ Page length unknown but likely compliant (wiki pages are typically short)

### Recommended Actions

1. **Apply BibTeX fixes**: Change type to `@online` and add `organization` field
2. **Manual verification**: When web access is available, verify that the Roll20 Wiki page contains:
   - Grid-based fog cell system
   - GM/Player view separation
   - Rectangle/Polygon manual fog tools
   - Per-token fog tracking
3. **Alternative source consideration**: Not needed - Roll20 Wiki is authoritative source for Roll20 features

### Risk Assessment

**Overall Risk**: **LOW**

- Source is official Roll20 documentation
- URL structure is stable (wiki.roll20.net)
- Claims are consistent with known Roll20 AFoW features
- Minor BibTeX formatting issues only

### Notes

- The citation is used once in the thesis (line 100 of 03-Konzeption-Implementierung.tex)
- Context compares Foundry VTT and Roll20 fog of war implementations
- Claims appear technically accurate based on Roll20 product knowledge
- No LaTeX citation changes needed - only BibTeX entry type/fields

---

**Validation completed**: 2025-12-28
**Validator**: Source Validation Agent
**Batch**: batch-009
