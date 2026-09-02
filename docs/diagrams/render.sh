#!/usr/bin/env bash
# render.sh ;;; render every .puml file under docs/diagrams/ to .png using PlantUML.
# Usage:
#   bash docs/diagrams/render.sh                # render every .puml to .png next to source
#   bash docs/diagrams/render.sh path/to/x.puml # render a single source
#
# Requires either:
#   - plantuml on PATH (apt-get install plantuml)
#   - java on PATH plus plantuml.jar next to this script
#
# PlantUML server: a Docker image is available ;;; see https://plantuml.com/starting

set -euo pipefail

if command -v plantuml >/dev/null 2>&1; then
  RENDERER="plantuml"
elif [ -f "$(dirname "$0")/plantuml.jar" ] && command -v java >/dev/null 2>&1; then
  RENDERER="java -jar $(dirname "$0")/plantuml.jar"
else
  cat >&2 <<'EOF'
ERROR: plantuml not found. Install one of:
  apt-get install plantuml
  brew install plantuml
Or drop plantuml.jar next to this script and have java on PATH.

PlantUML home: https://plantuml.com/starting
EOF
  exit 1
fi

render_one() {
  local src="$1"
  if [ ! -f "$src" ]; then
    echo "skip: $src not found"
    return 0
  fi
  echo "render: $src"
  $RENDERER -tpng "$src"
}

if [ "$#" -gt 0 ]; then
  for f in "$@"; do
    render_one "$f"
  done
else
  while IFS= read -r -d '' f; do
    render_one "$f"
  done < <(find "$(dirname "$0")" -name "*.puml" -print0)
fi

echo "render complete"