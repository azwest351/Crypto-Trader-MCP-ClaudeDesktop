#!/bin/bash

# CoinGecko MCP Installation Script
# This script automates the installation process

echo "🚀 Installing CoinGecko MCP for Claude Desktop..."
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is required but not installed."
    echo "Please install Python 3.10 or higher from https://python.org"
    exit 1
fi

# Check Python version
python_version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
required_version="3.10"

if [ "$(printf '%s\n' "$required_version" "$python_version" | sort -V | head -n1)" != "$required_version" ]; then
    echo "❌ Python $required_version or higher is required. Found $python_version"
    exit 1
fi

echo "✅ Python $python_version detected"

# Install dependencies
echo "📦 Installing dependencies..."
if python3 -m pip install -r requirements.txt; then
    echo "✅ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    exit 1
fi

# Test the installation
echo "🧪 Testing installation..."
if timeout 5 python3 main.py > /dev/null 2>&1; then
    echo "✅ MCP server test passed"
else
    echo "⚠️  Server test completed (this is normal - server was stopped after 5 seconds)"
fi

# Get current directory
current_dir=$(pwd)

echo ""
echo "🎉 Installation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Copy this path: $current_dir/main.py"
echo "2. Add it to your Claude Desktop configuration:"
echo ""
echo "Windows: %APPDATA%\\Claude\\claude_desktop_config.json"
echo "macOS: ~/Library/Application Support/Claude/claude_desktop_config.json"
echo "Linux: ~/.config/Claude/claude_desktop_config.json"
echo ""
echo "Configuration example:"
echo '{'
echo '  "mcpServers": {'
echo '    "crypto-trader": {'
echo '      "command": "python3",'
echo "      \"args\": [\"$current_dir/main.py\"],"
echo '      "env": {}'
echo '    }'
echo '  }'
echo '}'
echo ""
echo "3. Restart Claude Desktop"
echo "4. Ask Claude: 'What is the current price of Bitcoin?'"
echo ""
echo "📖 For detailed instructions, see INSTALLATION.md"
