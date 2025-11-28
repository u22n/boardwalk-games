#!/usr/bin/env bash
set -euo pipefail


ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST_DIR="$ROOT_DIR/docs"

echo "Syncing $ROOT_DIR -> $DEST_DIR"
mkdir -p "$DEST_DIR"

rsync -av --delete \
  --exclude='.git' \
  --exclude='docs' \
  --exclude='.github' \
  --exclude='scripts' \
  --exclude='node_modules' \
  --exclude='.DS_Store' \
  "$ROOT_DIR/" "$DEST_DIR/"

cd "$ROOT_DIR"

git add docs

if git diff --cached --quiet; then
  echo "No changes to commit in docs/."
else
  echo "Changes staged in docs/. Commit them with: git commit -m 'chore: sync root -> docs' && git push"
fi

echo "Done."
