# Batch 014 Fixes

## Summary

| Citation Key | Status | Fixes Required |
|--------------|--------|----------------|
| Klein2024FrameTiming | valid | None (8 pages but peer-reviewed IEEE) |
| JSON2017 | partial | @techreport→@online, urldate, URL update |
| JavalentInitiativeTracker2024 | partial | @misc→@online, urldate fix |
| FoundryFrameworks2024 | partial | @misc→@online, urldate fix |

---

## Fix 1: Klein2024FrameTiming

### Status: VALID (no changes)

R5 notes 8 pages but this is a peer-reviewed IEEE Conference paper. Academic conference papers are exempt from the 6-page guideline as they undergo peer review and represent authoritative research.

---

## Fix 2: JSON2017

### Violations:
- R1: @techreport → @online
- R3: Missing urldate
- URL redirects (301) to new location

### Before:
```bibtex
@techreport{JSON2017,
    title = {{The JavaScript Object Notation (JSON) Data Interchange Format}},
    author = {Bray, Tim},
    institution = {Internet Engineering Task Force (IETF)},
    year = {2017},
    type = {RFC},
    number = {8259},
    url = {https://tools.ietf.org/html/rfc8259},
    note = {JSON Standard Specification}
}
```

### After:
```bibtex
@online{JSON2017,
    title = {{The JavaScript Object Notation (JSON) Data Interchange Format}},
    author = {Bray, Tim},
    year = {2017},
    url = {https://datatracker.ietf.org/doc/html/rfc8259},
    urldate = {2025-12-15},
    note = {RFC 8259, Internet Engineering Task Force (IETF)}
}
```

---

## Fix 3: JavalentInitiativeTracker2024

### Violations:
- R1: @misc → @online
- R3: urldate 2025-01-06 outside valid range

### Before:
```bibtex
@misc{JavalentInitiativeTracker2024,
    title = {{Initiative Tracker: TTRPG Initiative Tracker for Obsidian.md}},
    year = {2024},
    author = {{Javalent}},
    organization = {GitHub},
    url = {https://github.com/javalent/initiative-tracker},
    urldate = {2025-01-06},
    note = {Popular Obsidian plugin for tracking combat initiative with 183 stars}
}
```

### After:
```bibtex
@online{JavalentInitiativeTracker2024,
    title = {{Initiative Tracker: TTRPG Initiative Tracker for Obsidian.md}},
    year = {2024},
    author = {{Javalent}},
    organization = {GitHub},
    url = {https://github.com/javalent/initiative-tracker},
    urldate = {2025-12-15},
    note = {Popular Obsidian plugin for tracking combat initiative}
}
```

---

## Fix 4: FoundryFrameworks2024

### Violations:
- R1: @misc → @online
- R3: urldate 2025-01-24 outside valid range

### Before:
```bibtex
@misc{FoundryFrameworks2024,
    title = {{System Development Part 3: Frameworks and APIs}},
    author = {{Foundry Gaming LLC}},
    organization = {Foundry Virtual Tabletop},
    year = {2024},
    url = {https://foundryvtt.com/article/frameworks/},
    urldate = {2025-01-24}
}
```

### After:
```bibtex
@online{FoundryFrameworks2024,
    title = {{System Development Part 3: Frameworks and APIs}},
    author = {{Foundry Gaming LLC}},
    organization = {Foundry Virtual Tabletop},
    year = {2024},
    url = {https://foundryvtt.com/article/frameworks/},
    urldate = {2025-12-15}
}
```

---

## Applied By Orchestrator

- [x] JSON2017 fixed (@techreport→@online, URL, urldate)
- [x] JavalentInitiativeTracker2024 fixed (@misc→@online, urldate)
- [x] FoundryFrameworks2024 fixed (@misc→@online, urldate)
- [x] pdflatex/biber verified (87 pages)
