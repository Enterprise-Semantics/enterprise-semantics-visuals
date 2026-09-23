# Changelog

All notable changes to this repository are documented in this file. Dates use
the committer's local time.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) semantics.
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned

- PNG renders of all PlantUML sources ;;; pending PlantUML install in CI.
- Additional concept-specific diagrams ;;; Agentic Value Stream (held for ADR-ES-005), Autonomous Operations (held for ADR-ES-007).

## [0.5.0] ; 2026-09-23 ; VS-D2b ;;; 3 Agentic Workflow PlantUML sources per CR-ES-006 §24 + §25 + §26 + ADR-ES-006 §22

### Added

- docs/diagrams/agentic-workflow/agentic-workflow.puml ;;; 7 canonical relationships + 1 inverse
- docs/diagrams/agentic-workflow/agentic-workflow-execution.puml ;;; dynamic decision boundary ;; bounded authority ;; runtime adaptation
- docs/diagrams/agentic-workflow/workflow-vs-agentic-workflow.puml ;;; conventional vs agentic comparison

### Cardinal rules

- Author: Emmanuel A. Otchere on all 3 .puml files
- D-004 clean ;;; 0 forbidden glyphs
- No vendor-specific material from embargoed sources

## [0.4.0] ; 2026-09-23 ; VS-D2b ;; 3 Agentic Value Stream PlantUML sources per CR-ES-005 §17 + §18 + ADR-ES-005 §7 + §15

### Added

- docs/diagrams/agentic-value-stream/agentic-value-stream.puml ;; relational diagram ;; 5 canonical relationships (specializes ;; contains ;; engages ;; agent.realises ;; realises)
- docs/diagrams/agentic-value-stream/value-stream-vs-agentic-value-stream.puml ;; classic vs agentic comparison ;; 12 nodes in classic ;; 12 nodes in agentic ;; makes clear the value journey remains the same ;; the realisation mechanism becomes capable of agency
- docs/diagrams/agentic-value-stream/agentic-value-stream-boundary.puml ;; 6 boundary distinctions ;; AVS-INV-003..007

### Cardinal rules

- Author: Emmanuel A. Otchere on all 3 .puml files
- D-004 clean ;; 0 forbidden glyphs
- No vendor-specific material from embargoed sources

## [0.3.0] ; 2026-09-23 ; CR-ES-002 Capability PlantUML visuals (parallel slice from v3.1.12 held items)

### Added

- docs/diagrams/capability/capability.puml ;;; Capability semantic concept visualization per CR-ES-002 §4 + ADR-ES-002 §1.1 + §1.4 ;;; 9 Capability relationships ;;; Entity possesses Capability
- docs/diagrams/capability/capability-boundary.puml ;;; Capability semantic boundary analysis per CR-ES-002 §10 + ADR-ES-002 §7 + §10 + §11 ;;; 8 distinctions (vs Process/Workflow/Function/Activity/Task/Role/Service/System) ;;; 5 architectural invariants CAP-INV-001..005
- docs/diagrams/capability/capability-process-boundary.puml ;;; Capability-Process-Workflow boundary visualization per CR-ES-002 §11 + ADR-ES-002 §7 + §8 + §16 ;;; the critical boundary between Capability (enduring ability), Process (execution), and Workflow (coordination)

### Cardinal rules

- Author: Emmanuel A. Otchere on all 3 .puml files
- D-004 clean ;;; 0 forbidden glyphs
- No vendor-specific material from embargoed sources

## [0.2.0] ; 2026-09-23 ; VS-D2b Agentic PlantUML visuals

### Added

- `docs/diagrams/agentic/agentic.puml` ;;; Agentic semantic concept visualization per CR-ES-004 §28 + ADR-ES-004 §4.1 + §6 + §14 + §17 ;;; core agentic execution pattern ;;; 9 nodes (Intent + Agent + Context + Authority + Goal + Action Selection + Action + Outcome + Contextual Adaptation loop)
- `docs/diagrams/agentic/agentic-boundary.puml` ;;; Agentic vs Automation boundary visualization per CR-ES-004 §12 + ADR-ES-004 §8 + AG-INV-002 ;;; 2 packages (Conventional Automation vs Agentic Operation) ;;; 6 characteristics annotated
- `docs/diagrams/agentic/agentic-autonomous-boundary.puml` ;;; Agentic vs Autonomous boundary visualization per CR-ES-004 §14 + ADR-ES-004 §9 + AG-INV-003 + AG-INV-010 ;;; 2 packages (Agentic foundational vs Autonomous advanced separately governed) ;;; boundary marker AG-INV-003 ;;; may-evolve-toward relationship

### Cardinal rules

- Author: Emmanuel A. Otchere on all 3 .puml files (PlantUML `'` comment convention)
- D-004 clean ;;; 0 forbidden glyphs on all 3 files
- No vendor-specific material from embargoed sources

## [0.1.0] ; 2026-09-23 ; VS-D2b Value Stream PlantUML visuals

### Added

- `docs/diagrams/value-stream/value-stream.puml` ;;; Value Stream canonical model per CR-ES-003 §28 + ADR-ES-003 §12 + §20. Captures ValueStream "1" *-- "1..*" ValueStage ;;; the 8 Value Stream relationships ;;; architectural invariants from ADR-ES-003 §32.
- `docs/diagrams/value-stream/value-stream-boundary.puml` ;;; Value Stream semantic boundary analysis per CR-ES-003 §28 + ADR-ES-003 §7. The 12-row boundary table ;;; the 11 architectural invariants VS-INV-001..011.
- `docs/diagrams/value-stream/value-stream-process-boundary.puml` ;;; critical Value Stream vs Process boundary per CR-ES-003 §28 + §8 + §16 + §17 + ADR-ES-003 §8 + §16. Layered hierarchy (Value Realization / Execution / Implementation) ;;; the 4 rejected alternatives from ADR-ES-003 §31.

### Scope

This release implements VS-D2b of CR-ES-003 ;;; the 3 PlantUML sources from CR-ES-003 §28. The diagrams are sources only ;;; PNG rendering requires PlantUML install in the CI runner (a separate wiring concern). The existing render.sh script (from [0.0.2]) handles rendering when PlantUML is available.

### Governance

- ADR-ES-003 (Proposed, governance slot 0005) ;;; ratifies the foundational Value Stream decision ;;; §7, §12, §20 are the diagram anchors.
- CR-ES-003 (Proposed, governance slot 0011) ;;; carries §28 visual model requirements.

### Cardinal rules applied

- Author comment in each diagram header ;;; per existing convention.
- No en-dash (U+2013) or em-dash (U+2014) in any diagram source (D-004 dash rule).
- No vendor-specific material from embargoed sources in any diagram (cardinal embargo, 2026-09-22).
- ES is sourced from SDO-neutral standardisation only (ISO/IEC, ITU-T, ETSI, NIST).

### Held non-actions

- PNG renders (held for PlantUML CI integration, separate slice).
- ADR-ES-003 promotion to Accepted (gated on CR-ES-003 implementation completion).
- Release tag (per v3.1.4 user directive).

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
