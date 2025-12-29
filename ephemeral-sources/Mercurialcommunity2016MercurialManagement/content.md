# Mercurial: A Distributed Version Control System

## Core Definition
Mercurial is "a free, distributed source control management tool" that enables efficient project handling through an intuitive interface that is "easy to use and hard to break."

## Key Features

**Distributed Architecture**
Unlike centralized systems such as Subversion, Mercurial provides each developer with a complete local copy of the project's development history. This design enables independent work regardless of network connectivity, with committing, branching, and merging operations that are both fast and efficient.

**Performance**
The system's implementation prioritizes speed through optimized data structures. Users can generate diffs and navigate historical revisions in seconds, making it suitable for large-scale projects like Firefox and Heptapod.

**Cross-Platform Support**
Written primarily in Python with performance-critical components in portable C, Mercurial offers binary releases across major platforms. Development includes growing Rust components, with Linux support currently official.

**Extensibility**
Functionality expands through extensions—both official ones bundled with Mercurial and community-developed options. These Python-based extensions can modify existing commands, introduce new functionality, and access core system features.

**User-Friendly Design**
The command structure resembles Subversion, facilitating adoption by existing users. Potentially risky operations require explicit extension activation, keeping the base interface straightforward and safe.

## Licensing
Mercurial operates under the GNU General Public License Version 2 or any subsequent version, establishing it as free software within the open-source community.
