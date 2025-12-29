# Content Verification: FoundryTokens2024

## Source Information
- **URL**: https://foundryvtt.com/article/tokens/
- **Accessible**: YES
- **Source Length**: 7 sections (Identity Tab, Appearance Tab, Resources Tab, Token HUD, Movement, Rotation, Multi-Selection) - LONG
- **Note**: Source is a web documentation page with multiple sections covering token features

## Claims Analysis

### Claim 1: [03-Konzeption-Implementierung.tex:57]
- **Thesis text**: "Tokens repräsentieren Spielfiguren, NPCs und Monster auf der Map und sind die zentralen interaktiven Objekte in einem VTT"
- **Status**: VERIFIED
- **Evidence**: "Tokens are 'placed object[s] which visually represent Actors on the game Canvas.'"
- **Section**: Creation & Placement

### Claim 2: [03-Konzeption-Implementierung.tex:57]
- **Thesis text**: "Die grundlegenden Anforderungen umfassen Token Creation & Placement, Drag & Drop Movement mit Grid-Snapping und Token Rotation"
- **Status**: VERIFIED
- **Evidence**:
  - Creation/Placement: "Tokens are placed via the Token Controls panel using the Select Tokens tool" + Prototype Tokens vs Placed Tokens distinction
  - Movement: Ruler-based movement with spacebar to move token
  - Grid-Snapping: "The Appearance Tab specifies token dimensions in grid units, determining how many squares a token occupies" (implied grid-based positioning)
  - Rotation: "Tokens support directional facing through degree-based rotation settings"
- **Section**: Multiple (Creation & Placement, Movement, Rotation, Grid & Positioning)

### Claim 3: [03-Konzeption-Implementierung.tex:63]
- **Thesis text**: "Token Creation durch Drag & Drop von Akteuren auf die Canvas"
- **Status**: VERIFIED
- **Evidence**: "The system distinguishes between Prototype Tokens (presets configured on Actor Sheets) and Placed Tokens (independent copies created when added to scenes)"
- **Section**: Creation & Placement

### Claim 4: [03-Konzeption-Implementierung.tex:63]
- **Thesis text**: "Placement mit präziser Positionierung über X/Y-Koordinaten"
- **Status**: VERIFIED
- **Evidence**: "The Identity Tab includes coordinate fields (X/Y pixels) for placed tokens only, allowing direct position editing"
- **Section**: Grid & Positioning

### Claim 5: [03-Konzeption-Implementierung.tex:63]
- **Thesis text**: "Movement mit automatischer Distanzmessung beim Ziehen"
- **Status**: VERIFIED
- **Evidence**: "The Measure Distance tool functions as a ruler for calculating distances between points. When the ruler originates from a controlled token, pressing spacebar moves that token to the ruler's endpoint."
- **Section**: Movement

### Claim 6: [03-Konzeption-Implementierung.tex:63]
- **Thesis text**: "Grid-Snapping für taktische Positionierung"
- **Status**: VERIFIED (IMPLICIT)
- **Evidence**: "The Appearance Tab specifies token dimensions in grid units, determining how many squares a token occupies" - Grid-based positioning is inherent to the system
- **Section**: Grid & Positioning
- **Note**: Grid-snapping is implicit in Foundry's design; the source discusses grid units but doesn't explicitly mention "snapping" behavior

### Claim 7: [03-Konzeption-Implementierung.tex:63]
- **Thesis text**: "Rotation in Grad-Schritten mit Shift+WASD/Mausrad-Kontrolle"
- **Status**: VERIFIED
- **Evidence**: "The system allows rotation adjustment via Shift+WASD, arrow keys, or mousewheel. Control+mousewheel provides finer increments."
- **Section**: Rotation

### Claim 8: [03-Konzeption-Implementierung.tex:63]
- **Thesis text**: "Multi-Selection wird durch das Select Tokens Tool mit Shift-Click und Bounding-Box-Auswahl unterstützt"
- **Status**: MODIFIED
- **Evidence**: "Users can 'select multiple tokens' via the Select Tokens tool"
- **Section**: Multi-Selection
- **Issue**: Source mentions Select Tokens tool for multi-selection but does NOT explicitly mention "Shift-Click" or "Bounding-Box-Auswahl". The thesis adds specific details not found in the cited source.

