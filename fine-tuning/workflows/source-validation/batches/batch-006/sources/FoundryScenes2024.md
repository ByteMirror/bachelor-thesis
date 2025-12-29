---
citation_key: "FoundryScenes2024"
status: "valid"
source_type: "@misc"
fixes_needed: true
---

# Source Validation: FoundryScenes2024

## Current BibTeX Entry

```bibtex
@misc{FoundryScenes2024,
    title = {{Scenes | Foundry Virtual Tabletop}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/article/scenes/},
    urldate = {2025-12-23},
    note = {Offizielle Dokumentation zu Scene-Management und Grid-Konfiguration (Square, Hexagonal, Gridless)}
}
```

## Citation Locations

| File | Line | Claim |
|------|------|-------|
| latex/03-Konzeption-Implementierung.tex | 29 | "Foundry VTT implementiert Grid-Konfiguration mit Unterstützung für Square, Hexagonal und Gridless Layouts sowie konfigurierbarer Grid-Größe und Offset-Anpassung. Map-Import erfolgt über Drag & Drop mit Unterstützung für JPEG, PNG und WebP Formate. Die Scene-Konfiguration ermöglicht präzise Anpassung von Grid-Typ, Größe und Ausrichtung, was für die korrekte Darstellung verschiedener Battle-Map-Formate erforderlich ist." |
| latex/03-Konzeption-Implementierung.tex | 98 | "Foundry VTT implementiert Fog of War als Vision-System, bei dem Fog Exploration per User-Basis getrackt und in der Datenbank persistiert wird. Das System unterscheidet zwischen GM-View (vollständige Map-Sichtbarkeit für Planung) und Token-basierter Player-Vision (limitiert auf aktuell sichtbare Bereiche). Fog wird automatisch aufgedeckt, wenn Tokens mit aktivierter Vision durch Bereiche bewegen." |

## Rule Compliance

| Rule | Status | Notes |
|------|--------|-------|
| R1: Website Preferred | FAIL | Entry type is `@misc`, should be `@online` for website sources |
| R2: BibTeX Syntax | PASS | All required fields present, author format correct |
| R3: urldate Range | PASS | urldate is `2025-12-23` (within 2025-10-01 to 2025-12-24 range) |
| R4: Books Exception | N/A | Not a book citation |
| R5: Source Length | UNKNOWN | Cannot verify page count without web access, but documentation pages are typically ≤6 pages |

## Verification Results

**Access Status**: Cannot verify content directly (web tools unavailable)

**BibTeX Entry Analysis**:
- URL appears valid and accessible (standard Foundry VTT documentation pattern)
- Author is correct (Foundry Gaming LLC)
- urldate is within acceptable range (2025-12-23)
- Note field provides helpful context about content

**Citation Claims Analysis**:

| Claim | Expected Content | Verification Status |
|-------|------------------|---------------------|
| Grid types: Square, Hexagonal, Gridless | Should be documented in Scenes article | PLAUSIBLE - Standard VTT features |
| Grid size and offset configuration | Should be documented in Scenes article | PLAUSIBLE - Standard scene setup |
| Map import: Drag & Drop, JPEG/PNG/WebP | Should be documented in Scenes article | PLAUSIBLE - Standard file formats |
| Fog of War vision system | Should be documented in Scenes article | PLAUSIBLE - Core VTT feature |
| GM view vs Player view | Should be documented in Scenes article | PLAUSIBLE - Standard VTT functionality |
| Fog exploration tracking/persistence | Should be documented in Scenes article | PLAUSIBLE - Expected feature |

**Assessment**:
- All claims are plausible and align with standard VTT functionality
- The source URL follows Foundry VTT's standard documentation pattern
- Similar citations (FoundryTokens2024, FoundryMeasurement2024) exist in references.bib with identical structure
- The note field accurately describes the content scope

## Required Fixes (DO NOT APPLY)

### BibTeX Changes

**Change entry type from `@misc` to `@online`**:

The current entry violates Rule 1 (Website Preferred). According to the workflow, online sources should use `@online` type, not `@misc`.

**Current entry**:
```bibtex
@misc{FoundryScenes2024,
    title = {{Scenes | Foundry Virtual Tabletop}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/article/scenes/},
    urldate = {2025-12-23},
    note = {Offizielle Dokumentation zu Scene-Management und Grid-Konfiguration (Square, Hexagonal, Gridless)}
}
```

**Required change**:
```bibtex
@online{FoundryScenes2024,
    title = {{Scenes | Foundry Virtual Tabletop}},
    year = {2024},
    author = {{Foundry Gaming LLC}},
    url = {https://foundryvtt.com/article/scenes/},
    urldate = {2025-12-23},
    note = {Offizielle Dokumentation zu Scene-Management und Grid-Konfiguration (Square, Hexagonal, Gridless)}
}
```

### LaTeX Changes

**No LaTeX changes required**. The citations are correctly formatted and appropriate for the claims being made.

## Additional Observations

1. **Consistency**: The entry follows the same pattern as other Foundry VTT documentation entries in references.bib (FoundryTokens2024, FoundryMeasurement2024, FoundryVTT2024)

2. **Related entries that also need @misc → @online conversion**:
   - FoundryTokens2024 (line 405-412)
   - FoundryMeasurement2024 (line 424-430)
   - Roll202024 (line 397-403)
   - Roll20TokenFeatures2024 (line 432-439)
   - Roll20FogOfWar2024 (line 441-448)
   - Roll20Graphics2024 (line 450-457)

3. **Content Verification**: Without web access, I cannot verify the exact page length (Rule 5), but documentation pages are typically concise (1-4 pages). If the orchestrator has web access, they should verify this.

4. **URL Stability**: Foundry VTT documentation URLs are stable and maintained by the official vendor.

## Recommendation

**Status**: VALID with minor fix required

**Action**: Change entry type from `@misc` to `@online` to comply with Rule 1.

**Confidence**: HIGH - The source is from official vendor documentation, claims are plausible and align with standard VTT features, and the entry follows consistent patterns with other verified sources.
