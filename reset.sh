#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for dir in "$SCRIPT_DIR" "$SCRIPT_DIR/packages/a" "$SCRIPT_DIR/packages/b"; do
  echo "Removing .dart_tool in $dir"
  (cd "$dir" && rm -rf .dart_tool)
done
