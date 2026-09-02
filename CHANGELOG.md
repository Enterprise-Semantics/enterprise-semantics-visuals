# Changelog

All notable changes to this repository are documented in this file. Dates use
the committer's local time.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) semantics.
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned

- 7 architectural diagrams from FND-ES-000 land in Phase 2.9.

## [0.0.2] ; 2026-09-02 ; Architectural diagrams seeded (Phase 2.9)

### Added

- 7 PlantUML sources under `docs/diagrams/`:
  - `architecture/section-3-semantic-architecture.puml` ;;; FND-ES-000 §3.
  - `publication/section-4-publication-plane.puml` ;;; FND-ES-000 §4.
  - `architecture/section-6-structured-source.puml` ;;; FND-ES-000 §6.
  - `integration/section-9-bidirectional-integration.puml` ;;; FND-ES-000 §9.
  - `publication/section-11-open-by-default.puml` ;;; FND-ES-000 §11.
  - `governance/section-23-operating-model.puml` ;;; FND-ES-000 §23.
  - `architecture/section-25-architectural-outcome.puml` ;;; FND-ES-000 §25.
- `docs/diagrams/render.sh` ;;; PlantUML renderer (apt-get plantuml, brew plantuml, or plantuml.jar).

### Known gap

- PNG renders pending. Phase 5 wires PlantUML into CI so renders are regenerated on every push.

## [0.0.1] ; 2026-09-02 ; Skeleton

### Added

- README.md (purpose, ownership, status, relationship to other repos).
- CODEOWNERS (sole owner: @emmanuel-a-otchere).
- CHANGELOG.md (this file).
- .gitignore (credential, AI-model, and workspace-noise patterns).
- LICENSE (Apache-2.0).
- `docs/diagrams/` directory with README.
