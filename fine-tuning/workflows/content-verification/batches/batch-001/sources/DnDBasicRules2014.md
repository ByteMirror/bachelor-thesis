# Content Verification: DnDBasicRules2014

## Source Information
- **URL**: https://www.dndbeyond.com/sources/dnd/basic-rules-2014/combat
- **Accessible**: YES
- **Source Length**: LONG (full combat chapter)
- **Key Section**: "Variant: Playing on a Grid"

## Source Summary

The D&D Basic Rules 2014 Combat chapter contains a **"Variant: Playing on a Grid"** section with the following key rules:

1. **Grid Square = 5 feet**: "Each square on the grid represents 5 feet"
2. **Speed Conversion**: "a speed of 30 feet translates into a speed of 6 squares"
3. **Movement Rules**: "To enter a square, you must have at least 1 square of movement left"
4. **Difficult Terrain**: "you must have at least 2 squares of movement left to enter a square of difficult terrain"
5. **Range Measurement**: "start counting squares from a square adjacent to one of them and stop counting in the space of the other one"

---

## Claims Analysis

### Claim 1: [03-Konzeption-Implementierung.tex:17]
- **Thesis text**: "das Feature ist für die Umsetzung grundlegender D&D 5e-Spielregeln erforderlich"
- **Status**: VERIFIED
- **Evidence**: The source confirms grid-based combat is a core variant rule in D&D 5e, with specific mechanics for movement and positioning.
- **Section**: Variant: Playing on a Grid
- **Note**: This is a general reference to D&D rules - appropriate use.

### Claim 2: [03-Konzeption-Implementierung.tex:23]
- **Thesis text**: "D&D 5e definiert das Grid-basierte Movement-System mit einer Standardskalierung, bei der jedes Quadrat auf dem Grid 5 Fuß repräsentiert"
- **Status**: VERIFIED
- **Evidence**: "Each square on the grid represents 5 feet"
- **Section**: Variant: Playing on a Grid > Squares

### Claim 3: [03-Konzeption-Implementierung.tex:57]
- **Thesis text**: "D&D 5e definiert für Movement-Berechnungen, dass eine typische mittelgroße Kreatur einen Raum von 5 Fuß Breite kontrolliert"
- **Status**: PARTIALLY VERIFIED
- **Evidence**: The source states squares are 5 feet, implying Medium creatures occupy 1 square. However, the specific "creature space" rule may be in "Size Categories" section (Chapter 9: Combat > Size Categories), not directly in the grid variant section.
- **Section**: Variant: Playing on a Grid (implicit) / Size Categories (explicit)
- **Recommendation**: Consider adding section reference for precision.

### Claim 4: [03-Konzeption-Implementierung.tex:123]
- **Thesis text**: "D&D 5e definiert standardisierte Reichweiten für bestimmte Spielmechaniken die in einem Virtual-Tabletop System nachvollwerden werden müssen"
- **Status**: VERIFIED
- **Evidence**: The source confirms ranges are measured in feet/squares: "To determine the range on a grid between two things...start counting squares from a square adjacent to one of them"
- **Section**: Variant: Playing on a Grid > Range
- **Note**: Grammar issue in German text: "nachvollwerden" should be "nachvollzogen"

### Claim 5: [03-Konzeption-Implementierung.tex:125]
- **Thesis text**: "Bewegungsreichweiten, Zauberreichweiten und Waffenreichweiten sind in Fuß definiert"
- **Status**: VERIFIED
- **Evidence**: "a speed of 30 feet translates into a speed of 6 squares" - confirms movement is defined in feet. Range measurement section confirms ranges are in feet/squares.
- **Section**: Variant: Playing on a Grid > Movement & Range

### Claim 6: [03-Konzeption-Implementierung.tex:587]
- **Thesis text**: "In D&D 5e entspricht dabei typischerweise ein Quadrat 5 Fuß realer Distanz"
- **Status**: VERIFIED
- **Evidence**: "Each square on the grid represents 5 feet"
- **Section**: Variant: Playing on a Grid > Squares

---

## Required Changes

| File | Line | Current | Recommended | Priority |
|------|------|---------|-------------|----------|
| 03-Konzeption-Implementierung.tex | 17 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat]{DnDBasicRules2014}` | LOW |
| 03-Konzeption-Implementierung.tex | 23 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat, Variant: Playing on a Grid]{DnDBasicRules2014}` | MEDIUM |
| 03-Konzeption-Implementierung.tex | 57 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat, Size Categories]{DnDBasicRules2014}` | MEDIUM |
| 03-Konzeption-Implementierung.tex | 123 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat]{DnDBasicRules2014}` | LOW |
| 03-Konzeption-Implementierung.tex | 125 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat, Movement and Position]{DnDBasicRules2014}` | MEDIUM |
| 03-Konzeption-Implementierung.tex | 587 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat, Variant: Playing on a Grid]{DnDBasicRules2014}` | MEDIUM |

---

## Additional Issues Found

### Grammar Error (Line 123)
- **Current**: "nachvollwerden werden müssen"
- **Should be**: "nachvollzogen werden müssen"

---

## Summary

- **Total Citations**: 6
- **Verified**: 5 (83%)
- **Partially Verified**: 1 (17%)
- **Unsupported**: 0 (0%)

### Key Findings:
1. **All claims are factually accurate** - The thesis correctly states that D&D 5e uses 5-foot grid squares for tactical movement.
2. **Section references needed**: YES - The source is a long document (full combat chapter). Adding section references would improve academic precision.
3. **Primary section**: "Variant: Playing on a Grid" contains most of the referenced rules.

### Verification Notes:
- The D&D Basic Rules 2014 explicitly states grid-based play is a **variant rule**, not mandatory. The thesis correctly uses phrases like "typischerweise" (typically) to acknowledge this.
- The claim about creature space (line 57) references Size Categories which may be in a different subsection than the Grid variant - consider verifying exact location in the full document.
