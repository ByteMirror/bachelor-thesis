# Batch 001 Fixes

**Orchestrator**: orch-verify-20251229-0700
**Applied**: 2025-12-29

---

## Summary

| Source | Claims | Verified | Issues | Critical |
|--------|--------|----------|--------|----------|
| PixiPerf2024 | 12 | 7 | 5 | 2 wrong citations |
| DnDBasicRules2014 | 6 | 5 | 1 partial | Add sections |
| Nielsen1993ResponseTimes | 4 | 4 | 0 | None |
| FoundryTokens2024 | 10 | 8 | 2 | 1 wrong citation |

---

## Critical Fixes (Wrong Citations)

### 1. PixiPerf2024 - TilingSprite Claims (UNSUPPORTED)

**Lines 613, 615**: Claims about TilingSprite are NOT in PixiPerf2024

- Line 613: `\autocite{PixiPerf2024}` after TilingSprite claim → **REMOVE**
- Line 615: `\autocite{PixiPerf2024}` for TilingSprite recommendation → **REMOVE**

**Evidence**: The PIXI.js Performance Tips page does not mention TilingSprite at all.

### 2. FoundryTokens2024 - Fog of War (WRONG SOURCE)

**Line 94**: Citation for Fog of War claim uses wrong source

- Current: `\autocite{FoundryTokens2024}`
- Should be: `\autocite{FoundryScenes2024}` (Fog of War is documented there, not in Tokens article)

---

## Important Fixes (Misleading Content)

### 3. PixiPerf2024 - "Automatisches Culling" (MISLEADING)

**Line 550**: Thesis says "automatisches Culling" but source says "Culling is disabled by default"

- Current: "automatisches Culling nicht-sichtbarer Objekte"
- Fix: Change to "optionales Culling" or clarify `cullable = true` is required

### 4. PixiPerf2024 - Power-of-Two Textures (UNSUPPORTED)

**Line 190**: Power-of-Two Textures claim not in PixiPerf2024

- This claim needs a different source (WebGL docs or PIXI texture docs)
- Consider citing MDN WebGL or PixiTexture2024

---

## Recommended Improvements

### 5. DnDBasicRules2014 - Add Section References

Long source, add section references for precision:

| Line | Current | Recommended |
|------|---------|-------------|
| 587 | `\autocite{DnDBasicRules2014}` | `\autocite[Combat, Variant: Playing on a Grid]{DnDBasicRules2014}` |

### 6. Grammar Fix

**Line 123**: "nachvollwerden" → "nachvollzogen"

---

## Applied Changes

- [x] Line 613: Removed wrong citation, **added** `\autocite{PixiTilingSprite2024}` (new BibTeX entry)
- [x] Line 615: Removed false "PIXI.js Performance-Dokumentation empfiehlt" claim, kept FoundryGridDocs2024
- [x] Line 94: Changed `FoundryTokens2024` → `FoundryScenes2024,Roll20FogOfWar2024`
- [x] Line 190: Split citation - PixiPerf2024 for Culling/Caching, **added** PixiTexture2024 for Power-of-Two

## New BibTeX Entries Added

```bibtex
@online{PixiTilingSprite2024,
    title = {{TilingSprite - PixiJS API Documentation}},
    author = {{PixiJS Team}},
    organization = {PixiJS},
    year = {2024},
    url = {https://pixijs.download/dev/docs/scene.TilingSprite.html},
    urldate = {2025-12-15},
    note = {TilingSprite is a fast and efficient way to render a repeating texture across a given area}
}
```
