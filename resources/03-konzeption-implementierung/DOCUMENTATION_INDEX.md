# Atlas VTT Documentation Index für Kapitel 3
**Zweck**: Übersicht aller relevanten Entwicklungsdokumentationen für die Bachelorarbeit
**Erstellt**: 2025-01-21
**Für**: Kapitel 3 - Konzeption und Implementierung

---

## 🎯 Die 5 Kern-Features (Performance-Analyse)

### Feature-Übersicht
**Quelle**: `/resources/performance-evaluation-plan.md`

Die 5 Features für Performance-Analyse:
1. **PIXI.js Rendering Engine** - Core Graphics System (~500KB Bundle)
2. **Statblock Builder/System** - React Component Tree mit Drag-and-Drop
3. **Asset Manager** - File I/O intensiv mit Image Processing
4. **Token Creator/Management** - Interaktiver UI Builder
5. **Grid System** - Komplexe hexagonale Tessellation-Mathematik

---

## 📂 Kategorisierte Dokumentationen

### A. Architektur & Design-Entscheidungen

#### 1. **Project Purpose and Architecture**
- **Pfad**: `atlas-vtt/.serena/memories/project_purpose_and_architecture.md`
- **Relevanz**: ⭐⭐⭐⭐⭐ (Kritisch)
- **Inhalt**:
  - High-Level-Architektur
  - Service-orientierte Architektur
  - Layer-Management (View, Rendering, State, Services)
  - Plugin Lifecycle
  - Modulare Service-Architektur
- **Verwendung für Thesis**:
  - Abschnitt 3.2.1 - Architekturentwurf
  - Systemdiagramme
  - Design-Prinzipien

#### 2. **Tech Stack and Dependencies**
- **Pfad**: `atlas-vtt/.serena/memories/tech_stack_and_dependencies.md`
- **Relevanz**: ⭐⭐⭐⭐⭐ (Kritisch)
- **Inhalt**:
  - Kompletter Tech Stack
  - PIXI.js v8 vs v7 Konflikt-Lösung
  - React 19, Zustand, SCSS
  - Build-Prozess (Vite)
  - Kritische Abhängigkeiten
- **Verwendung für Thesis**:
  - Abschnitt 3.2 - Technische Rahmenbedingungen
  - Begründung der Technologie-Wahl
  - Bundle-Size Analyse

#### 3. **Road Map**
- **Pfad**: `atlas-vtt/road-map.md`
- **Relevanz**: ⭐⭐⭐⭐
- **Inhalt**:
  - Vision: "Offline Owlbear-style VTT inside Obsidian"
  - Domain Model (MapObject-Hierarchie)
  - Rendering & Interaction Strategy
  - Data Persistence (`.atlasmap` Format)
  - MVP Checklist
- **Verwendung für Thesis**:
  - Abschnitt 3.1.1 - Funktionale Anforderungen
  - Abschnitt 3.2.2 - Datenmodell

---

### B. Feature-Spezifische Dokumentationen

