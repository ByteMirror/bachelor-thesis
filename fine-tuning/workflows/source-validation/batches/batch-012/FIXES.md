# Batch 012 Fixes

## Summary

| Citation Key | Status | Fixes Required |
|--------------|--------|----------------|
| Michelson2006EventDriven | REPLACE | R1 + R5 violations (14 pages, @article) |
| MartinCleanCode2008 | REPLACE | R4 violation (book citation) |
| Liu2023FrameRateVariation | VALID | None |
| Marquardt1999PluginPatterns | REPLACE | R1 + R5 violations (30 pages, @inproceedings) |

---

## Fix 1: Michelson2006EventDriven

### Violations:
- R1: Currently `@article`, should be `@online`
- R5: 14 pages exceeds 6-page limit

### Before:
```bibtex
@article{Michelson2006EventDriven,
    title = {{Event-Driven Architecture Overview}},
    year = {2006},
    author = {Michelson, Brenda M.},
    journal = {Patricia Seybold Group Research Report},
    pages = {1--14}
}
```

### After (Replacement):
```bibtex
@online{Microsoft2024EventDriven,
    title = {{Event-Driven Architecture Style}},
    author = {{Microsoft}},
    year = {2024},
    url = {https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/event-driven},
    urldate = {2025-12-15},
    note = {Azure Architecture Center - Event producers, consumers, channels, pub/sub vs streaming models}
}
```

### LaTeX Update:
- File: `latex/02-Theoretische-Grundlagen.tex`, line 75
- Change: `\autocite{Michelson2006EventDriven}` → `\autocite{Microsoft2024EventDriven}`

---

## Fix 2: MartinCleanCode2008

### Violations:
- R4: Book citation (must be replaced with web sources)

### Before:
```bibtex
@book{MartinCleanCode2008,
    title = {{Clean Code: A Handbook of Agile Software Craftsmanship}},
    author = {Martin, Robert C.},
    publisher = {Prentice Hall},
    year = {2008},
    isbn = {9780132350884},
    note = {Software Engineering Best Practices für Code-Qualität}
}
```

### After (Replacements - 2 sources):
```bibtex
@online{ESLintMaxLines2024,
    title = {{max-lines - Rules - ESLint - Pluggable JavaScript Linter}},
    author = {{ESLint Team}},
    year = {2024},
    url = {https://eslint.org/docs/latest/rules/max-lines},
    urldate = {2025-12-28},
    note = {ESLint max-lines rule with default of 300 lines per file}
}
```

### LaTeX Update:
- File: `latex/03-Konzeption-Implementierung.tex`, line 217
- Change: `\autocite{MartinCleanCode2008}` → `\autocite{DigitalOceanSOLID,ESLintMaxLines2024}`
- Note: DigitalOceanSOLID already exists in references.bib for SRP

---

## Fix 3: Liu2023FrameRateVariation

### Status: VALID

No changes required. DOI verified, peer-reviewed CHI 2023 paper.

---

## Fix 4: Marquardt1999PluginPatterns

### Violations:
- R1: Conference paper, not web source
- R5: 30 pages exceeds 6-page limit

### Before:
```bibtex
@inproceedings{Marquardt1999PluginPatterns,
    title = {{Patterns for Plug-Ins}},
    year = {1999},
    author = {Marquardt, Klaus},
    booktitle = {Proceedings of the 4th European Conference on Pattern Languages of Programs (EuroPLoP '99)},
    pages = {203--232},
    publisher = {UVK Universitätsverlag Konstanz},
    address = {Irsee, Germany},
    isbn = {978-3-87940-774-3}
}
```

### After (Replacement):
```bibtex
@online{VSCodeExtensionLifecycle2024,
    title = {{Extension Anatomy | Visual Studio Code Extension API}},
    author = {{Microsoft}},
    year = {2024},
    url = {https://code.visualstudio.com/api/get-started/extension-anatomy},
    urldate = {2025-12-15},
    note = {Official VSCode extension lifecycle: activate/deactivate functions for setup and cleanup}
}
```

### LaTeX Update:
- File: `latex/02-Theoretische-Grundlagen.tex`, line 75
- Change: `\autocite{Marquardt1999PluginPatterns}` → `\autocite{VSCodeExtensionLifecycle2024}`

---

## Applied By Orchestrator

- [x] Michelson2006EventDriven replaced with Microsoft2024EventDriven
- [x] MartinCleanCode2008 replaced with ESLintMaxLines2024 (+ existing DigitalOceanSOLID)
- [x] Marquardt1999PluginPatterns replaced with VSCodeExtensionLifecycle2024
- [x] LaTeX citations updated
- [x] pdflatex/biber verified (87 pages)
