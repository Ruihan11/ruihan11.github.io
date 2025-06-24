#!/usr/bin/env bash
# git_quick_push.sh
# Usage: ./git_quick_push.sh "Your commit message"

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Error: commit message required."
  echo "Usage: $0 \"Your commit message\""
  exit 1
fi

# 1. Stage all changes
git add .

# 2. Rename current branch to main (if not already)
git branch -M main

# 3. Commit with provided message
git commit -m "$1"

# 4. Push to origin/main, set upstream if needed
git push -u origin main
