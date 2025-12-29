# Currently Claimed Sections

> **Lock File**: Check this before claiming a new section. Update IMMEDIATELY when you claim a section.

## Active Claims

| Section ID | Agent ID | Batch | Claimed At | Status |
|------------|----------|-------|------------|--------|
| (none) | - | - | - | - |

---

## How to Claim

1. Verify the section is not already listed above
2. Add your row IMMEDIATELY:

```markdown
| 01-1 | agent-YYYYMMDD-HHMM | batch-001 | 2025-12-29 14:30 | correcting |
```

3. Create your batch folder if it doesn't exist
4. Begin work

---

## Status Values

- `correcting` - Agent is actively working
- `reviewing` - Corrections complete, under review
- `blocked` - Agent encountered an issue

---

## Releasing a Claim

When finished:
1. Remove your row from this file
2. Add entry to `COMPLETED.md`
3. Update `QUEUE.md` statistics

---

> Last updated: 2025-12-29
