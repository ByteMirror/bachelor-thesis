# Batch 008 Fixes

## Summary

| Citation Key | Status | Fixes Required |
|--------------|--------|----------------|
| ValentineFantasyStatblocks2024 | VALID | None (all rules pass) |
| V8MemoryOptimization2016 | NEEDS FIXES | 3 fixes |
| Slant2025 | NEEDS REVISION | Replace with GitHub source |
| RPGDrop2024Market | NEEDS FIXES | 2 fixes |

---

## Fix 1: V8MemoryOptimization2016

### Changes:
1. Change @misc to @online
2. Update author to individual names
3. Update urldate to valid range

### Before:
```bibtex
@misc{V8MemoryOptimization2016,
    title = {{Optimizing V8 memory consumption}},
    year = {2016},
    author = {{V8 Team}},
    url = {https://v8.dev/blog/optimizing-v8-memory},
    urldate = {2024-10-08},
    note = {Published October 7, 2016}
}
```

### After:
```bibtex
@online{V8MemoryOptimization2016,
    title = {{Optimizing V8 memory consumption}},
    year = {2016},
    author = {Degenbaev, Ulan and Lippautz, Michael and Payer, Hannes and Verwaest, Toon},
    url = {https://v8.dev/blog/optimizing-v8-memory},
    urldate = {2025-12-15},
    note = {Published October 7, 2016}
}
```

---

## Fix 2: Slant2025 -> FabricJSWebGL2025

### Reason:
Slant.co is a general framework comparison site that doesn't specifically discuss Fabric.js WebGL roadmap. Replace with GitHub issue that directly discusses Fabric.js WebGL feature request.

### Before:
```bibtex
@misc{Slant2025,
    title = {{What are the best HTML5/JavaScript 2D game engines?}},
    author = {{Slant Community}},
    year = {2025},
    url = {https://www.slant.co/topics/973/~html5-javascript-2d-game-engines},
    urldate = {2025-01-24},
    note = {Community-basierter Framework-Vergleich}
}
```

### After:
```bibtex
@online{FabricJSWebGL2025,
    title = {{Add Support for Configurable Rendering Context (2D and WebGL)}},
    author = {{Fabric.js Contributors}},
    year = {2025},
    url = {https://github.com/fabricjs/fabric.js/issues/10449},
    urldate = {2025-12-20},
    note = {GitHub Feature Request for WebGL rendering context in Fabric.js, February 2025}
}
```

### LaTeX Change Required:
- File: latex/03-Konzeption-Implementierung.tex
- Line: ~548
- Change: `\autocite{Slant2025}` -> `\autocite{FabricJSWebGL2025}`

---

## Fix 3: RPGDrop2024Market

### Changes:
1. Change @misc to @online
2. Change year from 2024 to 2025
3. Update urldate to valid range

### Before:
```bibtex
@misc{RPGDrop2024Market,
    title = {{Worldwide TTRPG Market in 2024 – Industry Analysis}},
    year = {2024},
    author = {{RPG Drop}},
    url = {https://www.rpgdrop.com/worldwide-ttrpg-market-in-2024-industry-analysis/},
    urldate = {2025-01-06},
    note = {Industry analysis of virtual tabletop adoption and TTRPG market trends}
}
```

### After:
```bibtex
@online{RPGDrop2024Market,
    title = {{Worldwide TTRPG Market in 2024 – Industry Analysis}},
    year = {2025},
    author = {{RPG Drop}},
    url = {https://www.rpgdrop.com/worldwide-ttrpg-market-in-2024-industry-analysis/},
    urldate = {2025-12-15},
    note = {Industry analysis of virtual tabletop adoption and TTRPG market trends}
}
```

---

## Applied By Orchestrator

- [x] V8MemoryOptimization2016 fix applied
- [x] Slant2025 replaced with FabricJSWebGL2025
- [x] RPGDrop2024Market fix applied
- [x] LaTeX citation updated (Slant2025 -> FabricJSWebGL2025 in 03-Konzeption-Implementierung.tex:548)
- [x] pdflatex/biber verified (87 pages, compiled successfully)
