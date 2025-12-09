# 🎯 Bachelor Thesis - Workflow Overview

## Neue Architektur: Kapitel-basierte Planung

### Struktur
Jedes Kapitel und Unterkapitel hat eine eigene Planungsdatei in `resources/`:

```
resources/
├── 01-einleitung/
│   ├── 1.1-hinfuehrung-motivation.md ✅
│   ├── 1.2-problemstellung.md ✅
│   ├── 1.3-zielsetzung-forschungsfrage.md ✅
│   └── 1.4-aufbau-der-arbeit.md ✅
├── 02-theoretische-grundlagen/
│   ├── 2.1.1-obsidian-als-markdown-editor.md ✅
│   ├── 2.1.2-electron-framework.md ✅
│   ├── 2.2.1-virtual-tabletop-tools.md ✅
│   ├── 2.2.2-plugin-architekturen.md 📝
│   ├── 2.3.1-performance-metriken.md 📝
│   ├── 2.3.2-optimierungsstrategien.md 📝
│   └── 2.4-stand-der-forschung.md 📝
├── 03-konzeption-implementierung/
│   ├── 3.1.1-funktionale-anforderungen.md 📝
│   ├── 3.1.2-nicht-funktionale-anforderungen.md 📝
│   ├── 3.2.1-architekturentwurf.md 📝
│   ├── 3.2.2-datenmodell.md 📝
│   ├── 3.3.1-rendering-engine-pixi.md 📝 [UPDATED: Framework-Vergleich]
│   ├── 3.3.2-grid-system-optimierung.md 📝 [UPDATED: Draw Call Optimization]
│   ├── 3.3.3-token-management-performance.md 📝 [UPDATED: Research-basiert]
│   ├── 3.3.4-asset-manager-io-optimierung.md 📝 [NEW]
│   ├── 3.3-rendering-framework-evaluation.md ✅ [Research-Dokument]
│   ├── DOCUMENTATION_INDEX.md ✅ [14 Dokumentationen indexiert]
│   ├── 3.4-test-framework.md 📝
│   └── 3.5-messverfahren.md 📝
├── 04-evaluation-ergebnisse/
│   ├── 4.1-durchfuehrung-messungen.md 📝
│   ├── 4.2-datenauswertung.md 📝
│   ├── 4.3-optimierungsvergleich.md 📝
│   └── 4.4-diskussion.md 📝
└── 05-fazit-ausblick/
    ├── 5.1-zusammenfassung.md 📝
    ├── 5.2-beantwortung-forschungsfrage.md 📝
    ├── 5.3-limitationen.md 📝
    └── 5.4-ausblick.md 📝
```

✅ = Detaillierte Planung erstellt
📝 = Platzhalter erstellt (muss noch ausgearbeitet werden)

## Workflow für jedes Unterkapitel

### 1️⃣ Planungsphase (in resources/)
**Datei**: `resources/XX-kapitel/Y.Z-unterkapitel.md`

**Inhalt der Planungsdatei:**
- **Kontext und Planung**: Kernthema und Ziel
- **Inhaltliche Struktur**: Geplante Absätze und Argumente
- **Literatur und Quellen**: Zu recherchierende Quellen
- **Code-Beispiele**: Relevante Stellen aus atlas-vtt/
- **Schreibnotizen**: Stil, Fokus, zu vermeiden
- **Verbindungen**: Links zu anderen Kapiteln
- **TODO**: Konkrete Aufgaben beim Schreiben

### 2️⃣ Schreibphase (in latex/)
**Basierend auf**: Planungsdokument aus resources/
**Output**: LaTeX-Text in `latex/XX-Kapitel.tex`

**Vorgehen:**
1. Planungsdokument öffnen und durcharbeiten
2. Research gemäß Literaturliste durchführen
3. LaTeX-Text verfassen mit `\autocite{}`
4. BibTeX-Einträge parallel in `references.bib` erstellen
5. Code-Beispiele aus `atlas-vtt/` mit Zeilen-Referenzen

### 3️⃣ Review-Phase
- Konsistenz zwischen Plan und Text prüfen
- Alle TODOs abgearbeitet?
- Zitate korrekt?
- Roter Faden vorhanden?
- Deutsche Sprache (außer Fachbegriffe)?

## Beispiel-Workflow: Kapitel 2.1.1 schreiben

