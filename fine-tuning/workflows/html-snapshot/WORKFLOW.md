# HTML Snapshot Workflow

## Overview

This workflow creates reliable HTML snapshots of all web-based sources in `references.bib` for long-term archival and verification. Snapshots are stored in `ephemeral-sources/` at the project root.

**Architecture**: Multiple orchestrators can run in parallel, each managing batches of 5 agents that use Playwright to capture and verify snapshots.

---

## Why HTML Snapshots?

1. **Link Rot Prevention**: Web sources may change or disappear; snapshots preserve the cited content
2. **Verification**: Snapshots allow reviewers to verify citations without internet access
3. **Reproducibility**: Ensures the thesis references remain accessible indefinitely
4. **Academic Integrity**: Provides evidence that sources existed at time of citation

---

## Directory Structure

```
bachelor-thesis/
├── ephemeral-sources/              # Snapshot storage (project root)
│   ├── {citation_key}/
│   │   ├── snapshot.html           # Full page HTML
│   │   ├── screenshot.png          # Visual capture (optional)
│   │   ├── metadata.json           # Capture metadata
│   │   └── content.md              # Extracted text content
│   └── ...
├── fine-tuning/workflows/html-snapshot/
│   ├── WORKFLOW.md                 # This document
│   ├── ORCHESTRATION.md            # Multi-orchestrator protocol
│   ├── START-HERE.md               # Quick start guide
│   ├── QUEUE.md                    # Sources to snapshot
│   ├── CLAIMED.md                  # Currently claimed sources
│   ├── COMPLETED.md                # Finished snapshots log
│   └── batches/
│       ├── batch-001/
│       │   ├── MANIFEST.md         # Batch contents and status
│       │   ├── RESULTS.md          # Snapshot results
│       │   └── reports/            # Individual agent reports
│       └── ...
```

---

## Agent Instructions

### Primary Tools

Agents MUST use these Playwright browser tools for capturing snapshots:

1. **`mcp__plugin_playwright_playwright__browser_navigate`**: Navigate to source URL
2. **`mcp__plugin_playwright_playwright__browser_snapshot`**: Capture accessibility tree (preferred for text content)
3. **`mcp__plugin_playwright_playwright__browser_take_screenshot`**: Visual capture
4. **`mcp__plugin_playwright_playwright__browser_wait_for`**: Wait for dynamic content to load
5. **`mcp__plugin_playwright_playwright__browser_evaluate`**: Extract full HTML with `document.documentElement.outerHTML`

### Fallback Tools

If Playwright fails (e.g., anti-bot protection):

1. **`WebFetch`**: Fetch page content directly
2. **`WebSearch`**: Find alternative/archived versions (archive.org, etc.)

### Agent Workflow

```
1. Navigate to URL
2. Wait for page to fully load (wait_for text or 3 seconds)
3. Capture accessibility snapshot (text content)
4. Take screenshot (visual proof)
5. Extract full HTML using browser_evaluate
6. Save all artifacts to ephemeral-sources/{key}/
7. Verify snapshot contains expected content
8. Create verification report
```

### Snapshot Requirements

Each snapshot folder MUST contain:

| File | Description | Required |
|------|-------------|----------|
| `snapshot.html` | Complete page HTML | Yes |
| `metadata.json` | Capture timestamp, URL, agent info | Yes |
| `content.md` | Extracted text content (from accessibility snapshot) | Yes |
| `screenshot.png` | Visual capture | Recommended |
| `verification.md` | Agent's verification notes | Yes |

### Metadata Format

```json
{
  "citation_key": "PixiPerf2024",
  "url": "https://pixijs.com/8.x/guides/production/performance-tips",
  "captured_at": "2025-12-29T14:30:00Z",
  "agent_id": "agent-batch001-1",
  "capture_method": "playwright",
  "http_status": 200,
  "page_title": "Performance Tips | PixiJS",
  "content_hash": "sha256:abc123...",
  "file_sizes": {
    "snapshot.html": 45678,
    "screenshot.png": 123456,
    "content.md": 8901
  }
}
```

