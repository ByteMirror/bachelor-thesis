---
citation_key: ""
status: "pending"  # valid | invalid | partial | inaccessible | pending | replaced
source_type: ""    # article | book | online | inproceedings | thesis | misc
has_doi: false
has_isbn: false
has_url: false
url_accessible: null  # true | false | null (not checked)
urldate: ""        # MUST be between 2025-10-01 and 2025-12-24
page_count: null   # Number of pages (>6 requires justification)
bibtex_valid: false
citation_count: 0
checked_date: ""
checked_by: "AI Agent"
---

# Source Validation: [CITATION_KEY]

## Bibliographic Information

| Field | Value |
|-------|-------|
| **Author(s)** | |
| **Title** | |
| **Year** | |
| **Publisher/Journal** | |
| **URL** | |
| **DOI** | |
| **ISBN** | |
| **Pages** | |
| **Access Date** | |

## BibTeX Entry

```bibtex
@type{key,
  author = {},
  title = {},
  year = {},
}
```

## Citation Locations

| # | File | Line | Context Summary |
|---|------|------|-----------------|
| 1 | | | |
| 2 | | | |

## Claimed Information

What does the thesis claim this source contains/supports?

### Claim 1

- **Statement**: [What the thesis says]
- **Location**: `file.tex:line`
- **Surrounding Context**: [Brief context of how it's used]

### Claim 2

- **Statement**:
- **Location**:
- **Surrounding Context**:

## Source Analysis

### Accessibility Check

- [ ] URL/DOI accessible
- [ ] Content readable (not paywalled)
- [ ] Content in expected language
- [ ] Content matches cited version/edition

### Rule Compliance Check

| Rule | Status | Notes |
|------|--------|-------|
| **R1: Prefer Website** | | Is this an @online source? If not, is it Daggerheart? |
| **R2: BibTeX Syntax** | | Author format correct? Required fields present? |
| **R3: Access Date** | | urldate set between 2025-10-01 and 2025-12-24? |
| **R4: Book Exception** | | If @book, is it Daggerheart? Otherwise must replace. |
| **R5: Page Limit (≤6)** | | Page count? If >6, is there no alternative? |

**Rule Compliance Actions**:
- [ ] Source type is acceptable (online preferred, only Daggerheart as book)
- [ ] BibTeX entry syntax is correct
- [ ] urldate is set to valid random date in range
- [ ] Source is ≤6 pages OR exception documented

### Content Analysis

[Summary of what the source actually contains]

## Verification Results

| Claim | Status | Evidence/Notes |
|-------|--------|----------------|
| Claim 1 | | |
| Claim 2 | | |

**Status Legend**:
- **Verified**: Claim found and accurately represented
- **Partially Verified**: Claim found but with nuances
- **Not Found**: Claim not present in source
- **Contradicted**: Source says something different
- **Unable to Verify**: Access issues or unclear

## Overall Assessment

### Summary

[1-2 sentences summarizing the validation result]

### Confidence Level

- [ ] High - Direct quotes/clear evidence found
- [ ] Medium - Information present but interpretation required
- [ ] Low - Indirect support only

## Required Actions

- [ ] **No action** - Source is valid
- [ ] **Update citation** - Minor corrections needed (page numbers, etc.)
- [ ] **Find replacement** - Source doesn't support claims
- [ ] **Remove source** - Source is invalid for all claims
- [ ] **Manual review** - Requires human verification

## Replacement Sources (if needed)

### For Claim [X]: [Brief description]

**Proposed Replacement**:

| Field | Value |
|-------|-------|
| Author(s) | |
| Title | |
| Year | |
| URL/DOI | |

**Supporting Quote**:
> "[Exact quote from the replacement source]"

**BibTeX Entry**:
```bibtex
@type{newkey,
  author = {},
  title = {},
  year = {},
  url = {},
}
```

---

## Validation History

| Date | Action | Notes |
|------|--------|-------|
| | Initial check | |
