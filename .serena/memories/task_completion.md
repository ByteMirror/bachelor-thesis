# Task Completion Checklist

## After Writing/Editing LaTeX

### 1. Build and Verify
```bash
latexmk
```
Or full build:
```bash
pdflatex Arbeit.tex && biber Arbeit && pdflatex Arbeit.tex && pdflatex Arbeit.tex
```

### 2. Check for Errors
- Review LaTeX log for warnings/errors
- Verify PDF renders correctly
- Check citations are resolved (no "??" marks)

### 3. Citation Verification
- Every claim has `\autocite{}`
- BibTeX entries exist in `references.bib`
- Page numbers included where applicable

## Before Committing

### 1. Stage appropriate files
```bash
git add latex/ references.bib
```

### 2. Verify changes
```bash
git diff --staged
```

### 3. Commit with convention
```bash
git commit -m "feat(thesis): description"
```

## Quality Checks
- [ ] Text is in German (except technical terms)
- [ ] No subjective claims without sources
- [ ] Metrics are specific (not "fast" but "60 FPS")
- [ ] Code references use `\texttt{file.ts:line}` format
- [ ] No orphaned citations in references.bib
