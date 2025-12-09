# Bachelor Thesis: Atlas VTT - Quick Reference

**Titel**: Performance-Optimierung und Benchmarking eines VTT-Plugins für Obsidian
**Typ**: Bachelorarbeit (50 Seiten) | **Sprache**: Deutsch (außer IT-Fachbegriffe)
**Stack**: PIXI.js v8, Electron, TypeScript

**Forschungsfrage**: "Welche Herausforderungen ergeben sich bei der Umsetzung eines VTT-Plugins in Obsidian.md, und wie beeinflussen diese Performance, Wartbarkeit und Entwicklungsaufwand?"

---

## 📂 Struktur

```
bachelor-thesis/
├── atlas-vtt/              # Implementierung
├── latex/                  # LaTeX-Kapitel
├── resources/              # Planungsdokumente
│   ├── XX-kapitel/*.md    # Planungen pro Abschnitt
│   ├── WORKFLOW-OVERVIEW.md
│   ├── 03-konzeption-implementierung/
│   │   ├── INSIGHTS-SUMMARY.md         # Wissenschaftliche Herangehensweise
│   │   ├── DOCUMENTATION_INDEX.md      # 14 Atlas VTT Docs
│   │   └── 3.3.X-*.md                  # 4 Feature-Planungen
│   └── performance-evaluation-plan.md
├── Arbeit.tex              # Hauptdokument
└── references.bib          # Literatur
```

---

## 📝 3-Phasen-Workflow

### 1. Planung → `resources/XX-kapitel/Y.Z-unterkapitel.md`
- Kontext & Kernbotschaft | Inhaltliche Struktur | Literatur (mit exakten Zitaten + Keys) | Verbindungen | TODOs

### 2. Schreiben → `latex/XX-Kapitel.tex`
- Deutsch (außer Fachbegriffe) | `\autocite{key}` für ALLE Zitate | BibTeX parallel | Code: `datei.ts:zeile`

### 3. Review
- Plan vs. Text | Zitate verifizieren | Roter Faden

---

## 🎓 Wissenschaftliche Herangehensweise (Kap. 3)

**Prinzip**: Implementierung beschreiben + jede Entscheidung wissenschaftlich begründen

**4 Ansätze**:
1. **Evaluation**: Alternativen → Benchmarks → Wahl (Bsp: Konva 23 FPS vs PIXI 60 FPS)
2. **Research**: Problem → Research → Best Practices → Implementierung (Bsp: 100+ Tokens → PIXI Guides → Culling/Batching)
3. **Problem-Lösung**: Challenge → Trade-offs → Entscheidung (Bsp: Single-Bundle → Feature Toggle)
4. **Refactoring**: Problem-Code → Refactoring → Messbar (Bsp: 3,840→1,490 LoC, 61%)

**Struktur**: Problem → Research/Evaluation → Entscheidung (WARUM + Zahlen!) → Implementierung → Messbare Ergebnisse

**Die 4 Features (Kap. 3.3)**:
- 3.3.1 PIXI.js (Framework-Vergleich)
- 3.3.2 Grid System (1000→1 Draw Calls)
- 3.3.3 Token Management (100+ @ 60 FPS)
- 3.3.4 Asset Manager (Async I/O, 0ms UI-Freeze)

**Checkliste**: Problem definiert | ≥2 Alternativen | Daten/Benchmarks | WARUM? | Messbar (LoC/FPS/MB) | 2-3 Quellen | → Kap. 4

**❌ NICHT**: Feature-Beschreibung ohne Begründung | Subjektiv | Code ohne Kontext
**✅ TUN**: Daten-gestützt ("60 FPS [Quelle]") | Research dokumentieren | Messbar ("+40% FPS")

---

## 📏 Seitenvorgaben (50 Seiten)

| Kapitel | Seiten | Detail |
|---------|--------|--------|
| 1 Einleitung | 6 | |
| 2 Grundlagen | 10 | |
| 3 Implementierung | 14 | 5 Seiten für 3.3 (4 Features) |
| 4 Evaluation | 14 | |
| 5 Fazit | 6 | |

**Hinweis**: Präzise, kompakt, keine Füllwörter, Code nur wenn essentiell

---

## 📚 LaTeX-Konventionen

**Zitate**:
```latex
\autocite{Key}                    % Standard
\autocite[S. 42]{Key}            % Mit Seite
\autocite{Key1,Key2,Key3}        % Mehrere
```

**Code-Referenzen**: `\texttt{TokenRenderer.ts:845}`

**Zitat-Speicherung** (in Planungsdatei):
```markdown
### [Key]
**Zitat**: "Exakter Satz..."
**Seite**: S. 42
**Verwendung**: Zweck
```

---

## 🔧 Performance-Metriken

**Ziele**: FPS >30 | Latenz <100ms | Heap-Size/GPU-Memory optimiert

**Szenarien**: Leere Map (Baseline) | Standard (20-30 Token) | Stress (100+) | Interaktion (Drag&Drop)

---

## 🚀 Kommandos

**LaTeX**: `pdflatex Arbeit.tex && biber Arbeit && pdflatex Arbeit.tex && pdflatex Arbeit.tex`

**Git**: `git checkout -b kapitel/XX-name` | `git add latex/ references.bib` | `git commit -m "feat(thesis): ..."`

---

## 📚 Detaillierte Docs (siehe für Details)

1. `resources/WORKFLOW-OVERVIEW.md` - Vollständiger Workflow
2. `resources/03-konzeption-implementierung/INSIGHTS-SUMMARY.md` - 10 Kern-Erkenntnisse
3. `resources/03-konzeption-implementierung/DOCUMENTATION_INDEX.md` - 14 Atlas VTT Docs
4. `resources/performance-evaluation-plan.md` - 5 Kern-Features
5. `resources/03-konzeption-implementierung/README.md` - 4 Feature-Planungen

---

## 🎯 Quick Reference für AI-Agents

**Code-Analyse**: Glob/Grep | `datei.ts:zeile` Format | PIXI.js v8 Best Practices prüfen

**Thesis-Schreiben**: Deutsch | `\autocite{}` IMMER | BibTeX mitliefern | Code aus realem Projekt

**Performance**: Messbare Metriken | Reproduzierbar | Statistisch signifikant | Visualisierungen

**Fehler vermeiden**: ❌ Englisch im Text | ❌ Fehlende Quellen | ❌ Code ohne Kontext | ❌ Unbegründet

**Best Practices**: ✅ Roter Faden | ✅ Wissenschaftlich präzise | ✅ Nachvollziehbar | ✅ Kritisch reflektiert
