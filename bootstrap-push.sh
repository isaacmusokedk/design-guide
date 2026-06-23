#!/usr/bin/env bash
# bootstrap-push.sh
# Run once: creates the remote repo and pushes everything.
# Prerequisites: GITHUB_TOKEN env var set, git installed.
set -euo pipefail

GITHUB_USER="isaacmusokedk"
REPO_NAME="design-guide"
TOKEN="${GITHUB_TOKEN:?GITHUB_TOKEN must be set}"

echo "Creating repo ${GITHUB_USER}/${REPO_NAME} on GitHub..."
curl -s -X POST \
  -H "Authorization: Bearer ${TOKEN}" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"${REPO_NAME}\",\"description\":\"Design guide template — WS-007\",\"private\":false,\"auto_init\":false}" \
  | python3 -c "import sys,json; d=json.load(sys.stdin); print('Repo URL:', d.get('html_url', d))"

echo "Initialising local git and pushing..."
git init -b main
git add .
git commit -m "chore: initial scaffold — MkDocs Material + GitHub Actions deploy"
git remote add origin "https://${TOKEN}@github.com/${GITHUB_USER}/${REPO_NAME}.git"
git push -u origin main

echo ""
echo "Done. GitHub Pages source must be set to 'GitHub Actions' in:"
echo "https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
