# Batch 001 Results

**Orchestrator**: snap-20251229-0230
**Completed**: 2025-12-29 02:35
**Status**: COMPLETE

---

## Summary

| Metric | Value |
|--------|-------|
| Sources processed | 5 |
| Successful | 5 |
| Partial success | 2 (Playwright unavailable, used WebFetch) |
| Failed | 0 |

---

## Results by Source

| # | Citation Key | Status | Method | Files Created |
|---|--------------|--------|--------|---------------|
| 1 | ApacheSoftwareFoundation2016ApacheMasses | SUCCESS | WebFetch | content.md, metadata.json |
| 2 | SwissAcademicSoftwareGmbH2016CitaviOrganisieren | SUCCESS | WebFetch | snapshot.html, content.md, metadata.json |
| 3 | SoftwareFreedomConservancy2016Gitdistributed-is-the-new-centralized | SUCCESS | WebFetch+curl | snapshot.html, content.md, metadata.json |
| 4 | Kopp2016JabRef | SUCCESS | WebFetch | snapshot.html, content.md, metadata.json |
| 5 | Gansser2014LeitfadenMarketing | SUCCESS | Wayback+gansser.de | document_2014_original.pdf, document.pdf, metadata.json |

---

## Notable Findings

### URL Changes Detected

1. **SwissAcademicSoftwareGmbH2016CitaviOrganisieren**: Original citavi.de now redirects to lumivero.com (company acquisition)
2. **Gansser2014LeitfadenMarketing**: Original FOM URL no longer serves PDF - retrieved from Wayback Machine

### Playwright Limitation

Playwright browser tools were auto-denied for all agents. All used WebFetch as fallback, which:
- Successfully captured text content
- Could not capture screenshots
- Some agents reconstructed HTML from content

---

## Files Created

```
ephemeral-sources/
├── ApacheSoftwareFoundation2016ApacheMasses/
│   ├── content.md
│   └── metadata.json
├── SwissAcademicSoftwareGmbH2016CitaviOrganisieren/
│   ├── snapshot.html
│   ├── content.md
│   └── metadata.json
├── SoftwareFreedomConservancy2016Gitdistributed-is-the-new-centralized/
│   ├── snapshot.html
│   ├── content.md
│   └── metadata.json
├── Kopp2016JabRef/
│   ├── snapshot.html
│   ├── content.md
│   └── metadata.json
└── Gansser2014LeitfadenMarketing/
    ├── document_2014_original.pdf (1.7 MB - original)
    ├── document.pdf (250 KB - 2021 update)
    └── metadata.json
```

---

## Recommendations

1. **Enable Playwright permissions** for future batches to capture screenshots
2. **Update references.bib** for Citavi entry (URL changed to lumivero.com)
3. **Update references.bib** for Gansser2014 with Wayback Machine URL as backup

---

> Completed: 2025-12-29 02:35