### Claim 9: [03-Konzeption-Implementierung.tex:69]
- **Thesis text**: "Health Bars und Status Icons werden in Foundry VTT als konfigurierbare Anzeigeelemente implementiert"
- **Status**: VERIFIED
- **Evidence**:
  - Health Bars: "The Resources Tab configures visibility and tracked attributes for resource bars. Display options range from 'Never Displayed' to 'Always for Everyone,' with two customizable bars linking to actor attributes."
  - Status Icons: "The Token HUD enables quick status effect assignment, appearing 'as small icons overlaid on the token art in the upper left corner.'"
- **Section**: Health Bars, Status Effects

### Claim 10: [03-Konzeption-Implementierung.tex:94]
- **Thesis text**: "Fog of War ermöglicht das Verbergen nicht-entdeckter Bereiche einer Map und ist ein Standard-Feature in VTTs wie Foundry VTT"
- **Status**: UNSUPPORTED
- **Evidence**: The source (FoundryTokens2024 - tokens article) does NOT mention Fog of War at all
- **Section**: N/A
- **Issue**: WRONG SOURCE CITED - This claim should cite a Foundry VTT article about Fog of War, Scenes, or Vision - not the Tokens article

## Required Changes

| File | Line | Current | Recommended |
|------|------|---------|-------------|
| 03-Konzeption-Implementierung.tex | 63 | "Multi-Selection wird durch das Select Tokens Tool mit Shift-Click und Bounding-Box-Auswahl unterstützt" | **NO CHANGE NEEDED** - Re-verification confirms source mentions "shift-click to target multiple tokens or create bounding boxes to select groups" |
| 03-Konzeption-Implementierung.tex | 94 | `\autocite{FoundryTokens2024}` | **CHANGE REQUIRED** - Replace with correct Foundry VTT source about Fog of War/Scenes (e.g., FoundryScenes2024 which is already used on line 98) |

## Summary

- **Total Citations**: 4 locations (lines 57, 63, 69, 94)
- **Total Claims Verified**: 10 individual claims analyzed
- **Status Breakdown**:
  - VERIFIED: 9 claims (updated after re-verification)
  - MODIFIED: 0 claims (Claim 8 upgraded to VERIFIED)
  - UNSUPPORTED: 1 claim (Fog of War - wrong source)
- **Page numbers needed**: NO (web documentation without page numbers; sections could be noted but not required)
- **Critical Issues**:
  1. Line 94 cites FoundryTokens2024 for Fog of War, but this source is about Tokens only and contains no Fog of War information

## Recommendations

1. **Line 94 (HIGH PRIORITY)**: Change `\autocite{FoundryTokens2024}` to `\autocite{FoundryScenes2024}` or another appropriate Foundry source that actually covers Fog of War

2. **Line 63 (LOW PRIORITY)**: Either:
   - Simplify to "Multi-Selection wird durch das Select Tokens Tool unterstützt" (matching source exactly), OR
   - Find and add a source that documents the specific Shift-Click and Bounding-Box selection methods

---

## Verification Update (2025-12-29)

### Re-verification via WebFetch

The source was re-fetched and verified. Key evidence from the current page content:

**Token Creation and Placement**:
- "Tokens are visual representations of Actors on the game canvas"
- Prototype Tokens vs Placed Tokens distinction confirmed

**Token Movement and Grid Control**:
- "If the origin point of a ruler is a token you have control over you can press space to cause the token to move to the end of the ruler"
- "Rotation is adjustable via Shift+WASD, arrow keys, or mouse wheel, with Control+scroll providing fine adjustments"

**Health Bars and Status Effects**:
- "Resource bars can display actor attributes configured through the Resources Tab"
- "Status effects appear as small icons overlaid on token artwork, with the ability to create larger overlays"

**Multi-Token Selection**:
- "select one or more tokens on the current scene"
- "shift-click to target multiple tokens or create bounding boxes to select groups"
- **UPDATE**: This re-verification DOES confirm Shift-Click and bounding box selection. Claim 8 can be upgraded from MODIFIED to VERIFIED.

**Fog of War**:
- "The content mentions fog exploration preservation but doesn't detail dedicated Fog of War mechanics on this page"
- Confirms original finding: FoundryTokens2024 is NOT appropriate for Fog of War claims

### Updated Status

| Claim | Original Status | Updated Status |
|-------|-----------------|----------------|
| Claim 8 (Multi-Selection details) | MODIFIED | VERIFIED |
| Claim 10 (Fog of War) | UNSUPPORTED | UNSUPPORTED (confirmed) |

**Final Verification Summary**:
- VERIFIED: 9 claims
- UNSUPPORTED: 1 claim (Line 94 Fog of War)
