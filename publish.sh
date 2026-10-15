#!/bin/bash
# Publishes the Rivet 3 Component Guide to GitHub Pages.
# First run: creates the repo and turns on Pages. Later runs: commits and pushes changes.
set -e
cd "$(dirname "$0")"

OWNER="manselldesign"
REPO="rivet-component-guide"
URL="https://$OWNER.github.io/$REPO/"

GH="$(command -v gh || true)"
[ -z "$GH" ] && [ -x "$HOME/.local/bin/gh" ] && GH="$HOME/.local/bin/gh"
[ -z "$GH" ] && [ -x /opt/homebrew/bin/gh ] && GH=/opt/homebrew/bin/gh
[ -z "$GH" ] && { echo "GitHub CLI (gh) not found. Install it with: brew install gh"; exit 1; }

"$GH" auth status >/dev/null 2>&1 || "$GH" auth login --web
"$GH" auth switch -u "$OWNER" >/dev/null 2>&1 || true
"$GH" auth setup-git >/dev/null 2>&1 || true

if [ ! -d .git ]; then
  git init -q -b main
fi

git add -A
git commit -q -m "Update guide $(date '+%Y-%m-%d %H:%M')" || echo "No new changes to commit."

if ! git remote get-url origin >/dev/null 2>&1; then
  if "$GH" repo view "$OWNER/$REPO" >/dev/null 2>&1; then
    git remote add origin "https://github.com/$OWNER/$REPO.git"
  else
    "$GH" repo create "$OWNER/$REPO" --public --description "Rivet 3 Component Guide" --source . --remote origin
  fi
fi

git push -q -u origin main

if ! "$GH" api "repos/$OWNER/$REPO/pages" >/dev/null 2>&1; then
  "$GH" api -X POST "repos/$OWNER/$REPO/pages" -f "source[branch]=main" -f "source[path]=/" >/dev/null
  echo "GitHub Pages is on. The first build takes a minute or two."
fi

echo ""
echo "Published: $URL"