#### 4. **Grid System Modernization**
- **Pfad**: `atlas-vtt/grid-system-modernization-summary.md`
- **Relevanz**: ⭐⭐⭐⭐⭐ (Feature #5)
- **Inhalt**:
  - TilingSprite als primäre Methode
  - Power-of-Two Texture Sizing
  - Half-Pixel Coordinates für scharfe Linien
  - Performance Benefits (Draw Calls, GPU Optimization)
  - PIXI.js v8 Best Practices
- **Verwendung für Thesis**:
  - Abschnitt 3.3 - Lösungsansätze
  - Performance-Optimierung Beispiel
  - PIXI.js v8 Migration

#### 5. **Statblock System**
- **Pfad**: `atlas-vtt/docs/statblock-system.md`
- **Relevanz**: ⭐⭐⭐⭐⭐ (Feature #2)
- **Inhalt**:
  - Predefined Layouts (D&D 5e, Daggerheart)
  - Edit/View Modes
  - YAML Frontmatter Sync
  - Array Management für Traits/Actions
- **Verwendung für Thesis**:
  - Abschnitt 3.3 - Statblock Builder Implementierung
  - React Component Architektur

#### 6. **Character System Analysis**
- **Pfad**: `atlas-vtt/character-system-analysis.md`
- **Relevanz**: ⭐⭐⭐⭐ (Feature #2)
- **Inhalt**:
  - Zwei separate Character Systems (LocalCharacter, PlayerStatblock)
  - Type Definitions und Datenstrukturen
  - UI Components Using Each System
  - Conversion Logic zwischen Formaten
- **Verwendung für Thesis**:
  - Komplexität von React State Management
  - Design-Entscheidungen und Trade-offs
  - Konsolidierungsplan als Beispiel für Refactoring

#### 7. **Character System Consolidation Plan**
- **Pfad**: `atlas-vtt/character-system-consolidation-plan.md`
- **Relevanz**: ⭐⭐⭐⭐
- **Inhalt**:
  - Unified Character Type Design
  - Migration Strategy (4 Phasen)
  - Backward Compatibility Approach
  - Technical Architecture (Converter, Service)
- **Verwendung für Thesis**:
  - Beispiel für architekt uralen Refactoring
  - Risikomanagement
  - Progressive Enhancement Strategy

#### 8. **Token-Statblock Linking System**
- **Pfad**: `atlas-vtt/docs/token-statblock-linking-system.md`
- **Relevanz**: ⭐⭐⭐⭐ (Feature #4)
- **Inhalt**:
  - Singleton Pattern für Asset Management
  - One-to-One Relationship Enforcement
  - Event-Driven Updates
  - Asset Data Flow Diagramm
  - Handling Multiple Map Views
- **Verwendung für Thesis**:
  - Service-Architektur Beispiel
  - Event-Driven Design
  - State Synchronization

#### 9. **TokenRenderer Refactoring Plan**
- **Pfad**: `atlas-vtt/src/app/pixi/token-renderer/REFACTORING_PLAN.md`
- **Relevanz**: ⭐⭐⭐⭐⭐ (Feature #4)
- **Inhalt**:
  - Refactoring von 3,840 Zeilen auf ~1,490 Zeilen (61% Reduktion!)
  - 6 extrahierte Module (SpriteFactory, TextureCache, UIManager, etc.)
  - 15 Bugs während Refactoring gefunden und gefixt
  - PIXI v8 Compatibility Issues
  - Lessons Learned
- **Verwendung für Thesis**:
  - **Sehr wichtig**: Zeigt Code-Qualität und Wartbarkeit
  - Beispiel für Single Responsibility Principle
  - Technical Debt Management
  - PIXI.js v8 Migration Challenges

---

### C. Integration & Best Practices

#### 10. **Using Obsidian Menu with Pixi**
- **Pfad**: `atlas-vtt/docs/using-obsidian-menu-with-pixi.md`
- **Relevanz**: ⭐⭐⭐
- **Inhalt**:
  - Integration von Obsidian's native Menu mit PIXI.js
  - Hybrid Approach (Native + Custom React Menus)
  - Event Handling (Right-Click auf Canvas)
- **Verwendung für Thesis**:
  - Plugin-API Integration
  - UI Framework Integration Challenge

#### 11. **CSS Scoping Best Practices**
- **Pfad**: `atlas-vtt/docs/css-scoping-best-practices.md`
- **Relevanz**: ⭐⭐⭐
- **Inhalt**:
  - Multi-layered Approach für CSS Isolation
  - `.atlas-vtt-plugin` Wrapper
  - `atlas-` Prefix Convention
  - Obsidian Theme Compatibility
- **Verwendung für Thesis**:
  - Integration Challenges mit Host-App
  - Namespace Pollution Prevention
  - Theme System Integration

---

### D. Testing & Performance

#### 12. **Performance Evaluation Plan**
- **Pfad**: `/resources/performance-evaluation-plan.md`
- **Relevanz**: ⭐⭐⭐⭐⭐ (Kritisch für Thesis)
- **Inhalt**:
  - Die 5 Kern-Features detailliert
  - Feature Toggle Architecture
  - Measurement Tools Stack (hyperfine, Chrome DevTools, etc.)
  - Test Scenarios (Empty, Standard, Stress, Interaction)
  - Optimization Strategies (Code Splitting, Web Workers, WASM)
  - Statistical Analysis Plan
- **Verwendung für Thesis**:
  - **Kern-Dokument für Kapitel 3.4 und 3.5**
  - Abschnitt 3.4 - Test Framework
  - Abschnitt 3.5 - Messverfahren
  - Kapitel 4 - Evaluation

---

### E. System Features & Capabilities

#### 13. **FEATURES.md**
- **Pfad**: `atlas-vtt/FEATURES.md`
- **Relevanz**: ⭐⭐⭐⭐
- **Inhalt**:
  - Complete Feature List (225 Zeilen)
  - Core Features kategorisiert
  - Map & Canvas System
  - Grid System (Square, Hexagonal)
  - Token Management
  - Fog of War
  - Statblock Builder
  - Asset Manager
  - Multiplayer/Network Features
- **Verwendung für Thesis**:
  - Abschnitt 3.1.1 - Funktionale Anforderungen
  - Systemübersicht
  - Feature Scope Dokumentation

#### 14. **README.md**
- **Pfad**: `atlas-vtt/README.md`
- **Relevanz**: ⭐⭐⭐
- **Inhalt**:
  - Project Overview
  - PIXI.js v8 Hinweis (wichtig!)
  - Feature Summary
  - Project Structure
  - Online Multiplayer Info
  - Branch Naming (thesis/* branches!)
- **Verwendung für Thesis**:
  - Einleitung
  - Project Context

---

## 📊 Mapping: Dokumentation → Thesis Kapitel

### Kapitel 3.1: Anforderungsanalyse
- **Funktionale Anforderungen (3.1.1)**:
  - `FEATURES.md` - Vollständige Feature-Liste
  - `road-map.md` - Domain Model & MVP Checklist
  - `performance-evaluation-plan.md` - Die 5 Kern-Features

- **Nicht-funktionale Anforderungen (3.1.2)**:
  - `tech_stack_and_dependencies.md` - Performance, Compatibility
  - `project_purpose_and_architecture.md` - Wartbarkeit, Modularität
  - `performance-evaluation-plan.md` - Performance-Ziele

### Kapitel 3.2: Systemdesign
- **Architekturentwurf (3.2.1)**:
  - `project_purpose_and_architecture.md` - High-Level Architecture
  - `token-statblock-linking-system.md` - Service Architecture
  - `road-map.md` - Domain Model

- **Datenmodell (3.2.2)**:
  - `road-map.md` - `.atlasmap` Format
  - `character-system-analysis.md` - Character Data Structures
  - `statblock-system.md` - YAML Frontmatter Structure

### Kapitel 3.3: Entwicklung verschiedener Lösungsansätze
- **Grid System**:
  - `grid-system-modernization-summary.md` - PIXI.js v8 Optimization

- **Statblock Builder**:
  - `statblock-system.md` - Layout System
  - `character-system-analysis.md` - Data Structure Design
  - `character-system-consolidation-plan.md` - Refactoring Strategy

- **Token Rendering**:
  - `REFACTORING_PLAN.md` - Module Extraction (61% Reduktion!)
  - `tech_stack_and_dependencies.md` - PIXI.js v8 vs v7

- **CSS Integration**:
  - `css-scoping-best-practices.md` - Isolation Strategy

- **Obsidian Integration**:
  - `using-obsidian-menu-with-pixi.md` - Plugin API Usage

### Kapitel 3.4: Implementierung der Testumgebung
- `performance-evaluation-plan.md` - Phase 2 (Measurement Infrastructure)
  - Test Scenarios
  - Benchmark Suite
  - Automated Testing

### Kapitel 3.5: Dokumentation der Messverfahren
- `performance-evaluation-plan.md` - Phase 2 & 4
  - Metrics Suite (Startup, Runtime, Bundle)
  - Measurement Tools
  - Statistical Analysis

---

## 🔗 Cross-References

### PIXI.js v8 Migration (kritisch!)
Wird erwähnt in:
1. `tech_stack_and_dependencies.md` - Version Conflict Explanation
2. `grid-system-modernization-summary.md` - v8 Best Practices
3. `REFACTORING_PLAN.md` - v8 Compatibility Issues
4. `README.md` - Warning about v7 vs v8

### Performance Optimization
Wird erwähnt in:
1. `performance-evaluation-plan.md` - Comprehensive Optimization Strategies
2. `grid-system-modernization-summary.md` - Specific Grid Optimizations
3. `REFACTORING_PLAN.md` - Code Size Reduction

### State Management
Wird erwähnt in:
1. `project_purpose_and_architecture.md` - Zustand Architecture
2. `character-system-analysis.md` - State Complexity
3. `token-statblock-linking-system.md` - Event-Driven State Updates

---

## ✅ Nächste Schritte

1. ✅ Dokumentationen gefunden und kategorisiert
2. 🔲 Planungsdokumente für Unterkapitel in `resources/03-konzeption-implementierung/` erstellen
3. 🔲 Schlüsselzitate aus Dokumentationen in Planungsdokumente übertragen
4. 🔲 LaTeX-Text für Kapitel 3 basierend auf Planungsdokumenten verfassen
5. 🔲 Code-Beispiele aus Atlas VTT extrahieren und in LaTeX einbinden

---

## 📝 Notizen für Thesis-Schreibprozess

### Wichtige Storylines

**Story 1: PIXI.js v8 Migration als zentrale technische Herausforderung**
- Obsidian bundelt PIXI v7 global
- Atlas VTT benötigt PIXI v8 Features
- Konflikt-Lösung: Custom Imports
- Dokumentiert in: `tech_stack`, `grid-system`, `REFACTORING_PLAN`

**Story 2: Von Monolith zu Modulen (TokenRenderer Refactoring)**
- 3,840 Zeilen → 1,490 Zeilen (61% Reduktion)
- 6 Module extrahiert
- 15 Bugs gefunden und gefixt
- Beispiel für Wartbarkeit und Code-Qualität

**Story 3: Single-Bundle Constraint und Performance**
- Alles in `main.js` gebündelt
- 5 Features analysiert für Bundle Impact
- Trade-offs: Bundle Size vs Features vs Performance

**Story 4: Integration Challenges (Obsidian + React + PIXI.js)**
- CSS Scoping (keine globalen Styles)
- Native Menus + Custom React Components
- Event System zwischen Frameworks

### Zitierbare Kernaussagen

Aus `performance-evaluation-plan.md`:
> "These features represent the most significant architectural and bundle impact"

Aus `REFACTORING_PLAN.md`:
> "Reduced from 3,840 to ~1,490 lines (2,350 lines extracted - 61% reduction!)"

Aus `grid-system-modernization-summary.md`:
> "TilingSprite uses a single draw call vs hundreds for individual lines"

---

**Letzte Aktualisierung**: 2025-01-21
**Version**: 1.0
**Erstellt von**: AI Assistant für Fabian's Bachelorarbeit