---

## Verification Process

### What Agents Must Verify

1. **Page Loaded Successfully**: HTTP 200, no error pages
2. **Content is Present**: Main content area is populated (not just headers/footers)
3. **Matches Expected Topic**: Title/headings relate to the citation
4. **No Dynamic Blocking**: Not blocked by CAPTCHAs, paywalls, or geo-restrictions
5. **HTML is Complete**: Full document structure captured

### Verification Report Template

Create at: `batches/batch-XXX/reports/{citation_key}.md`

```markdown
---
citation_key: "SourceKey"
url: "https://example.com/page"
status: "success|partial|failed|blocked"
capture_method: "playwright|webfetch|archive"
---

# Snapshot Report: SourceKey

## Capture Summary
- **URL**: https://example.com/page
- **Captured At**: 2025-12-29 14:30:00
- **Method**: Playwright browser capture
- **HTTP Status**: 200

## Artifacts Created
- [x] snapshot.html (45 KB)
- [x] screenshot.png (123 KB)
- [x] content.md (8 KB)
- [x] metadata.json

## Verification Checklist
- [x] Page loaded without errors
- [x] Main content is visible
- [x] Content matches citation topic
- [ ] No anti-bot blocking (if applicable)

## Content Preview
[First 500 characters of extracted text]

## Issues (if any)
[Document any problems encountered]

## Fallback Actions (if primary failed)
[Document alternative approaches tried]
```

---

## Handling Special Cases

### Case 1: Anti-Bot Protection

If Playwright is blocked:
1. Try `WebFetch` as fallback
2. Search for archive.org snapshot
3. Document in report and flag for manual review

### Case 2: Dynamic/JavaScript-Heavy Pages

1. Use `browser_wait_for` with appropriate text/timeout
2. Use `browser_evaluate` to extract after JavaScript execution
3. Take screenshot as proof of rendered content

### Case 3: PDF Links

1. Use `WebFetch` to download
2. Store as `{key}.pdf` instead of HTML
3. Document in metadata that it's a PDF

### Case 4: GitHub Pages

GitHub works well with Playwright. For code-heavy pages:
1. Capture the full page
2. Extract README content specifically if present

### Case 5: Paywalled Content

1. Document that content is paywalled
2. Try to capture any freely visible preview/abstract
3. Flag for potential source replacement

### Case 6: 404/Gone Pages

1. Search archive.org for cached version
2. If found, use archived version and note in metadata
3. If not found, flag source as "needs replacement"

---

## Quality Thresholds

| Metric | Minimum | Target |
|--------|---------|--------|
| Snapshot size | >5 KB | >10 KB |
| Content length | >500 chars | >2000 chars |
| Screenshot resolution | 1280x720 | 1920x1080 |
| Success rate per batch | 80% | 95% |

---

## Batch Processing

- **Sources per batch**: 5 (parallel agents)
- **Expected time per source**: 30-60 seconds
- **Batch completion time**: 2-3 minutes
- **Total sources**: ~81 with URLs
- **Estimated batches**: 17

---

## Error Handling

### Retry Logic

1. First failure: Wait 5 seconds, retry once
2. Second failure: Try alternative method (WebFetch/archive)
3. Third failure: Mark as "failed" and flag for manual review

### Common Errors

| Error | Solution |
|-------|----------|
| Timeout | Increase wait time, use wait_for |
| 403 Forbidden | Try WebFetch, check archive.org |
| 404 Not Found | Search archive.org, flag for replacement |
| CAPTCHA | Flag for manual capture |
| SSL Error | Try http:// if https:// fails |
| Encoding Issues | Force UTF-8 in metadata |

---

## File Naming Conventions

- Snapshot folder: `ephemeral-sources/{citation_key}/` (exact key from bib)
- Files use lowercase with hyphens
- No special characters in filenames

---

## Post-Batch Actions

After each batch:
1. Verify all snapshots were created
2. Check file sizes are reasonable
3. Update COMPLETED.md
4. Update QUEUE.md statistics
5. Move to next batch

---

> Last updated: 2025-12-29
