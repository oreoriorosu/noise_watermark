#!/usr/bin/env bash
# Simple helper to write commit message to a file before committing
# Usage: ./commit_message_helper.sh "Your commit message"
if [ -z "$1" ]; then
  echo "Usage: $0 \"commit message\""
  exit 1
fi
mkdir -p .github
msgfile=".github/last_commit_message.txt"
echo "$1" > "$msgfile"
echo "Wrote commit message to $msgfile"
