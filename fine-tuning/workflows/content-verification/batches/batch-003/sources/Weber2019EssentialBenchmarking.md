# Content Verification: Weber2019EssentialBenchmarking

## Source Information
- **Title**: Essential guidelines for computational method benchmarking
- **Authors**: Weber, Lukas M.; Saelens, Wouter; Cannoodt, Robrecht; Soneson, Charlotte; Hapfelmeier, Alexander; Gardner, Paul P.; Boulesteix, Anne-Laure; Saeys, Yvan; Robinson, Mark D.
- **Journal**: Genome Biology
- **Volume/Issue**: 20, Article 125
- **Pages**: 1-12
- **Year**: 2019
- **DOI**: 10.1186/s13059-019-1738-8
- **Type**: Peer-reviewed article (12 pages)
- **Access**: PMC6584985

## Claims Analysis

### Citation 1: Line 12 in `04-Evaluation-Ergebnisse.tex`

**Context (German)**:
> "Die Reproduzierbarkeit der Performance-Messungen erfordert eine präzise Dokumentation der Testumgebung\autocite{Weber2019EssentialBenchmarking}."

**Translation**: "The reproducibility of performance measurements requires precise documentation of the test environment."

**Verification Status**: SUPPORTED

**Source Evidence**:
The Weber2019 paper explicitly emphasizes reproducibility as foundational to benchmarking quality:
- "Parameter values (including random seeds) and software versions should be clearly reported to ensure complete reproducibility" (Reproducible Research Best Practices section)
- The paper recommends using tools like Docker and Singularity to "encapsulate a software environment for each method, preserving the package version as well as dependency packages and the operating system"
- Workflow tools (SummarizedBenchmark, workflowr, Snakemake) are highlighted for "setting up benchmarks and creating a reproducible record, including software environments, package versions, and parameter values"

**Assessment**: The claim accurately reflects the paper's emphasis on documenting test environments for reproducibility. The thesis appropriately uses this source to justify detailed hardware/software specifications.

**Page Number Recommendation**: Add page reference - the Reproducible Research section is discussed on pages 5-6 of the article.

---

### Citation 2: Line 72 in `04-Evaluation-Ergebnisse.tex`

**Context (German)**:
> "Das System führt für jedes Szenario 500 Iterationen durch -- eine Stichprobengröße, die deutlich über dem für statistische Signifikanz erforderlichen Minimum von $n \geq 30$ liegt\autocite{Weber2019EssentialBenchmarking}."

**Translation**: "The system performs 500 iterations for each scenario -- a sample size significantly above the minimum of n ≥ 30 required for statistical significance."

**Verification Status**: NOT SUPPORTED

**Source Evidence**:
The Weber2019 paper does **not** specify n≥30 as a sample size requirement for statistical significance. The paper's guidance on iterations and sample sizes includes:
- "for non-deterministic methods...variability in performance when using different random seeds or subsampled data should be characterized"
- Methods should be run "multiple times using different inputs or subsampled data" for stability assessment
- The paper emphasizes "diversity of evaluations" (range of metrics and datasets) rather than specifying minimum iteration counts

**Problem**: The n≥30 rule is a general statistical principle based on the Central Limit Theorem (CLT), commonly cited in statistics literature, but it is **not a recommendation from this specific paper**. This is a misattribution.

**Assessment**: The claim about n≥30 requires a different source. The Weber2019 paper focuses on methodology diversity and reproducibility, not specific sample size thresholds.

---

## Required Changes

| File | Line | Current | Recommended |
|------|------|---------|-------------|
| `04-Evaluation-Ergebnisse.tex` | 12 | `\autocite{Weber2019EssentialBenchmarking}` | `\autocite[S. 5-6]{Weber2019EssentialBenchmarking}` |
| `04-Evaluation-Ergebnisse.tex` | 72 | `\autocite{Weber2019EssentialBenchmarking}` | Replace with appropriate statistics source (e.g., Montgomery2017DesignExperiments or add a general statistics reference for CLT/n≥30 rule) |

## Recommended Actions

### Action 1: Add Page Number to Citation 1
The first citation (Line 12) is correctly used but should include page numbers since this is a 12-page peer-reviewed article.

**Suggested change**:
```latex
% Before
\autocite{Weber2019EssentialBenchmarking}

% After
\autocite[S. 5-6]{Weber2019EssentialBenchmarking}
```

### Action 2: Replace or Correct Citation 2
The n≥30 claim needs a proper source. Options:

**Option A**: Replace with Montgomery2017DesignExperiments (already in bibliography)
```latex
% The Montgomery reference on Design of Experiments would be more appropriate
\autocite[S. XX]{Montgomery2017DesignExperiments}
```

**Option B**: Add a new reference for the CLT-based sample size rule, such as:
```bibtex
@book{Moore2012Statistics,
    title = {{Introduction to the Practice of Statistics}},
    author = {Moore, David S. and McCabe, George P. and Craig, Bruce A.},
    year = {2012},
    edition = {7},
    publisher = {W.H. Freeman},
    isbn = {9781429240321},
    note = {Standard statistics textbook covering Central Limit Theorem and sample size requirements}
}
```

**Option C**: Rephrase to avoid the specific n≥30 claim
```latex
% Reframe to emphasize high iteration count without specific threshold claim
Das System führt für jedes Szenario 500 Iterationen durch -- eine hohe Stichprobengröße,
die robuste statistische Auswertungen ermöglicht\autocite{Montgomery2017DesignExperiments}.
```

## Summary

- **Page numbers needed**: YES (article is 12 pages)
- **Total citations found**: 2
- **Citations verified as accurate**: 1 of 2 (50%)
- **Citations requiring correction**: 1 (Line 72 - misattribution of n≥30 rule)
- **Page numbers to add**: 1 citation (Line 12)

### Key Findings

1. **Citation 1 (Line 12)**: Correctly used to support reproducibility/documentation claims. Recommend adding page reference [S. 5-6].

2. **Citation 2 (Line 72)**: **MISATTRIBUTION** - The n≥30 statistical significance threshold is not from Weber2019. This is a general statistics principle that should be cited from an appropriate statistics textbook or methodology reference.

### Verification Notes

The Weber2019 paper is a high-quality methodological guide for computational benchmarking in bioinformatics. Its core recommendations include:
- Clear purpose and scope definition
- Neutral benchmark design (no method favored through parameter tuning)
- Multiple evaluation metrics
- Diversity of datasets
- Complete reproducibility documentation
- Blinding strategies to avoid bias

The paper does **not** provide specific sample size thresholds for benchmarks, making the n≥30 citation inappropriate.
