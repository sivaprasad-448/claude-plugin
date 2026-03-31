#!/usr/bin/env bash
set -e

PLUGIN_DIR="$HOME/.lightup/claude-plugin"

echo "Installing Lightup Claude Code plugin..."

# Remove old version if exists
rm -rf "$PLUGIN_DIR"

# Clone plugin
git clone --depth 1 https://github.com/sivaprasad-448/claude-plugin.git "$PLUGIN_DIR"

echo ""
echo "✅ Plugin installed. Run:"
echo ""
echo "   claude --plugin-dir $PLUGIN_DIR"
echo ""
echo "Then type /lightup:connect inside Claude Code."
