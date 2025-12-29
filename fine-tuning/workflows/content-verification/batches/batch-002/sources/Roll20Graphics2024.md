# Content Verification Report: Roll20Graphics2024

## Source Information
- **Citation Key**: Roll20Graphics2024
- **URL**: https://wiki.roll20.net/Manipulating_Graphics
- **Title**: Manipulating Graphics - Roll20 Wiki
- **Access Date**: 2025-12-29
- **Access Method**: WebSearch (direct WebFetch returned 403 Forbidden)

---

## Verification Summary

| Claim | Status | Notes |
|-------|--------|-------|
| Grid Snap-to-Grid for Square/Hexagonal | VERIFIED | Confirmed in wiki |
| Grid-Groesse/Typ in Page Settings | VERIFIED | Confirmed |
| Drag & Drop aus Art Library | VERIFIED | Confirmed |
| Automatische Grid-Erkennung | NOT VERIFIED | Not found in source |
| Alt-Taste deaktiviert Grid-Snapping | VERIFIED | Confirmed |
| 45-Grad-Schritte fuer Square-Grids | VERIFIED | Exact match |
| 30-Grad-Schritte fuer Hexagonal-Grids | VERIFIED | Exact match |
| Strg-Click fuer Multi-Selection | INCORRECT | Source says Shift+Click |
| Rahmenauswahl (Box Selection) | VERIFIED | Confirmed |
| Measurement Tool Grid-basiert | VERIFIED | Confirmed |
| Waypoint-basierte Messungen | VERIFIED | Confirmed via Q-Taste |

---

## Detailed Claim Analysis

### Citation 1 (Line 31) - Karten-Management

**Thesis Claim:**
> "Roll20 bietet vergleichbare Funktionalität mit Grid Snap-to-Grid für Square- und Hexagonal-Grids, wobei die Grid-Größe und der Typ in den Page Settings konfiguriert werden können. Der Image-Import erfolgt per Drag & Drop aus der Art Library mit automatischer Grid-Erkennung für vorgezeichnete Maps."

**Source Evidence:**

1. **Grid Snap-to-Grid**: VERIFIED
   - Source: "Anytime the grid is enabled in Page Settings, Snap To Grid is enforced on The Tabletop."
   - Source: "When Snap to Grid is enabled, an image snaps to the bottom right corner of a grid square and snaps to the center of a grid hex."

2. **Page Settings Configuration**: VERIFIED
   - Source: "You can modify the default grid settings [...] in the Game Default Settings. Additionally, each page of the campaign can have its own unique settings, which can be accessed and changed in Page Settings via the Page Toolbar."

3. **Drag & Drop aus Art Library**: VERIFIED
   - Source: "To put your images onto the VTT you simply need to drag the asset from the Art Library in the right-side pane and drop it where you would like on the VTT."

4. **Automatische Grid-Erkennung**: NOT VERIFIED
   - No evidence found in the source for automatic grid detection/recognition for pre-drawn maps.
   - This feature may exist but is not documented in the cited source.

**Assessment**: PARTIALLY VERIFIED - 3 of 4 claims supported

---

### Citation 2 (Line 65) - Token-System

**Thesis Claim:**
> "Roll20 bietet vergleichbare Kern-Funktionalität: Drag & Drop von Tokens aus der Art Library auf den Tabletop, automatisches Grid-Snapping beim Movement (kann per Alt-Taste deaktiviert werden), sowie Token-Rotation mit 45°-Schritten für Square-Grids und 30°-Schritten für Hexagonal-Grids. Multi-Selection erfolgt durch Strg-Click oder Rahmenauswahl."

**Source Evidence:**

1. **Drag & Drop von Tokens**: VERIFIED
   - Source: "simply drag and drop it from either the folder view, the Recent Upload list, or from a sub folder onto the Tabletop/map."

2. **Automatisches Grid-Snapping**: VERIFIED
   - Source: "Anytime the grid is enabled in Page Settings, Snap To Grid is enforced on The Tabletop."

3. **Alt-Taste deaktiviert Snapping**: VERIFIED
   - Source: "Hold down the ALT Key while moving, rotating or scaling to ignore snapping."

4. **45-Grad-Rotation fuer Square-Grids**: VERIFIED
   - Source: "While Snap To Grid is enabled, an image rotates in increments of 45° for square grids"

5. **30-Grad-Rotation fuer Hexagonal-Grids**: VERIFIED
   - Source: "While Snap To Grid is enabled, an image rotates in increments of [...] 30° for hex grids."

