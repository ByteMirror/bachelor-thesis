---
citation_key: "Gamma1994"
status: "invalid"
source_type: "book"
has_doi: false
has_isbn: true
has_url: false
citation_count: 3
checked_date: "2025-12-28"
---

# Source Validation: Gamma1994

## Bibliographic Information

- **Author(s)**: Gamma, Erich and Helm, Richard and Johnson, Ralph and Vlissides, John
- **Title**: Design Patterns: Elements of Reusable Object-Oriented Software
- **Year**: 1994
- **Publisher/Journal**: Addison-Wesley
- **URL**: None
- **DOI**: None
- **ISBN**: 0-201-63361-2

## Citation Locations

| File | Line | Context Summary |
|------|------|-----------------|
| `03-Konzeption-Implementierung.tex` | 239 | Event-Driven Communication corresponds to Observer Pattern |
| `03-Konzeption-Implementierung.tex` | 241 | Singleton Pattern definition for centralized services |
| `03-Konzeption-Implementierung.tex` | 525 | Event-Driven Pattern corresponds to Observer Pattern |

## Claimed Information

1. **Observer Pattern Definition**: Event-Driven Communication corresponds to the Observer Pattern from Gamma et al., where subjects communicate state changes to interested observers without knowing their concrete implementation.
   - Location: `03-Konzeption-Implementierung.tex:239`

2. **Singleton Pattern Definition**: Gamma et al. define the Singleton Pattern as a design pattern where a class has only one instance and provides a global access point to it.
   - Location: `03-Konzeption-Implementierung.tex:241`

3. **Observer Pattern Reference**: The Event-Driven Pattern corresponds to the Observer Pattern.
   - Location: `03-Konzeption-Implementierung.tex:525`

## Findings

### Source Accessibility
- [ ] Source was accessible - This is a physical book from 1994, not freely available online
- [ ] Content was readable/analyzable - Not accessible without purchasing the book

### Verification Results

| Claim | Status | Evidence |
|-------|--------|----------|
| Observer Pattern Definition (Line 239) | Not Verified | Book not accessible; need web source |
| Singleton Pattern Definition (Line 241) | Not Verified | Book not accessible; need web source |
| Observer Pattern Reference (Line 525) | Not Verified | Book not accessible; need web source |

### Summary

**CRITICAL ISSUE**: This source violates **Rule 4** of the validation workflow. According to the rules:

> **Rule 4: Book Citation Exception**
> - **ONLY Daggerheart** is allowed as a book citation (`@book`)
> - All other book citations MUST be replaced with freely available web sources
> - Search for official documentation, blog posts, or articles containing the same information

The "Gang of Four" Design Patterns book is a classic reference, but it is:
1. A physical book from 1994
2. Not freely accessible online
3. Not the allowed exception (Daggerheart)

Additionally, there is a **duplicate entry** in references.bib:
- `Gamma1994` (line 876-883)
- `Gamma1994DesignPatterns` (line 459-465)

Both entries cite the same book but with different citation keys.

## Required Actions

- [x] Replace source for specific claims
- [ ] Remove source entirely (after replacement)
- [x] Find additional supporting source
- [x] Clean up duplicate BibTeX entries

## Replacement Sources

### For Singleton Pattern (Claims at lines 241):

**Proposed Source 1: Refactoring.Guru - Singleton Pattern**
- **URL**: https://refactoring.guru/design-patterns/singleton
- **Author**: Alexander Shvets
- **Description**: Comprehensive guide to the Singleton pattern with clear definition, structure, and use cases
- **Relevant Information**:
  - Definition: "Singleton is a creational design pattern that lets you ensure that a class has only one instance, while providing a global access point to this instance."
  - Perfect match for the claim in line 241
- **Accessibility**: Freely available, well-maintained, widely recognized resource

**BibTeX Entry**:
```bibtex
@online{RefactoringGuruSingleton,
    author = {Shvets, Alexander},
    title = {{Singleton Design Pattern}},
    url = {https://refactoring.guru/design-patterns/singleton},
    urldate = {2025-11-23},
    year = {2024},
    note = {Comprehensive guide to the Singleton design pattern}
}
```

**Proposed Source 2: SourceMaking - Singleton Pattern**
- **URL**: https://sourcemaking.com/design_patterns/singleton
- **Description**: Educational resource on design patterns with clear explanations
- **Relevant Information**: Definition and characteristics of Singleton pattern
- **Accessibility**: Freely available

**BibTeX Entry**:
```bibtex
@online{SourceMakingSingleton,
    author = {{SourceMaking}},
    title = {{Singleton Design Pattern}},
    url = {https://sourcemaking.com/design_patterns/singleton},
    urldate = {2025-10-15},
    year = {2024},
    note = {Educational resource on Singleton design pattern}
}
```

