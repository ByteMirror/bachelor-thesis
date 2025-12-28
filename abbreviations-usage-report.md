# Abbreviations Usage Report

**Generated:** /Users/fabian/GitHub/bachelor-thesis

## Executive Summary

This document lists all abbreviations found in the main LaTeX chapter files that are NOT currently using the `\ac{}` command.

**Total abbreviations found:** 34

## Abbreviations Missing from abkuerzungen.tex

The following abbreviations are used but not defined in `latex/abkuerzungen.tex`:

- **CPU**: Central Processing Unit
- **CSS**: Cascading Style Sheets
- **DAO**: Data Access Object
- **DOM**: Document Object Model
- **FPS**: Frames Per Second
- **GB**: Gigabyte
- **GC**: Garbage Collection
- **GM**: Game Master
- **GPU**: Graphics Processing Unit
- **HP**: Hit Points / Health Points
- **HTML**: HyperText Markup Language
- **HTML5**: HyperText Markup Language 5
- **I/O**: Input/Output
- **IPC**: Inter-Process Communication
- **JPEG**: Joint Photographic Experts Group
- **KB**: Kilobyte
- **MB**: Megabyte
- **NVMe**: Non-Volatile Memory Express
- **OS**: Operating System
- **PNG**: Portable Network Graphics
- **RGBA**: Red Green Blue Alpha
- **SCSS**: Sassy CSS
- **SOA**: Service-Oriented Architecture
- **SRP**: Single Responsibility Principle
- **SSD**: Solid State Drive
- **UI**: User Interface
- **UX**: User Experience
- **WebGL**: Web Graphics Library
- **WebP**: Web Picture format
- **XDR**: Extended Dynamic Range
- **YAML**: YAML Ain't Markup Language
- **ms**: milliseconds

## Detailed Findings

### API - Application Programming Interface

**Total occurrences:** 23

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 5