6. **Strg-Click fuer Multi-Selection**: INCORRECT
   - Source actually states: "players can use the current Shift+Click method to select multiple specific tokens they control"
   - Thesis incorrectly states "Strg-Click" (Ctrl+Click), but source says "Shift+Click"

7. **Rahmenauswahl (Box Selection)**: VERIFIED
   - Source: "Box selection (click and drag) is also available for selecting groups of tokens within an area."

**Assessment**: MOSTLY VERIFIED - 6 of 7 claims correct, 1 FACTUAL ERROR (Strg vs. Shift)

---

### Citation 3 (Line 129) - Measurement Tool

**Thesis Claim:**
> "Roll20 bietet ein Measurement Tool, das bei aktiviertem Grid automatisch Grid-basierte Distanzen berechnet. Das Tool unterstützt Waypoint-basierte Messungen für nicht-lineare Pfade"

**Source Evidence:**

1. **Grid-basierte Distanzberechnung**: VERIFIED
   - Source: "Snap to Corner - Measurement starts and ends at the grid corner nearest your cursor. Measurements are given in whole grid units."

2. **Waypoint-basierte Messungen**: VERIFIED
   - Source: "Pressing Q or secondary click while measuring will add a waypoint to your measurement line."
   - Source: "You can also repeatedly press Q at various squares/hexes to create waypoints the token will follow when dropped."

**Assessment**: FULLY VERIFIED

---

## Critical Issues Found

### FACTUAL ERROR - Multi-Selection Keyboard Shortcut

**Location**: Line 65 in latex/03-Konzeption-Implementierung.tex

**Current Text (INCORRECT)**:
> "Multi-Selection erfolgt durch Strg-Click oder Rahmenauswahl"

**Correct Information**:
Multi-Selection erfolgt durch **Shift-Click** oder Rahmenauswahl

**Source Quote**:
> "players can use the current Shift+Click method to select multiple specific tokens they control - this works for GMs as well"

**Required Correction**:
Change "Strg-Click" to "Shift-Click"

---

### UNSUPPORTED CLAIM - Automatic Grid Detection

**Location**: Line 31 in latex/03-Konzeption-Implementierung.tex

**Claim**:
> "mit automatischer Grid-Erkennung für vorgezeichnete Maps"

**Status**: This claim is NOT supported by the cited source (Roll20Graphics2024). No documentation of automatic grid recognition for pre-drawn maps was found.

**Recommendation**:
- Remove this claim, OR
- Find alternative source that documents this feature, OR
- Rephrase to avoid implying this is a documented Roll20 feature

---

## Source Quotes for Reference

### Grid Snapping
> "Anytime the grid is enabled in Page Settings, Snap To Grid is enforced on The Tabletop. Snapping affects all transformations that can be made on your Background Images as well as Tokens. Hold down the ALT Key while moving, rotating or scaling to ignore snapping."

### Rotation Angles
> "While Snap To Grid is enabled, an image rotates in increments of 45° for square grids and 30° for hex grids."

### Multi-Selection
> "players can use the current Shift+Click method to select multiple specific tokens they control - this works for GMs as well. When using shift-clicking to select tokens in Firefox, the selection box grows to accommodate all the selected tokens"

### Waypoints
> "Pressing Q or secondary click while measuring will add a waypoint to your measurement line."

---

## Recommendations

1. **CRITICAL**: Correct "Strg-Click" to "Shift-Click" on Line 65
2. **IMPORTANT**: Remove or re-source the claim about "automatische Grid-Erkennung" on Line 31
3. **OPTIONAL**: Consider adding keyboard shortcuts for completeness (Q for waypoints, E+scroll for rotation, Arrow keys for movement)

---

## Verification Metadata
- **Verified by**: Content Verification Agent
- **Date**: 2025-12-29
- **Confidence Level**: HIGH (based on official Roll20 Wiki content via search results)
- **Primary Sources Consulted**:
  - [Manipulating Graphics - Roll20 Wiki](https://wiki.roll20.net/Manipulating_Graphics)
  - [Measure Tool - Roll20 Help Center](https://help.roll20.net/hc/en-us/articles/360039674913-Measure-Tool)
  - [Art Library - Roll20 Wiki](https://wiki.roll20.net/Art_Library)
  - [Advanced Shortcuts - Roll20 Wiki](https://wiki.roll20.net/Advanced_Shortcuts)
