#!/bin/bash
set -e

echo "Installing dotfiles..."

# Claude agents
mkdir -p ~/.claude/agents
cp claude/agents/*.md ~/.claude/agents/
echo "✓ Claude agents installed"

# Claude global settings (있는 경우만)
if [ -f claude/settings.json ]; then
  cp claude/settings.json ~/.claude/settings.json
  echo "✓ Claude settings installed"
fi

# Claude global instructions (있는 경우만)
if [ -f claude/CLAUDE.md ]; then
  cp claude/CLAUDE.md ~/.claude/CLAUDE.md
  echo "✓ Claude CLAUDE.md installed"
fi

echo ""
echo "Done! Restart Claude Code to apply changes."
