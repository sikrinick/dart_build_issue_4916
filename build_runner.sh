#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for dir in "$SCRIPT_DIR" "$SCRIPT_DIR/packages/a" "$SCRIPT_DIR/packages/b"; do
  echo "Running build_runner in $dir"
  (cd "$dir" && dart run build_runner build)
done