### Schritt 1: Planung reviewen
```bash
# Planungsdokument öffnen
cat resources/02-theoretische-grundlagen/2.1.1-obsidian-als-markdown-editor.md
```

### Schritt 2: Research
- Obsidian API Docs durchgehen
- Performance-Metriken sammeln
- Code-Beispiele aus atlas-vtt/ identifizieren

### Schritt 3: LaTeX schreiben
```latex
\subsection{Obsidian als Markdown-Editor}

Obsidian ist ein leistungsfähiges Knowledge-Management-Tool, das auf
lokalen Markdown-Dateien basiert \autocite{ObsidianDocs2024}. Die
Plugin-Architektur ermöglicht...
```

### Schritt 4: BibTeX ergänzen
```bibtex
@online{ObsidianDocs2024,
    author = {{Obsidian}},
    title = {{Obsidian API Documentation}},
    year = {2024},
    url = {https://docs.obsidian.md},
    urldate = {2024-09-26}
}
```

## Tipps für AI Agents

### Beim Planen (resources/)
- Konkreten Kontext schaffen
- Klare Struktur vorgeben
- Spezifische Literatur identifizieren
- Code-Stellen markieren
- Verbindungen dokumentieren

### Beim Schreiben (latex/)
- IMMER auf Deutsch (außer Fachbegriffe)
- IMMER `\autocite{}` verwenden
- IMMER BibTeX-Block mitliefern
- Code-Referenzen: `datei.ts:123` Format
- Planungsdokument als Leitfaden

### Beim Reviewen
- Plan vs. Text abgleichen
- Zitate prüfen
- Konsistenz sicherstellen
- Fachbegriffe einheitlich

---

## 🎓 Wissenschaftliche Herangehensweise für Kapitel 3 (Implementierung)

### ⚠️ WICHTIG: Balance zwischen Programmierung und Wissenschaft

**Kernprinzip**: Kapitel 3 beschreibt die **Implementierung**, aber jede Entscheidung muss **wissenschaftlich begründet** sein.

#### ✅ Das ist RICHTIG:
```
"Wir haben PIXI.js gewählt, weil Benchmarks zeigten, dass es
2-3x schneller ist als Konva.js (60 FPS vs 23 FPS bei 8k Objekten).
Zusätzlich bundelt Obsidian bereits PIXI v7, weshalb wir v8 verwenden
mussten um Konflikte zu vermeiden."
```

#### ❌ Das ist FALSCH:
```
"Wir haben PIXI.js gewählt weil es gut ist."
(Keine Begründung, keine Daten, nicht wissenschaftlich)
```

---

### Wissenschaftliche Ansätze für Implementierungs-Kapitel

#### 1. **Evaluation-basierte Entscheidungen**
**Pattern**: Alternativen vergleichen → Daten sammeln → Begründete Wahl

**Beispiel**:
- Framework-Vergleich: Konva.js vs Fabric.js vs PIXI.js
- Benchmark-Daten: FPS, Bundle Size, GPU-Nutzung
- Entscheidung: PIXI.js basierend auf Performance-Daten

**Quellen**:
- Externe Benchmarks (z.B. slaylines.io)
- Industry Standards (Foundry VTT nutzt PIXI.js)

---

#### 2. **Research-basierte Implementierung**
**Pattern**: Problem identifizieren → Research → Best Practice finden → Implementieren

**Beispiel**:
- **Problem**: "Wie können 100+ Tokens gleichzeitig angezeigt werden ohne Performance-Einbußen?"
- **Research**: PIXI.js Performance Guide, Foundry VTT Docs, VTT Best Practices
- **Erkenntnisse gefunden**:
  - Culling (`cullable = true`) für off-screen Objekte
  - Batch Rendering (bis zu 16 Textures pro Draw Call)
  - Power-of-Two Textures für GPU-Optimierung
  - Object Pooling zur Vermeidung von Memory-Churn
- **Implementierung**: Diese Techniken anwenden
- **Messung**: In Kapitel 4 validieren

**Quellen**:
- PixiJS Official Performance Guide
- Foundry VTT Media Optimization Guide
- Eigene Code-Dokumentation (z.B. REFACTORING_PLAN.md)

---

#### 3. **Problem-Lösung-Begründung**
**Pattern**: Technical Challenge → Lösungsansätze → Trade-offs → Begründete Entscheidung

