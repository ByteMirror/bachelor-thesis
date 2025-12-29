# Batch 004 - Consolidated Fixes

**Orchestrator**: orch-20251228-0010
**Date**: 2025-12-29
**Status**: Ready to Apply

---

## Summary

| Source | Status | BibTeX Fix | LaTeX Fix | Notes |
|--------|--------|------------|-----------|-------|
| ImmerDocs2024 | INVALID | @online, urldate, author | None | |
| Fowler2014 | PARTIAL | @online, urldate | None | Long source, may need exception |
| FoundryVTT2024 | PARTIAL | @online, urldate | Deferred | Source too broad (KB), recommend replacement |
| FoundryToken2024 | INVALID | @online, urldate | Deferred | Wrong source type, duplicate exists |

---

## Applied Fixes

### Fix 1: ImmerDocs2024

**File**: `references.bib`

**Changes**:
- @misc → @online
- author: {Immer} → {Immer Contributors}
- urldate: 2025-01-25 → 2025-11-08

### Fix 2: Fowler2014

**File**: `references.bib`

**Changes**:
- @article → @online
- urldate: 2025-01-25 → 2025-11-28

### Fix 3: FoundryVTT2024

**File**: `references.bib`

**Changes**:
- @misc → @online
- urldate: 2024-10-07 → 2025-11-22

**Deferred**: Agent recommends replacing with specific article citations

### Fix 4: FoundryToken2024

**File**: `references.bib`

**Changes**:
- @misc → @online
- urldate: 2025-01-24 → 2025-11-28

**Deferred**:
- Consider merging with FoundryTokens2024
- LaTeX line 748 "industry standard" claim needs rewrite

---

## Deferred Actions

1. **FoundryVTT2024**: Replace broad KB citation with specific articles
2. **FoundryToken2024**: Merge with FoundryTokens2024, rewrite line 748
3. **Fowler2014**: Document Rule 5 exception (long article)
4. **ImmerDocs2024**: Verify claims about time-travel/undo-redo

---
