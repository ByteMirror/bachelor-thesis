# HTML Snapshot Workflow - Quick Start

## Purpose

Capture and archive HTML snapshots of all web sources in `references.bib` to prevent link rot and ensure citation verifiability.

---

## Quick Start (For Orchestrators)

### 1. Read the Documentation

- `WORKFLOW.md` - Agent instructions and snapshot requirements
- `ORCHESTRATION.md` - Multi-orchestrator protocol

### 2. Claim Sources

```markdown
1. Check QUEUE.md for available sources
2. Check CLAIMED.md for any conflicts
3. Claim 5 sources (one batch)
4. Update CLAIMED.md immediately
```

### 3. Spawn Agents

```markdown
1. Create batch folder: batches/batch-XXX/
2. Create MANIFEST.md
3. Spawn 5 agents IN PARALLEL (single message!)
4. Each agent captures one source to ephemeral-sources/{key}/
```

### 4. Complete Batch

```markdown
1. Wait for all agents
2. Review reports in batches/batch-XXX/reports/
3. Verify snapshots in ephemeral-sources/
4. Update COMPLETED.md
5. Remove from CLAIMED.md
```

---

## Key Files

| File | Purpose |
|------|---------|
| `QUEUE.md` | Sources waiting to be captured |
| `CLAIMED.md` | Currently being processed |
| `COMPLETED.md` | Successfully captured |
| `ephemeral-sources/` | Actual snapshot files (project root) |

---

## Agent Tools (Playwright MCP)

```
browser_navigate    → Go to URL
browser_wait_for    → Wait for content
browser_snapshot    → Get text content
browser_take_screenshot → Visual capture
browser_evaluate    → Extract HTML
```

---

## Snapshot Output Structure

```
ephemeral-sources/{citation_key}/
├── snapshot.html      # Full page HTML
├── screenshot.png     # Visual capture
├── content.md         # Extracted text
├── metadata.json      # Capture info
└── verification.md    # Agent notes
```

---

## Statistics

- **Total Sources with URLs**: 81
- **Batch Size**: 5 sources
- **Estimated Batches**: 17
- **Est. Time per Batch**: 2-3 minutes

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page blocked | Try WebFetch or archive.org |
| Timeout | Increase wait time |
| Empty content | Check for JavaScript rendering |
| 404 errors | Search archive.org |

---

## Command to Start

```
As orchestrator, run the HTML snapshot workflow:
1. Generate ID: snap-{timestamp}
2. Claim 5 sources from QUEUE.md
3. Spawn 5 parallel agents
4. Wait and verify results
5. Update tracking files
```

---

> Ready to start? Check QUEUE.md for available sources!
