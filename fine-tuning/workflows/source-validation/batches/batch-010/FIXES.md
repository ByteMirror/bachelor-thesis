# Batch 010 Fixes

## Summary

| Citation Key | Status | Fixes Required |
|--------------|--------|----------------|
| PixiJS2024Launch | NEEDS FIXES | 3 fixes (type, author, urldate) |
| PixiIssue10586 | VALID | None |
| PixiBatch2024 | NEEDS FIXES | 3 fixes (URL 404, title, urldate) |
| ObsidianWiki2024 | NEEDS FIXES | 2 fixes (author, urldate) |

---

## Fix 1: PixiJS2024Launch

### Changes:
1. Change @misc to @online
2. Update author to actual blog authors
3. Update urldate to valid range

### Before:
```bibtex
@misc{PixiJS2024Launch,
    title = {{PixiJS v8 Launches!}},
    year = {2024},
    author = {{PixiJS Team}},
    url = {https://pixijs.com/blog/pixi-v8-launches},
    urldate = {2024-10-08}
}
```

### After:
```bibtex
@online{PixiJS2024Launch,
    title = {{PixiJS v8 Launches!}},
    year = {2024},
    author = {Groves, Mat and Zyie},
    url = {https://pixijs.com/blog/pixi-v8-launches},
    urldate = {2025-12-15}
}
```

---

## Fix 2: PixiBatch2024

### Changes:
1. URL was 404 - replace with working alternative
2. Update title to match new URL
3. Update urldate to valid range
4. Change @misc to @online

### Before:
```bibtex
@misc{PixiBatch2024,
    title = {{PixiJS v8 Batch Rendering Guide}},
    author = {{PixiJS Team}},
    organization = {PixiJS},
    year = {2024},
    url = {https://pixijs.com/8.x/guides/advanced/batching},
    urldate = {2025-01-24}
}
```

### After:
```bibtex
@online{PixiBatch2024,
    title = {{PixiJS v8 Performance Tips}},
    author = {{PixiJS Team}},
    organization = {PixiJS},
    year = {2024},
    url = {https://pixijs.com/8.x/guides/concepts/performance-tips},
    urldate = {2025-12-24}
}
```

---

## Fix 3: ObsidianWiki2024

### Changes:
1. Update author format
2. Update urldate to valid range
3. Change @misc to @online

### Before:
```bibtex
@misc{ObsidianWiki2024,
    title = {{Obsidian (software)}},
    year = {2024},
    author = {{Wikipedia}},
    url = {https://en.wikipedia.org/wiki/Obsidian_(software)},
    urldate = {2024-10-08}
}
```

### After:
```bibtex
@online{ObsidianWiki2024,
    title = {{Obsidian (software)}},
    year = {2024},
    author = {{Wikipedia contributors}},
    url = {https://en.wikipedia.org/wiki/Obsidian_(software)},
    urldate = {2025-12-15}
}
```

---

## Applied By Orchestrator

- [x] PixiJS2024Launch fix applied
- [x] PixiBatch2024 fix applied (URL replaced with performance-tips)
- [x] ObsidianWiki2024 fix applied
- [x] pdflatex/biber verified (87 pages)
