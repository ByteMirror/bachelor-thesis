# Batch 001 - Fixes Applied

**Status**: ✅ ALL FIXES APPLIED

---

## BibTeX Fixes (references.bib)

### 1. PixiPerf2024
```diff
- @misc{PixiPerf2024,
+ @online{PixiPerf2024,
      ...
-     urldate = {2025-01-24}
+     urldate = {2025-11-18}
  }
```

### 2. DnDBasicRules2014
```diff
- @misc{DnDBasicRules2014,
+ @online{DnDBasicRules2014,
      ...
-     urldate = {2025-01-24}
+     urldate = {2025-11-18}
  }
```

### 3. Nielsen1993ResponseTimes
```diff
- @article{Nielsen1993ResponseTimes,
+ @online{Nielsen1993ResponseTimes,
      ...
-     journal = {Nielsen Norman Group},
+     organization = {Nielsen Norman Group},
-     urldate = {2025-01-24}
+     urldate = {2025-11-18}
  }
```

### 4. Gamma1994 (REPLACED)
```diff
- @book{Gamma1994,
-     title = {{Design Patterns: Elements of Reusable Object-Oriented Software}},
-     author = {Gamma, Erich and Helm, Richard and Johnson, Ralph and Vlissides, John},
-     publisher = {Addison-Wesley},
-     year = {1994},
-     isbn = {0-201-63361-2},
-     note = {Singleton Pattern, Observer Pattern, Gang of Four}
- }

+ @online{RefactoringGuruSingleton,
+     author = {Shvets, Alexander},
+     title = {{Singleton Design Pattern}},
+     url = {https://refactoring.guru/design-patterns/singleton},
+     urldate = {2025-11-23},
+     year = {2024},
+     note = {Comprehensive guide to the Singleton design pattern}
+ }
+
+ @online{RefactoringGuruObserver,
+     author = {Shvets, Alexander},
+     title = {{Observer Design Pattern}},
+     url = {https://refactoring.guru/design-patterns/observer},
+     urldate = {2025-12-02},
+     year = {2024},
+     note = {Comprehensive guide to the Observer design pattern}
+ }
```

### 5. Gamma1994DesignPatterns (REMOVED - Duplicate)
```diff
- @book{Gamma1994DesignPatterns,
-     title = {{Design Patterns: Elements of Reusable Object-Oriented Software}},
-     year = {1994},
-     author = {Gamma, Erich and Helm, Richard and Johnson, Ralph and Vlissides, John},
-     publisher = {Addison-Wesley},
-     isbn = {9780201633610}
- }
```

---

## LaTeX Citation Fixes

### 03-Konzeption-Implementierung.tex

**Line 239**: Observer Pattern
```diff
- Dieses Pattern entspricht dem Observer Pattern aus Gamma et al.\autocite{Gamma1994}
+ Dieses Pattern entspricht dem Observer Pattern\autocite{RefactoringGuruObserver}
```

**Line 241**: Singleton Pattern
```diff
- Gamma et al. definieren das Singleton Pattern als Entwurfsmuster...\autocite{Gamma1994}
+ Das Singleton Pattern ist ein Entwurfsmuster...\autocite{RefactoringGuruSingleton}
```

**Line 405**: Singleton Pattern
```diff
- Der \texttt{AssetService} implementiert das Singleton Pattern\autocite{Gamma1994}
+ Der \texttt{AssetService} implementiert das Singleton Pattern\autocite{RefactoringGuruSingleton}
```

**Line 525**: Observer Pattern
```diff
- Dieses Event-Driven Pattern entspricht dem Observer Pattern\autocite{Gamma1994}
+ Dieses Event-Driven Pattern entspricht dem Observer Pattern\autocite{RefactoringGuruObserver}
```

### 02-Theoretische-Grundlagen.tex

**Line 73**: Removed redundant citation
```diff
- ...die über wohldefinierte Schnittstellen kommunizieren \autocite{Gamma1994DesignPatterns}. Das \textit{Microkernel Pattern}
+ ...die über wohldefinierte Schnittstellen kommunizieren. Das \textit{Microkernel Pattern}
```
(Buschmann1996PatternOriented in next sentence covers this concept)

---

## Verification

- [x] LaTeX compiles without errors
- [x] No undefined citations
- [x] All Gamma1994 references replaced
- [x] All Gamma1994DesignPatterns references removed