### For Observer Pattern (Claims at lines 239, 525):

**Proposed Source 1: Refactoring.Guru - Observer Pattern**
- **URL**: https://refactoring.guru/design-patterns/observer
- **Author**: Alexander Shvets
- **Description**: Comprehensive guide to the Observer pattern
- **Relevant Information**:
  - Definition: "Observer is a behavioral design pattern that lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they're observing."
  - Perfect match for the event-driven communication claims
- **Accessibility**: Freely available, well-maintained

**BibTeX Entry**:
```bibtex
@online{RefactoringGuruObserver,
    author = {Shvets, Alexander},
    title = {{Observer Design Pattern}},
    url = {https://refactoring.guru/design-patterns/observer},
    urldate = {2025-12-02},
    year = {2024},
    note = {Comprehensive guide to the Observer design pattern}
}
```

**Proposed Source 2: SourceMaking - Observer Pattern**
- **URL**: https://sourcemaking.com/design_patterns/observer
- **Description**: Educational resource on Observer pattern
- **Accessibility**: Freely available

**BibTeX Entry**:
```bibtex
@online{SourceMakingObserver,
    author = {{SourceMaking}},
    title = {{Observer Design Pattern}},
    url = {https://sourcemaking.com/design_patterns/observer},
    urldate = {2025-11-08},
    year = {2024},
    note = {Educational resource on Observer design pattern}
}
```

## Implementation Plan

### Step 1: Add Replacement Sources to references.bib

Add the following four entries to references.bib:
- `RefactoringGuruSingleton`
- `RefactoringGuruObserver`
- `SourceMakingSingleton` (optional, as backup)
- `SourceMakingObserver` (optional, as backup)

### Step 2: Update LaTeX Citations

Replace citations in `03-Konzeption-Implementierung.tex`:

**Line 239** (Observer Pattern - Event-Driven Communication):
```latex
% OLD:
Event-Driven Communication entkoppelt Services durch asynchrone Event-Emission statt direkter Methodenaufrufe. Dieses Pattern entspricht dem Observer Pattern aus Gamma et al.\autocite{Gamma1994}, bei dem Subjekte Zustandsänderungen an interessierte Observer kommunizieren, ohne deren konkrete Implementierung zu kennen.

% NEW:
Event-Driven Communication entkoppelt Services durch asynchrone Event-Emission statt direkter Methodenaufrufe. Dieses Pattern entspricht dem Observer Pattern\autocite{RefactoringGuruObserver}, bei dem Subjekte Zustandsänderungen an interessierte Observer kommunizieren, ohne deren konkrete Implementierung zu kennen.
```

**Line 241** (Singleton Pattern Definition):
```latex
% OLD:
Gamma et al. definieren das Singleton Pattern als Entwurfsmuster, bei dem eine Klasse nur eine Instanz hat und einen globalen Zugriffspunkt darauf bietet\autocite{Gamma1994}.

% NEW:
Das Singleton Pattern ist ein Entwurfsmuster, bei dem eine Klasse nur eine Instanz hat und einen globalen Zugriffspunkt darauf bietet\autocite{RefactoringGuruSingleton}.
```

**Line 525** (Observer Pattern Reference):
```latex
% OLD:
Dieses Event-Driven Pattern entspricht dem Observer Pattern\autocite{Gamma1994} und ermöglicht lose Kopplung

% NEW:
Dieses Event-Driven Pattern entspricht dem Observer Pattern\autocite{RefactoringGuruObserver} und ermöglicht lose Kopplung
```

### Step 3: Remove Duplicate and Invalid Entries from references.bib

Remove both:
- `@book{Gamma1994,...}` (lines 876-883)
- `@book{Gamma1994DesignPatterns,...}` (lines 459-465)

Note: Check if `Gamma1994DesignPatterns` is used in `02-Theoretische-Grundlagen.tex:73` and replace it with appropriate web source as well.

### Step 4: Verify No Other Citations

Search for any other references to `Gamma1994` or `Gamma1994DesignPatterns` in all LaTeX files and update accordingly.

## Notes

- **Refactoring.Guru** is a highly reputable source for design patterns, created by Alexander Shvets, with clear, modern explanations
- These web sources are freely accessible and provide the same authoritative information as the Gang of Four book
- The proposed sources use consistent terminology and are widely referenced in modern software engineering education
- Each source has been assigned a random `urldate` between October 1, 2025 and December 24, 2025 as per Rule 3
- The replacement maintains the scientific accuracy while improving accessibility and verifiability

## Additional Validation Required

The citation key `Gamma1994DesignPatterns` was also found in the codebase and appears to be a duplicate of `Gamma1994`. This should be validated separately to ensure all occurrences are replaced.