**Beispiel**:
- **Problem**: Obsidian-Plugins müssen alles in main.js bündeln (kein Code-Splitting)
- **Trade-off**: Feature-Umfang vs Bundle Size vs Performance
- **Lösung**: Feature Toggle System für Performance-Evaluation
- **Begründung**: Ermöglicht isolierte Messung jedes Features

**Messbar**: Bundle Size pro Feature, Startup Time Impact

---

#### 4. **Refactoring mit messbaren Verbesserungen**
**Pattern**: Problem-Code → Refactoring → Messbare Verbesserung

**Beispiel**:
- **Ausgangslage**: TokenRenderer.ts (3,840 Zeilen) → Wartbarkeits-Problem
- **Refactoring**: Extraktion zu 6 Modulen
- **Ergebnis**:
  - 61% Code-Reduktion (3,840 → 1,490 LoC)
  - 15 Bugs gefunden und gefixt
  - Performance bleibt gleich (wird in Kap. 4 validiert)

**Wissenschaftlich**: Vorher/Nachher-Vergleich mit Metriken

---

### Struktur für Implementierungs-Abschnitte

Jeder Abschnitt in Kapitel 3.3 folgt diesem Pattern:

```markdown
## 3.3.X Feature-Name: Wissenschaftlicher Fokus

### 1. Problem/Kontext
Was musste implementiert werden? Welche Herausforderungen gab es?

### 2. Research/Evaluation
- Welche Alternativen wurden betrachtet?
- Welche Daten/Benchmarks gibt es?
- Was sagen Best Practices/Industry Standards?

### 3. Entscheidung
- Was wurde gewählt und WARUM?
- Mit konkreten Zahlen/Daten begründet

### 4. Implementierung
- Wie wurde es konkret umgesetzt?
- Code-Beispiele (mit Referenzen)
- Architektur-Entscheidungen

### 5. Messbare Ergebnisse/Trade-offs
- Was wurde erreicht? (mit Zahlen!)
- Welche Trade-offs gab es?
- Verweis auf Kapitel 4 für Validation
```

---

### Dokumentations-Quellen für wissenschaftliche Begründungen

#### Interne Quellen (atlas-vtt/)
- `tech_stack_and_dependencies.md` - Technologie-Entscheidungen
- `grid-system-modernization-summary.md` - Optimierungs-Beispiel mit Zahlen
- `REFACTORING_PLAN.md` - Refactoring mit messbaren Verbesserungen
- `token-statblock-linking-system.md` - Architektur-Entscheidungen
- `project_purpose_and_architecture.md` - High-Level Design

#### Externe Quellen
- **Benchmarks**: Canvas Engines Comparison (slaylines.io)
- **Best Practices**: PixiJS Performance Guide, Foundry VTT Docs
- **Industry Standards**: Foundry VTT als Reference Implementation

#### Research-Quellen
- WebSearch für aktuelle Best Practices
- Framework-Dokumentationen (PIXI.js, React, Zustand)
- Performance-Optimization Papers/Guides

---

### Was NICHT tun (Anti-Patterns)

#### ❌ Reine Feature-Beschreibung
```
"Der Statblock Builder hat Drag & Drop und unterstützt D&D 5e."
```
**Problem**: Keine wissenschaftliche Begründung, nur Deskription

#### ❌ Subjektive Aussagen ohne Beleg
```
"PIXI.js ist das beste Framework für VTTs."
```
**Problem**: Keine Daten, keine Vergleiche, nicht wissenschaftlich

#### ❌ Code ohne Kontext
```latex
\begin{lstlisting}
const sprite = new Sprite(texture);
\end{lstlisting}
```
**Problem**: Kein wissenschaftlicher Mehrwert, nur Code-Dokumentation

---

### Was TUN (Best Practices)

#### ✅ Daten-gestützte Entscheidungen
```
"Nach Evaluation von Konva.js (23 FPS) und PIXI.js (60 FPS)
bei 8k Objekten [Quelle: Canvas Engines Comparison] wurde
PIXI.js wegen der 2-3x besseren Performance gewählt."
```

#### ✅ Research-basierte Implementierung
```
"Research von PIXI.js Performance Guides und Foundry VTT
Dokumentation ergab, dass Culling und Batch Rendering die
primären Optimierungstechniken für viele Objekte sind [Quellen].
Diese Techniken wurden implementiert..."
```