- Line 92: `Das Plugin-System unterscheidet zwei Kategorien: \textit{Core Plugins}, die vom Obsidian-Team entwic...`
- Line 94: `Besonders relevant für die Plugin-Entwicklung ist die Event-basierte Architektur, die lose Kopplung ...`
- Line 96: `Für ein \ac{VTT}-Plugin ergeben sich daraus konkrete Integrationspunkte. Der \texttt{Workspace} gest...`
- Line 104: `Der \textit{Main Process} fungiert als Backend der Applikation mit Zugriff auf Node.js-APIs und nati...`
- Line 106: `Die Kommunikation zwischen isolierten Prozessen erfolgt über \textit{Inter-Process Communication} (I...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 8

- Line 167: `Ein kritischer Konflikt entsteht durch Obsidians globales PIXI.js v7 Bundle. Atlas VTT benötigt PIXI...`
- Line 180: `NF3.3       & File Access         & Vault-relative Paths & AssetManager + Vault API \\`
- Line 262: `Der Service Layer enthält über 50 spezialisierte Services, die Geschäftslogik, externe API-Calls und...`
- Line 275: `\subsubsection{Integration mit Obsidian Plugin API}`
- Line 277: `Die Integration mit der Obsidian Plugin API stellt spezifische Herausforderungen, da Atlas VTT sowoh...`
- ... and 3 more occurrences

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 3

- Line 75: `\item \textbf{Token-Spawning}: Erzeugung der szenariospezifischen Token-Anzahl über die Zustand-Stor...`
- Line 90: `\item \textbf{Heap Used (Bytes)}: Der JavaScript-Heap-Verbrauch, erfasst über die Chrome Performance...`
- Line 92: `\item \textbf{Blink Memory (Bytes)}: Der Speicherverbrauch der Blink-Engine-Caches (Images, CSS, Fon...`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 7

- Line 10: `Die Wahl von PIXI.js v8 als Rendering-Engine erwies sich als fundiert. Die automatischen Optimierung...`
- Line 77: `\paragraph{Obsidian-API-Beschränkungen}`
- Line 78: `Die Plugin-API von Obsidian bietet keinen Mechanismus für Code-Splitting oder Lazy Loading. Alle Plu...`
- Line 84: `Die Notwendigkeit, PIXI.js v8 separat zu bundlen (statt die globale v7-Version von Obsidian zu nutze...`
- Line 126: `\item \textbf{Code-Splitting und Lazy Loading}: Eine Erweiterung der Obsidian-Plugin-API zur Unterst...`
- ... and 2 more occurrences

---

### CPU - Central Processing Unit

**Total occurrences:** 12

#### 01-Einleitung.tex

**Occurrences:** 1

- Line 26: `Die Speicher- und CPU-Beschränkungen von Electron können zu spürbaren Performance-Einbußen führen, i...`

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 2

- Line 118: `Batch Rendering konstituiert die zentrale Performance-Optimierung der Engine. Draw-Calls repräsentie...`
- Line 120: `Reaktivität und Lazy-Evaluation charakterisieren die Rendering-Pipeline von v8: Das Dirty-Flag-Syste...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 4

- Line 724: `\textbf{Culling} reduziert die CPU-Last durch Überspringen nicht-sichtbarer Objekte im Render-Loop. ...`
- Line 849: `\item \textbf{Fehlende Culling-Strategie}: Bei großen Maps mit vielen off-screen Tokens würde das Re...`
- Line 872: `Diese Technik reduziert CPU-Zeit für nicht-sichtbare Objekte, ohne dass manuelle Sichtbarkeits-Check...`
- Line 911: `\item \textbf{Culling} reduziert CPU-Last für nicht-sichtbare Tokens`

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 3

- Line 42: `\item \textbf{Standardisierte Systemlast}: CPU-Auslastung < 5\% vor Testbeginn`
- Line 46: `\item \textbf{Temperaturkontrolle}: Tests erst nach thermischer Stabilisierung (< 45°C CPU-Temperatu...`
- Line 85: `Das Benchmark-System erfasst zwei primäre Metriken, die den CPU- und Speicherverbrauch der Anwendung...`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 2

- Line 39: `\item \textbf{Moderne Rendering-Engine}: PIXI.js v8 mit WebGL-Backend nutzt GPU-Beschleunigung effek...`
- Line 128: `\item \textbf{Web Workers für CPU-intensive Operationen}: Rechenintensive Operationen wie Hexagonal-...`

---

### CSS - Cascading Style Sheets

**Total occurrences:** 5

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 2

- Line 100: `Als Open-Source-Framework für plattformübergreifende Desktop-Applikationen vereint Electron Webtechn...`
- Line 104: `Der \textit{Main Process} fungiert als Backend der Applikation mit Zugriff auf Node.js-APIs und nati...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 167: `Ein kritischer Konflikt entsteht durch Obsidians globales PIXI.js v7 Bundle. Atlas VTT benötigt PIXI...`

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 1

- Line 92: `\item \textbf{Blink Memory (Bytes)}: Der Speicherverbrauch der Blink-Engine-Caches (Images, CSS, Fon...`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 1

- Line 208: `\item \textbf{CSS Container Queries und Subgrid}: Vereinfachen responsive Layouts ohne JavaScript un...`

---

### DAO - Data Access Object

**Total occurrences:** 1

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 363: `Diese Separation entspricht dem Data Access Object (DAO) Pattern von Fowler\autocite{Fowler2003}, be...`

---

### DOM - Document Object Model

**Total occurrences:** 3

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 1

- Line 96: `Für ein \ac{VTT}-Plugin ergeben sich daraus konkrete Integrationspunkte. Der \texttt{Workspace} gest...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 231: `Alle Views sind als React 19 Komponenten implementiert, was deklarative UI-Entwicklung und effizient...`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 1

- Line 220: `\item \textbf{Hybrid-Rendering}: Die Kombination von Canvas-Rendering für Performance-kritische Elem...`

---

### FPS - Frames Per Second

**Total occurrences:** 35

#### 01-Einleitung.tex

**Occurrences:** 1

- Line 26: `Die Speicher- und CPU-Beschränkungen von Electron können zu spürbaren Performance-Einbußen führen, i...`

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 2

- Line 70: `Die technischen Anforderungen an ein \ac{VTT}-System sind erheblich. Für eine flüssige Spielerfahrun...`
- Line 108: `Ein kritischer Aspekt ist der Chromium-Overhead: Der initiale Memory-Footprint einer Electron-App be...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 13

- Line 131: `Performance ist kritisch für flüssige Interaktionen in Desktop-Anwendungen. Nielsen beschreibt, dass...`
- Line 146: `NF1.1       & Frame Rate          & $\geq$30 FPS  & 50 Tokens, 2048px Map & Minimum                 ...`
- Line 147: `NF1.2       & Frame Rate (Ideal)  & $\geq$60 FPS  & Standard-Szenarien    & Desktop                 ...`
- Line 159: `Skalierbarkeits-Anforderungen definieren die Grenzen für Token Count, Map Size und Asset Library. St...`
- Line 696: `Basierend auf etablierten UI-Performance-Standards wurden folgende Anforderungen definiert: Die Rend...`
- ... and 8 more occurrences

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 15

- Line 88: `\item \textbf{Frame Time (ms)}: Die durchschnittliche Zeit pro Frame, gemessen über 60 aufeinanderfo...`
- Line 98: `Die Ergebnisse werden als JSON exportiert und mittels eines Python-Skripts visualisiert, das automat...`
- Line 103: `\item FPS-Vergleich zwischen Szenarien (Balkendiagramm mit Standardabweichung)`
- Line 105: `\item Frame-Time-Analyse mit 60-FPS- und 30-FPS-Ziellinien`
- Line 106: `\item Skalierungsanalyse (FPS und Memory vs. Token-Anzahl)`
- ... and 10 more occurrences

#### 05-Fazit-Ausblick.tex

**Occurrences:** 4

- Line 10: `Die Wahl von PIXI.js v8 als Rendering-Engine erwies sich als fundiert. Die automatischen Optimierung...`
- Line 18: `\item Die Rendering-Performance ist über alle getesteten Szenarien (0, 20, 100 Token) konstant und e...`
- Line 19: `\item Die Frame Time von durchschnittlich 8,33 ms liegt weit unter den kritischen Schwellenwerten fü...`
- Line 33: `Die Implementierung von Atlas VTT demonstriert, dass performante VTT-Plugins in Obsidian grundsätzli...`

---

### GB - Gigabyte

**Total occurrences:** 2

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 2

- Line 17: `\item \textbf{Arbeitsspeicher}: 16 GB LPDDR5`
- Line 19: `\item \textbf{Speicher}: 512 GB SSD (NVMe)`

---

### GC - Garbage Collection

**Total occurrences:** 4

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 1

- Line 108: `Ein kritischer Aspekt ist der Chromium-Overhead: Der initiale Memory-Footprint einer Electron-App be...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 3

- Line 851: `\item \textbf{Keine Object Pooling}: Die kontinuierliche Erstellung neuer Sprite-Instanzen würde zu ...`
- Line 898: `Dieses Pattern reduziert die Anzahl kurzlebiger Objekte und führt zu stabileren Frame-Times durch we...`
- Line 914: `\item \textbf{Object Pooling} stabilisiert Frame-Times durch GC-Reduktion`

---

### GM - Game Master

**Total occurrences:** 6

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 6

- Line 79: `Fog of War ermöglicht das Verbergen nicht-entdeckter Bereiche einer Map und ist ein Standard-Feature...`
- Line 81: `Alle Fog of War-Anforderungen (F3.1-F3.4) sind als P0 klassifiziert, da Fog of War in allen etablier...`
- Line 94: `F3.3        & GM-Only Preview (GM sieht full map)      & P0                 & VTT-Standard      \\`
- Line 225: `\item \texttt{atlas-view.ts} -- GM/Host View für Spielleiter mit vollem Zugriff auf alle Map-Objekte`
- Line 226: `\item \texttt{player-view.ts} -- Dediziertes Player Window ohne GM-only Elemente`
- ... and 1 more occurrences

---

### GPU - Graphics Processing Unit

**Total occurrences:** 22

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 1

- Line 118: `Batch Rendering konstituiert die zentrale Performance-Optimierung der Engine. Draw-Calls repräsentie...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 13

- Line 161: `Die technische Strategie zur Erreichung dieser Skalierbarkeit basiert auf PIXI.js Performance Best P...`
- Line 706: `\textbf{PIXI.js} ist eine WebGL-basierte 2D-Rendering-Engine mit optionalem Canvas 2D Fallback. In d...`
- Line 726: `\textbf{Sprite Batching} wird automatisch von PIXI.js durchgeführt und bündelt bis zu 16 Textures in...`
- Line 728: `\textbf{Power-of-Two Textures} optimieren die GPU-Performance, da Hardware-Texture-Lookups für Größe...`
- Line 759: `Bei einer 4096×4096 Pixel Map mit 64 Pixel Grid-Größe resultierte dies in über 1000 Draw Calls (64 v...`
- ... and 8 more occurrences

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 4

- Line 18: `\item \textbf{Grafik}: Integrierte Apple M1 Pro GPU (16 Kerne)`
- Line 92: `\item \textbf{Blink Memory (Bytes)}: Der Speicherverbrauch der Blink-Engine-Caches (Images, CSS, Fon...`
- Line 290: `\item \textbf{Texture Caching}: Wiederverwendung identischer Token-Texturen reduziert GPU-Uploads`
- Line 296: `Der Speicherverbrauch skaliert sublinear mit der Token-Anzahl: Während 20 Token ca. 11,8 MB/Token be...`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 4

- Line 39: `\item \textbf{Moderne Rendering-Engine}: PIXI.js v8 mit WebGL-Backend nutzt GPU-Beschleunigung effek...`
- Line 67: `Alle Messungen wurden ausschließlich auf einem Apple Silicon Mac (M1 Pro) unter macOS durchgeführt. ...`
- Line 142: `\item \textbf{WebGPU}: Die aufkommende WebGPU-API könnte WebGL ablösen und direkteren Zugriff auf GP...`
- Line 204: `\item \textbf{WebGPU}: Der Nachfolger von WebGL bietet direkteren Zugriff auf GPU-Ressourcen und kön...`

---

### HP - Hit Points / Health Points

**Total occurrences:** 1

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 52: `Erweiterte Funktionen umfassen Multi-Selection für Gruppenbewegung, Health Bar Display für visuelles...`

---

### HTML - HyperText Markup Language

**Total occurrences:** 2

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 2

- Line 100: `Als Open-Source-Framework für plattformübergreifende Desktop-Applikationen vereint Electron Webtechn...`
- Line 104: `Der \textit{Main Process} fungiert als Backend der Applikation mit Zugriff auf Node.js-APIs und nati...`

---

### HTML5 - HyperText Markup Language 5

**Total occurrences:** 2

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 2

- Line 235: `Der Rendering Layer ist verantwortlich für die performante Darstellung der Map, Tokens und Effekte a...`
- Line 694: `Die Wahl des Rendering-Frameworks ist die grundlegendste technische Entscheidung für ein VTT-Plugin....`

---

### I/O - Input/Output

**Total occurrences:** 7

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 5

- Line 630: `Die Persistierung von Map-Änderungen nutzt Debouncing zur I/O-Reduktion:`
- Line 651: `Das 1-Sekunden Debounce-Intervall wurde empirisch gewählt: Es ist kurz genug, um gefühlte Instant-Sa...`
- Line 853: `\item \textbf{Ineffiziente Texture-Verwaltung}: Ohne Caching-Strategie würde die wiederholte Verwend...`
- Line 902: `Um redundante I/O-Operationen zu vermeiden, sollten häufig verwendete Texturen gecacht werden. Dies ...`
- Line 913: `\item \textbf{Texture Caching} vermeidet redundante I/O-Operationen`

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 1

- Line 82: `Die Persistenz wird während der Benchmarks deaktiviert, um Disk-I/O-Overhead zu eliminieren und auss...`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 1

- Line 41: `\item \textbf{Zustandsmanagement mit Zustand}: Die reaktive Store-Architektur mit \texttt{subscribeW...`

---

### IPC - Inter-Process Communication

**Total occurrences:** 2

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 2

- Line 102: `Architektonisch folgt Electron dem Multi-Process-Modell von Chromium, das zwischen zwei fundamentale...`
- Line 106: `Die Kommunikation zwischen isolierten Prozessen erfolgt über \textit{Inter-Process Communication} (I...`

---

### JPEG - Joint Photographic Experts Group

**Total occurrences:** 2

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 2

- Line 22: `Das Karten-Management bildet die Basis jeder VTT-Session. Atlas VTT muss verschiedene Bildformate (J...`
- Line 39: `F1.1        & Laden von Hintergrundkarten (JPEG, PNG, WebP)  & P0                 & VTT-Standard    ...`

---

### JSON - JavaScript Object Notation

**Total occurrences:** 10

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 1

- Line 96: `Für ein \ac{VTT}-Plugin ergeben sich daraus konkrete Integrationspunkte. Der \texttt{Workspace} gest...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 8

- Line 24: `Die Persistenz erfolgt durch ein benutzerdefiniertes \texttt{.atlasmap}-Dateiformat, das Map-Konfigu...`
- Line 357: `\textbf{Map Data} (persistent, pro-Map) speichert Map-spezifische Informationen wie Background-Image...`
- Line 367: `Das \texttt{.atlasmap}-Format speichert Map-Konfiguration und platzierte Objekte als JSON:`
- Line 369: `\begin{lstlisting}[language={},caption={.atlasmap JSON Schema},label=lst:atlasmap-schema]`
- Line 406: `Die Wahl von JSON als Datenformat wurde durch mehrere Faktoren motiviert: JSON ist human-readable un...`
- ... and 3 more occurrences

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 1

- Line 98: `Die Ergebnisse werden als JSON exportiert und mittels eines Python-Skripts visualisiert, das automat...`

---

### KB - Kilobyte

**Total occurrences:** 10

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 6

- Line 165: `Obsidian-Plugins unterliegen spezifischen Plattform-Constraints, die Architektur-Entscheidungen beei...`
- Line 347: `Der Trade-off dieser Lösung ist erhöhter Bundle-Size: PIXI.js v8 fügt ~500 KB zum finalen Bundle hin...`
- Line 473: `Der Trade-off ist Skalierbarkeit: Bei sehr großen Vaults (>10.000 Assets) kann das Laden der gesamte...`
- Line 769: `\textbf{Ansatz 3: TilingSprite} nutzt PIXI.js' native Textur-Wiederholungs-Feature. Ein kleines Grid...`
- Line 775: `Basierend auf der Evaluation wurde TilingSprite gewählt, da es Draw Calls um 99,9\% reduziert (1000 ...`
- ... and 1 more occurrences

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 3

- Line 170: `Die Trendanalyse in Abbildung~\ref{fig:memory-leak} ergibt eine Leak-Rate von ca. 1,8 MB pro Iterati...`
- Line 259: `\text{Leak}_{\text{Token}} = \frac{\text{Leak}_{\text{Iteration}}}{n_{\text{Token}}} = \frac{1{,}8 \...`
- Line 264: `Die beobachtete Leak-Rate von 18 KB/Token könnte auf folgende Komponenten zurückzuführen sein:`

#### 05-Fazit-Ausblick.tex

**Occurrences:** 1

- Line 84: `Die Notwendigkeit, PIXI.js v8 separat zu bundlen (statt die globale v7-Version von Obsidian zu nutze...`

---

### MB - Megabyte

**Total occurrences:** 27

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 1

- Line 108: `Ein kritischer Aspekt ist der Chromium-Overhead: Der initiale Memory-Footprint einer Electron-App be...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 7

- Line 133: `VTTs müssen große Maps und viele Tokens performant handhaben. Die PIXI.js-Dokumentation definiert ei...`
- Line 150: `NF1.5       & Memory Footprint    & <500 MB       & 100 Tokens, 10 Maps   & Electron                ...`
- Line 165: `Obsidian-Plugins unterliegen spezifischen Plattform-Constraints, die Architektur-Entscheidungen beei...`
- Line 759: `Bei einer 4096×4096 Pixel Map mit 64 Pixel Grid-Größe resultierte dies in über 1000 Draw Calls (64 v...`
- Line 767: `\textbf{Ansatz 2: Graphics Texture Baking} rendert das Grid einmalig in eine Texture, die dann als S...`
- ... and 2 more occurrences

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 16

- Line 57: `\item \textbf{Standard-Session}: Eine typische Spielsitzung mit 20-30 Token, 2-3 Hintergrundbildern ...`
- Line 59: `\item \textbf{Stress-Test}: Eine große Kampagne-Karte mit 100+ Token, 10+ Hintergrundbildern (insges...`
- Line 128: `Baseline (Empty)  & 0              & $119{,}94 \pm 0{,}22$ & $8{,}34 \pm 0{,}02$ ms & $52{,}1 \pm 0{...`
- Line 129: `Typical Session   & 20             & $120{,}02 \pm 0{,}96$ & $8{,}33 \pm 0{,}08$ ms & $287{,}3 \pm 7...`
- Line 130: `Stress Test       & 100            & $120{,}06 \pm 0{,}40$ & $8{,}33 \pm 0{,}03$ ms & $1036{,}4 \pm ...`
- ... and 11 more occurrences

#### 05-Fazit-Ausblick.tex

**Occurrences:** 3

- Line 24: `Die Langzeit-Benchmarks offenbarten ein Memory Leak bei intensiver Token-Manipulation. Mit einer Lea...`
- Line 52: `\item Die Bundle-Größe des Plugins (ca. 2,8 MB) ist primär durch PIXI.js und React-Abhängigkeiten be...`
- Line 54: `\item Der Speicherverbrauch von ca. 10 MB pro Token ist höher als bei nativen Anwendungen, was bei s...`

---

### NVMe - Non-Volatile Memory Express

**Total occurrences:** 1

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 1

- Line 19: `\item \textbf{Speicher}: 512 GB SSD (NVMe)`

---

### OS - Operating System

**Total occurrences:** 1

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 1

- Line 100: `Als Open-Source-Framework für plattformübergreifende Desktop-Applikationen vereint Electron Webtechn...`

---

### PNG - Portable Network Graphics

**Total occurrences:** 2

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 2

- Line 22: `Das Karten-Management bildet die Basis jeder VTT-Session. Atlas VTT muss verschiedene Bildformate (J...`
- Line 39: `F1.1        & Laden von Hintergrundkarten (JPEG, PNG, WebP)  & P0                 & VTT-Standard    ...`

---

### RGBA - Red Green Blue Alpha

**Total occurrences:** 1

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 767: `\textbf{Ansatz 2: Graphics Texture Baking} rendert das Grid einmalig in eine Texture, die dann als S...`

---

### SCSS - Sassy CSS

**Total occurrences:** 2

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 2

- Line 167: `Ein kritischer Konflikt entsteht durch Obsidians globales PIXI.js v7 Bundle. Atlas VTT benötigt PIXI...`
- Line 181: `NF3.4       & Tailwind Limited    & Styling Constraints  & SCSS + Native Styles     \\`

---

### SOA - Service-Oriented Architecture

**Total occurrences:** 1

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 206: `\textbf{Service-orientierte Architektur (SOA)} organisiert Funktionalität in über 50 eigenständige S...`

---

### SRP - Single Responsibility Principle

**Total occurrences:** 1

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 208: `\textbf{Single Responsibility Principle (SRP)} stellt sicher, dass jedes Modul nur eine Änderungsurs...`

---

### SSD - Solid State Drive

**Total occurrences:** 1

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 1

- Line 19: `\item \textbf{Speicher}: 512 GB SSD (NVMe)`

---

### UI - User Interface

**Total occurrences:** 17

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 6

- Line 92: `Das Plugin-System unterscheidet zwei Kategorien: \textit{Core Plugins}, die vom Obsidian-Team entwic...`
- Line 94: `Besonders relevant für die Plugin-Entwicklung ist die Event-basierte Architektur, die lose Kopplung ...`
- Line 96: `Für ein \ac{VTT}-Plugin ergeben sich daraus konkrete Integrationspunkte. Der \texttt{Workspace} gest...`
- Line 100: `Als Open-Source-Framework für plattformübergreifende Desktop-Applikationen vereint Electron Webtechn...`
- Line 104: `Der \textit{Main Process} fungiert als Backend der Applikation mit Zugriff auf Node.js-APIs und nati...`
- ... and 1 more occurrences

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 8

- Line 194: `Usability-Anforderungen fokussieren auf intuitive UI, Keyboard Shortcuts für Power-User, Drag \& Dro...`
- Line 231: `Alle Views sind als React 19 Komponenten implementiert, was deklarative UI-Entwicklung und effizient...`
- Line 239: `\item \texttt{LayerManager.ts} -- Verwaltung von Rendering-Layern (Background, Grid, Tokens, Fog, UI...`
- Line 244: `Die kritische Design-Entscheidung war die strikte Separation zwischen React (UI Layer) und PIXI.js (...`
- Line 251: `\item \texttt{atlasStore.ts} -- Globaler Application State (Map-Daten, UI-Zustand, Tool-Modus)`
- ... and 3 more occurrences

#### 05-Fazit-Ausblick.tex

**Occurrences:** 3

- Line 41: `\item \textbf{Zustandsmanagement mit Zustand}: Die reaktive Store-Architektur mit \texttt{subscribeW...`
- Line 208: `\item \textbf{CSS Container Queries und Subgrid}: Vereinfachen responsive Layouts ohne JavaScript un...`
- Line 220: `\item \textbf{Hybrid-Rendering}: Die Kombination von Canvas-Rendering für Performance-kritische Elem...`

---

### UX - User Experience

**Total occurrences:** 1

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 1

- Line 149: `NF1.4       & Map Load Time       & <2 s          & 4096px Map            & UX                      ...`

---

### WebGL - Web Graphics Library

**Total occurrences:** 19

#### 01-Einleitung.tex

**Occurrences:** 2

- Line 28: `Bestehende \ac{VTT}-Lösungen für Obsidian sind meist auf einfache Visualisierungen beschränkt oder l...`
- Line 38: `\item Evaluation verschiedener Rendering-Frameworks (Canvas 2D, WebGL) und fundierte Auswahl für die...`

#### 02-Theoretische-Grundlagen.tex

**Occurrences:** 3

- Line 112: `Als performante Alternative zum nativen Canvas-2D-Rendering positioniert sich PIXI.js – eine Open-So...`
- Line 116: `Als fundamentales Render-Primitive fungiert der \texttt{Sprite} – ein 2D-Bild-Objekt, das eine \text...`
- Line 122: `Für \ac{VTT}-Plugins sind spezifische PIXI.js-Features relevant: Das \texttt{EventSystem} implementi...`

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 8

- Line 694: `Die Wahl des Rendering-Frameworks ist die grundlegendste technische Entscheidung für ein VTT-Plugin....`
- Line 702: `\textbf{Konva.js} basiert auf der Canvas 2D API und bietet eine einfache, deklarative API für intera...`
- Line 704: `\textbf{Fabric.js} verfolgt einen ähnlichen Ansatz wie Konva.js mit Fokus auf Objekt-Manipulation, n...`
- Line 706: `\textbf{PIXI.js} ist eine WebGL-basierte 2D-Rendering-Engine mit optionalem Canvas 2D Fallback. In d...`
- Line 710: `Ein unabhängiger Benchmark vergleicht die Performance der drei Frameworks durch Rendering von 8000 b...`
- ... and 3 more occurrences

#### 05-Fazit-Ausblick.tex

**Occurrences:** 6

- Line 10: `Die Wahl von PIXI.js v8 als Rendering-Engine erwies sich als fundiert. Die automatischen Optimierung...`
- Line 39: `\item \textbf{Moderne Rendering-Engine}: PIXI.js v8 mit WebGL-Backend nutzt GPU-Beschleunigung effek...`
- Line 58: `Die Forschungsfrage kann positiv beantwortet werden: VTT-Plugins können in Obsidian performant imple...`
- Line 142: `\item \textbf{WebGPU}: Die aufkommende WebGPU-API könnte WebGL ablösen und direkteren Zugriff auf GP...`
- Line 204: `\item \textbf{WebGPU}: Der Nachfolger von WebGL bietet direkteren Zugriff auf GPU-Ressourcen und kön...`
- ... and 1 more occurrences

---

### WebP - Web Picture format

**Total occurrences:** 2

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 2

- Line 22: `Das Karten-Management bildet die Basis jeder VTT-Session. Atlas VTT muss verschiedene Bildformate (J...`
- Line 39: `F1.1        & Laden von Hintergrundkarten (JPEG, PNG, WebP)  & P0                 & VTT-Standard    ...`

---

### XDR - Extended Dynamic Range

**Total occurrences:** 1

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 1

- Line 20: `\item \textbf{Display}: 14-Zoll Liquid Retina XDR (3024 × 1964 Pixel)`

---

### YAML - YAML Ain't Markup Language

**Total occurrences:** 5

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 5

- Line 123: `Der Statblock Builder ermöglicht die Erstellung von D\&D 5e Character Sheets direkt in Obsidian. Sta...`
- Line 510: `Character- und Monster-Daten werden als YAML Frontmatter in Markdown-Dateien gespeichert, um native ...`
- Line 512: `\begin{lstlisting}[float,language={},caption={Statblock YAML Frontmatter},label=lst:statblock-frontm...`
- Line 539: `Die Verwendung von YAML Frontmatter folgt Obsidian's native Metadata-System und ermöglicht Statblock...`
- Line 575: `Diese bidirektionale Synchronisation entspricht dem Two-Way Data Binding Pattern und stellt Data Int...`

---

### ms - milliseconds

**Total occurrences:** 11

#### 03-Konzeption-Implementierung.tex

**Occurrences:** 2

- Line 148: `NF1.3       & Interaction Latency & <100 ms       & Drag \& Drop Token    & Nielsen\autocite{Nielsen...`
- Line 831: `Render Time/Frame   & 16,8 ms         & 10,2 ms          & -39\%                 \\`

#### 04-Evaluation-Ergebnisse.tex

**Occurrences:** 7

- Line 88: `\item \textbf{Frame Time (ms)}: Die durchschnittliche Zeit pro Frame, gemessen über 60 aufeinanderfo...`
- Line 128: `Baseline (Empty)  & 0              & $119{,}94 \pm 0{,}22$ & $8{,}34 \pm 0{,}02$ ms & $52{,}1 \pm 0{...`
- Line 129: `Typical Session   & 20             & $120{,}02 \pm 0{,}96$ & $8{,}33 \pm 0{,}08$ ms & $287{,}3 \pm 7...`
- Line 130: `Stress Test       & 100            & $120{,}06 \pm 0{,}40$ & $8{,}33 \pm 0{,}03$ ms & $1036{,}4 \pm ...`
- Line 145: `Die Messung der Frame Time ist neben der FPS-Rate essenziell, da durchschnittliche FPS-Werte kein op...`
- ... and 2 more occurrences

#### 05-Fazit-Ausblick.tex

**Occurrences:** 2

- Line 19: `\item Die Frame Time von durchschnittlich 8,33 ms liegt weit unter den kritischen Schwellenwerten fü...`
- Line 33: `Die Implementierung von Atlas VTT demonstriert, dass performante VTT-Plugins in Obsidian grundsätzli...`

---

