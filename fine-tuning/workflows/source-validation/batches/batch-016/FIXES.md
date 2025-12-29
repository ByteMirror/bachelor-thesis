# Batch-016 Fixes

**Orchestrator**: orch-20251229-0630
**Applied**: 2025-12-29

---

## Summary

| Source | Status | Action |
|--------|--------|--------|
| BusinessResearchInsights2025 | NEEDS_FIX | @report → @online |
| Buschmann1996PatternOriented | REPLACE | → Richards2024MicrokernelArchitecture |
| Buschmann1996 | REPLACE | → Richards2015LayeredArchitecture |
| Basili1986ExperimentationEngineering | VALID | No changes |

---

## Applied Changes

### 1. BusinessResearchInsights2025 (R1 violation)

**Change**: @report → @online, removed `institution` field

```bibtex
@online{BusinessResearchInsights2025,
    title = {{Tabletop Role-Playing Game (TTRPG) Market Size...}},
    author = {{Business Research Insights}},
    year = {2025},
    url = {https://www.businessresearchinsights.com/market-reports/tabletop-role-playing-game-ttrpg-market-110856},
    urldate = {2025-12-08},
    note = {Market Research Report...}
}
```

### 2. Buschmann1996PatternOriented (R4 violation - @book)

**Replaced with**: Richards2024MicrokernelArchitecture

```bibtex
@online{Richards2024MicrokernelArchitecture,
    author = {Richards, Mark},
    title = {{Microkernel Architecture}},
    year = {2024},
    url = {https://www.oreilly.com/library/view/software-architecture-patterns/9781098134280/ch04.html},
    urldate = {2025-12-15},
    note = {Chapter 4 in Software Architecture Patterns, 2nd Edition}
}
```

**LaTeX Update**: `latex/02-Theoretische-Grundlagen.tex:73`
- `\autocite{Buschmann1996PatternOriented}` → `\autocite{Richards2024MicrokernelArchitecture}`

### 3. Buschmann1996 (R4 violation - @book, duplicate)

**Replaced with**: Richards2015LayeredArchitecture

```bibtex
@online{Richards2015LayeredArchitecture,
    author = {Richards, Mark},
    title = {{Layered Architecture}},
    year = {2015},
    url = {https://www.oreilly.com/library/view/software-architecture-patterns/9781491971437/ch01.html},
    urldate = {2025-12-15},
    note = {Chapter 1 of Software Architecture Patterns}
}
```

**LaTeX Update**: `latex/03-Konzeption-Implementierung.tex:247`
- Updated text: "Buschmann et al." → "Richards"
- `\autocite{Buschmann1996}` → `\autocite{Richards2015LayeredArchitecture}`

### 4. Basili1986ExperimentationEngineering (VALID)

No changes required. Valid @article entry for IEEE TSE journal paper.

---

## Notes

- Buschmann1996PatternOriented and Buschmann1996 were duplicate entries for the same POSA book
- Each was cited for different patterns (Microkernel vs Layered Architecture)
- Each replaced with pattern-specific O'Reilly online resources by Mark Richards