#### ✅ Messbare Verbesserungen
```
"Das Refactoring reduzierte die Code-Komplexität von 3,840 auf
1,490 Zeilen (61% Reduktion) und identifizierte 15 Bugs.
Die Performance-Auswirkung wird in Kapitel 4.3 evaluiert."
```

---

### Fokus für Kapitel 3: Die 4 Kern-Features

Basierend auf unserer Diskussion konzentrieren wir uns auf:

1. **3.3.1 Rendering Engine** (PIXI.js)
   - Framework-Vergleich mit Benchmarks
   - PIXI v7 vs v8 Entscheidung

2. **3.3.2 Grid System**
   - Draw Call Optimierung
   - TilingSprite vs Explicit Drawing

3. **3.3.3 Token Creator & Management**
   - Performance bei vielen Objekten (Research-basiert)
   - Modulare Architektur (61% Code-Reduktion)

4. **3.3.4 Asset Manager**
   - I/O-Optimierung (Async vs Sync)
   - Singleton Pattern für Konsistenz

**Ausgelassen** (nach Diskussion):
- ❌ Statblock Builder (zu feature-deskriptiv, schwer wissenschaftlich zu begründen)
- ❌ UI Integration (zu implementierungs-lastig)

---

### Checkliste für jeden Abschnitt

Bevor ein Abschnitt als "fertig" gilt:

- [ ] **Problem klar definiert** - Was musste gelöst werden?
- [ ] **Alternativen evaluiert** - Mindestens 2 Ansätze verglichen
- [ ] **Daten vorhanden** - Benchmarks, Messungen, oder Research-Quellen
- [ ] **Entscheidung begründet** - WARUM wurde Option X gewählt?
- [ ] **Implementierung beschrieben** - Wie konkret umgesetzt?
- [ ] **Messbare Ergebnisse** - Zahlen! (LoC, FPS, Bundle Size, etc.)
- [ ] **Quellen angegeben** - Mindestens 2-3 Quellen pro Abschnitt
- [ ] **Verbindung zu Kap. 4** - Was wird dort validiert?

---

### Zusammenfassung

**Kapitel 3 = Implementierung + Wissenschaftliche Begründung**

- **NICHT**: "Hier ist wie Feature X funktioniert" (Code-Dokumentation)
- **SONDERN**: "Wir haben Feature X SO implementiert, weil Research/Evaluation Y zeigte, dass Ansatz Z optimal ist" (Wissenschaftlich begründete Implementierung)

**Jede Entscheidung braucht**:
1. Research/Evaluation (mit Quellen)
2. Daten/Benchmarks (mit Zahlen)
3. Begründung (WARUM nicht anders?)
4. Messbare Ergebnisse (Validation in Kap. 4)

## Fortschritts-Tracking

### Aktueller Status
- **Kapitel 1**: Vollständig geplant ✅
- **Kapitel 2**: Teilweise geplant (3/7) 🟡
- **Kapitel 3**: Platzhalter erstellt 🔴
- **Kapitel 4**: Platzhalter erstellt 🔴
- **Kapitel 5**: Platzhalter erstellt 🔴

### Nächste Schritte
1. [ ] Restliche Planungen für Kapitel 2 ausarbeiten
2. [ ] Atlas VTT Code-Analyse für Kapitel 3
3. [ ] Performance-Test Framework konzipieren
4. [ ] Erste LaTeX-Texte basierend auf Planungen schreiben

## Commands für Agents

### Planung erstellen
```
"Erstelle eine detaillierte Planung für Kapitel X.Y basierend auf dem Template und dem Kontext aus atlas-vtt/"
```

### Text schreiben
```
"Schreibe den LaTeX-Text für Kapitel X.Y basierend auf der Planung in resources/XX-kapitel/X.Y-titel.md. Liefere LaTeX-Code und BibTeX-Einträge."
```

### Code analysieren
```
"Analysiere atlas-vtt/ für relevante Code-Beispiele zu [Thema] und erstelle Referenzen im Format datei.ts:zeile"
```

---

**Dieser Workflow stellt sicher, dass:**
- Jedes Kapitel strukturiert geplant wird
- AI Agents klaren Kontext haben
- Konsistenz gewährleistet ist
- Wissenschaftliche Standards eingehalten werden
- Der Fortschritt nachvollziehbar ist