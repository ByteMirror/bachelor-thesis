# Source Validation Report: JavalentInitiativeTracker2024

**Validation Date:** 2025-12-28
**Status:** NEEDS FIX

---

## Source Information

| Field | Value |
|-------|-------|
| Citation Key | `JavalentInitiativeTracker2024` |
| Title | Initiative Tracker: TTRPG Initiative Tracker for Obsidian.md |
| Author | Javalent |
| Year | 2024 |
| Type | @misc |
| URL | https://github.com/javalent/initiative-tracker |
| URL Date | 2025-01-06 |

---

## Citation Usage

**File:** `/home/fabian/Github/bachelor-thesis/latex/01-Einleitung.tex`
**Line:** 20

**Context:**
> Die Community hat ein umfangreiches Ökosystem spezialisierter Plugins entwickelt, darunter Initiative Tracker für Kampfbegegnungen \autocite{JavalentInitiativeTracker2024} und Dice Roller für Würfelsimulationen.

**Purpose:** Supporting evidence for the active Obsidian TTRPG plugin ecosystem

---

## URL Verification

| Check | Result |
|-------|--------|
| URL Accessible | YES |
| Repository Exists | YES |
| Repository Name | javalent/initiative-tracker |
| Description | TTRPG Initiative Tracker for Obsidian.md |
| Star Count | 185 (note: BibTeX says 183, actual is 185) |
| License | GPL-3.0 |
| Commits | 800+ |
| Forks | 53 |

**Verification Notes:** The GitHub repository is accessible and active. The star count in the BibTeX note (183) is slightly outdated - current count is 185 stars.

---

## Rule Validation

### R1: Prefer @online/website citations over other types
| Status | FAIL |
|--------|------|
| Current Type | @misc |
| Required Type | @online |
| Issue | GitHub repositories should use @online type for web resources |

### R2: Valid BibTeX syntax (author format: {LastName, FirstName})
| Status | PASS (with note) |
|--------|------------------|
| Current Format | `{Javalent}` |
| Notes | Single-name organization/username is acceptable when wrapped in braces |

### R3: urldate must be between 2025-10-01 and 2025-12-24
| Status | FAIL |
|--------|------|
| Current urldate | 2025-01-06 |
| Valid Range | 2025-10-01 to 2025-12-24 |
| Issue | urldate is OUTSIDE valid range (too early by ~9 months) |

### R4: No book citations (except Daggerheart)
| Status | PASS |
|--------|------|
| Notes | Not a book citation |

### R5: Source length <=6 pages
| Status | PASS |
|--------|------|
| Notes | GitHub repository README - no page count applicable for web resources |

---

## Validation Summary

| Rule | Status |
|------|--------|
| R1 | FAIL - Use @online instead of @misc |
| R2 | PASS |
| R3 | FAIL - urldate outside valid range |
| R4 | PASS |
| R5 | PASS |

**Overall Status:** NEEDS FIX (2 rule violations)

---

## Required Fixes

1. **Change entry type** from `@misc` to `@online`
2. **Update urldate** from `2025-01-06` to a date within the valid range (2025-10-01 to 2025-12-24)
3. **Optional:** Update star count in note from 183 to 185 for accuracy

---

## Suggested Corrected BibTeX

```bibtex
@online{JavalentInitiativeTracker2024,
    title = {{Initiative Tracker: TTRPG Initiative Tracker for Obsidian.md}},
    year = {2024},
    author = {{Javalent}},
    organization = {GitHub},
    url = {https://github.com/javalent/initiative-tracker},
    urldate = {2025-12-20},
    note = {Popular Obsidian plugin for tracking combat initiative with 185 stars}
}
```

---

## Additional Notes

- The source is legitimate and appropriate for the thesis context
- It effectively supports the claim about Obsidian's TTRPG plugin ecosystem
- The repository is well-maintained with active development (800+ commits, GPL-3.0 license)
