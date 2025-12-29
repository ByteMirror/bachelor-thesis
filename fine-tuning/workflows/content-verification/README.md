# Content Verification Workflow

**Phase 2 of Source Validation**

## Purpose

Phase 1 (source-validation) fixed BibTeX syntax issues but did **NOT** verify content.
This phase ensures:

1. **Content Verification**: Each claim in the thesis is actually supported by the cited source
2. **Page Numbers**: For sources >6 pages, add `\autocite[S. X]{Key}` with specific page numbers
3. **Accuracy**: The information in the source matches what's claimed in the thesis

## Scope

All 60 validated sources need content verification:
- 18 "valid" sources (BibTeX correct, content unverified)
- 11 "replaced" sources (new citations need verification)
- 31 "partial" sources (BibTeX fixed, content unverified)

## Agent Requirements

Each verification agent MUST:

1. **Fetch the source** using WebFetch tool
2. **Read the actual content** of the source
3. **For each citation location**:
   - Find the exact claim made in the thesis
   - Locate the supporting information in the source
   - Verify the claim is accurate
   - Extract the specific page/section where info appears
4. **Report findings**:
   - VERIFIED: Claim supported + page number
   - MODIFIED: Claim needs rewording + suggested fix
   - UNSUPPORTED: Claim not found in source

## Page Number Rule

If source is >6 pages (or equivalent for web content with sections):
- MUST add page number: `\autocite[S. 42]{Key}`
- For web sources: use section anchors or "Section X"

## Output Format

Each agent produces a report with:
```markdown
## Citation: {Key}

### Source Access
- URL: {url}
- Accessible: YES/NO
- Content Length: ~X pages/sections

### Claim Verification

| Location | Claim | Status | Evidence | Page/Section |
|----------|-------|--------|----------|--------------|
| file:line | "claim text" | VERIFIED/MODIFIED/UNSUPPORTED | "quote from source" | S. X |

### Required LaTeX Changes
- `file:line`: `\autocite{Key}` → `\autocite[S. X]{Key}`

### Issues Found
- (any mismatches, inaccuracies, etc.)
```

## Workflow

1. Orchestrator claims sources from QUEUE.md
2. Spawns agents with WebFetch capability
3. Agents fetch sources and verify content
4. Agents produce verification reports
5. Orchestrator applies LaTeX changes (page numbers)
6. Updates tracking files

## Files

- `QUEUE.md` - Sources awaiting verification
- `CLAIMED.md` - Currently claimed sources
- `COMPLETED.md` - Verified sources log
- `batches/` - Batch folders with reports
