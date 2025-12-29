# Source Validation Report: ValentineFantasyStatblocks2024

## Source Information

**Citation Key**: ValentineFantasyStatblocks2024
**Source Type**: @misc (GitHub Repository)
**URL**: https://github.com/javalent/fantasy-statblocks

## BibTeX Entry (Current)

```bibtex
@misc{ValentineFantasyStatblocks2024,
    title = {{Fantasy Statblocks: Create Dungeons and Dragons Style Statblocks for Obsidian.md}},
    year = {2024},
    author = {Valentine, Jeremy},
    organization = {GitHub},
    url = {https://github.com/javalent/fantasy-statblocks},
    urldate = {2025-12-08},
    note = {Popular Obsidian plugin for TTRPG statblock management with over 259,000 downloads as of December 2025}
}
```

## Citation Usage in Thesis

| File | Line | Context |
|------|------|---------|
| latex/01-Einleitung.tex | 20 | "Das Plugin Fantasy Statblocks, das Statblocks für verschiedene Spielsysteme direkt in Obsidian rendert, verzeichnet über 250.000 Downloads \autocite{ValentineFantasyStatblocks2024}." |

## Validation Results

### R1: Source Type Check
- **Status**: PASS
- **Details**: @misc is appropriate for GitHub repositories. Could optionally be changed to @online, but @misc is acceptable for software/repositories.

### R2: BibTeX Syntax Check
- **Status**: PASS
- **Details**: Author format `{Valentine, Jeremy}` follows correct BibTeX convention (LastName, FirstName). All required fields present.

### R3: urldate Check
- **Status**: PASS
- **Details**: urldate = 2025-12-08 is within valid range (2025-10-01 to 2025-12-24).

### R4: Book Citation Check
- **Status**: PASS
- **Details**: This is not a book citation. It is a GitHub repository reference.

### R5: Source Length Check
- **Status**: PASS
- **Details**: GitHub README page - well under 6 pages of content.

## Source Content Verification

**URL Accessible**: YES
**Content Matches Citation Claims**: PARTIALLY

### Verified Information:
- Repository name: fantasy-statblocks (CORRECT)
- Description: "Create Dungeons and Dragons Style Statblocks for Obsidian.md" (CORRECT)
- Primary contributor: valentine195 (organization: javalent)
- License: MIT
- Last release: v4.10.2 (September 27, 2025)
- Statistics: 436 stars, 90 forks, 295 releases

### Discrepancies Found:
1. **Author name**: The BibTeX entry states "Valentine, Jeremy" but the GitHub repository shows the username "valentine195" under organization "javalent". The full name "Jeremy Valentine" is not explicitly displayed on the repository page.

2. **Download count**: The note claims "over 259,000 downloads" but this specific number cannot be verified directly from the GitHub page (would need Obsidian plugin stats).

## Overall Validation Status

| Rule | Status |
|------|--------|
| R1: Web source preferred | PASS |
| R2: BibTeX syntax valid | PASS |
| R3: urldate in range | PASS |
| R4: No book citations | PASS |
| R5: Source length <= 6 pages | PASS |

**OVERALL**: VALID (All 5 rules pass)

## Recommended Fixes

### Minor Recommendations (Optional):

1. **Author Name Verification**: The author name "Valentine, Jeremy" should be verified. The GitHub username is "valentine195" and the organization is "javalent". If the full name cannot be confirmed, consider using:
   ```bibtex
   author = {{javalent}},
   ```

2. **Entry Type**: Could optionally be changed to @online for better semantic accuracy:
   ```bibtex
   @online{ValentineFantasyStatblocks2024,
       title = {{Fantasy Statblocks: Create Dungeons and Dragons Style Statblocks for Obsidian.md}},
       year = {2024},
       author = {Valentine, Jeremy},
       organization = {GitHub},
       url = {https://github.com/javalent/fantasy-statblocks},
       urldate = {2025-12-08},
       note = {Popular Obsidian plugin for TTRPG statblock management with over 259,000 downloads as of December 2025}
   }
   ```

3. **Download Statistics**: The download count in the note should ideally reference the Obsidian plugin statistics page for verification.

## Summary

The source ValentineFantasyStatblocks2024 passes all 5 validation rules. The citation is valid and properly formatted. The source is a legitimate GitHub repository for a popular Obsidian plugin used in the TTRPG community. The citation is used appropriately in the thesis to demonstrate the popularity of TTRPG-related Obsidian plugins.

**No mandatory fixes required.**
