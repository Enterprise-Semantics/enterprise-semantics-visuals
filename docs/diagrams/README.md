# docs/diagrams/

Source directory for every diagram used across the Enterprise-Semantics program.

## Layout

```text
architecture/      ; architecture diagrams (stack, integration, governance loop)
semantic-maps/     ; semantic maps (concept clusters, relationships)
lifecycle/         ; lifecycle diagrams (Candidate, Canonical, ...)
comparative/       ; Agentic vs Autonomous, Value Stream vs Process, etc.
application/       ; example diagrams from worked examples
```

## Conventions

- Sources are PlantUML (`.puml`), Mermaid (`.mmd`), or raw SVG.
- Each source has a sibling render: `<name>.png` or `<name>.svg`.
- Renders are generated from sources. Never hand-edit a render.
- Each source file begins with a header comment block describing the diagram, its origin finding (FND-ES-NNN), and the date it was generated.
