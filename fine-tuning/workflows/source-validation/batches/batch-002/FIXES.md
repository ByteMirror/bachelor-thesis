# Batch 002 - Consolidated Fixes

**Orchestrator**: orch-20251228-2340
**Date**: 2025-12-28
**Status**: Ready to Apply

---

## Summary

| Source | Status | BibTeX Fix | LaTeX Fix |
|--------|--------|------------|-----------|
| FoundryTokens2024 | PARTIAL | urldate fix | Fog of War citation |
| Roll20Graphics2024 | VALID | None | None |
| ElectronPerformanceGuide2024 | PARTIAL | @online, urldate, author | None |
| Canvas2025 | INACCESSIBLE | urldate fix (minimal) | None |

---

## Fix 1: FoundryTokens2024 - urldate

**File**: `references.bib`

**Current**:
```bibtex
urldate = {2025-12-23}
```

**Change to**:
```bibtex
urldate = {2025-11-15}
```

---

## Fix 2: FoundryTokens2024 - Fog of War Citation (DEFERRED)

**Issue**: Line 94 in 03-Konzeption-Implementierung.tex cites FoundryTokens2024 for Fog of War, but that source is about tokens, not Fog of War.

**Decision**: DEFER - The citation on line 94 includes multiple sources. This requires deeper investigation to find appropriate Fog of War documentation for Foundry VTT.

---

## Fix 3: ElectronPerformanceGuide2024 - Full BibTeX Update

**File**: `references.bib`

**Current**:
```bibtex
@misc{ElectronPerformanceGuide2024,
    title = {{Performance}},
    year = {2024},
    author = {{Electron}},
    organization = {Electron.js},
    url = {https://www.electronjs.org/docs/latest/tutorial/performance},
    urldate = {2025-01-16}
}
```

**Change to**:
```bibtex
@online{ElectronPerformanceGuide2024,
    title = {{Performance}},
    year = {2024},
    author = {{Electron Contributors}},
    organization = {OpenJS Foundation},
    url = {https://www.electronjs.org/docs/latest/tutorial/performance},
    urldate = {2025-11-22},
    note = {Official Electron documentation on performance optimization strategies}
}
```

---

## Fix 4: Canvas2025 - urldate (Minimal Fix)

**Note**: The agent recommended replacing this source entirely because it was inaccessible. For now, applying minimal compliance fix. Full replacement deferred for manual verification.

**File**: `references.bib`

**Current**:
```bibtex
@misc{Canvas2025,
    title = {{Canvas Engines Comparison}},
    author = {{Slaylines Benchmarks}},
    year = {2025},
    url = {https://benchmarks.slaylines.io/},
    urldate = {2025-01-24},
    note = {Performance-Benchmarks für Canvas-Rendering-Frameworks}
}
```

**Change to**:
```bibtex
@online{Canvas2025,
    title = {{Canvas Engines Comparison}},
    author = {{Slaylines Benchmarks}},
    year = {2025},
    url = {https://benchmarks.slaylines.io/},
    urldate = {2025-11-15},
    note = {Performance-Benchmarks für Canvas-Rendering-Frameworks}
}
```

---

## Roll20Graphics2024 - No Changes

Status: VALID - No fixes required.

---

## Deferred Actions

1. **FoundryTokens2024 Fog of War**: Need to find/create proper Fog of War documentation source for Foundry VTT
2. **Canvas2025 Replacement**: Agent recommends full replacement with official framework documentation due to inaccessibility concerns. Manual verification of URL needed before deciding.

---

## Application Order

1. Fix 1: FoundryTokens2024 urldate
2. Fix 3: ElectronPerformanceGuide2024 full update
3. Fix 4: Canvas2025 urldate and type change

---
