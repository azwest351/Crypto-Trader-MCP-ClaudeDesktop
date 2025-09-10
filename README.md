# 🚀 CoinGecko MCP for Claude Desktop

[![Python 3.10+](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![CoinGecko API](https://img.shields.io/badge/API-CoinGecko-green.svg)](https://www.coingecko.com/api)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A high-quality Model Context Protocol (MCP) server that provides real-time cryptocurrency market data using the CoinGecko API, specifically designed for seamless integration with Claude Desktop.

## ✨ Features

- 📈 **Real-time cryptocurrency prices** - Get live price data for 1000+ cryptocurrencies
- 📊 **Comprehensive market data** - Market cap, volume, supply, rankings, and more
- 📉 **Historical price charts** - Access up to 365 days of historical data
- 🔍 **Powerful search** - Find cryptocurrencies by name or symbol
- 🌟 **Trending data** - Discover what's hot in the crypto world
- 🌍 **Global market stats** - Total market cap, dominance, and market overview
- ⚡ **Zero API key required** - Uses free CoinGecko API
- 🛠 **Easy installation** - Automated setup script included

## 🚀 Quick Start

### Option 1: Automated Installation (Recommended)

```bash
# Clone the repository
git clone https://github.com/azwest351/Crypto-Trader-MCP-ClaudeDesktop.git
cd Crypto-Trader-MCP-ClaudeDesktop

# Run the installation script
chmod +x install.sh
./install.sh
```

### Option 2: Manual Installation

```bash
# Clone and setup
git clone https://github.com/azwest351/Crypto-Trader-MCP-ClaudeDesktop.git
cd Crypto-Trader-MCP-ClaudeDesktop

# Install dependencies
pip install -r requirements.txt

# Test the server
python main.py
```

## ⚙️ Claude Desktop Configuration

Add to your Claude Desktop config file:

**Windows:** `%APPDATA%\\Claude\\claude_desktop_config.json`
**macOS:** `~/Library/Application Support/Claude/claude_desktop_config.json`
**Linux:** `~/.config/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "crypto-trader": {
      "command": "python3",
      "args": ["/absolute/path/to/your/main.py"],
      "env": {}
    }
  }
}
```

## 🗣️ Example Queries

Once installed, ask Claude:

### 💰 Price Queries
- *"What's the current price of Bitcoin?"*
- *"Show me Ethereum's price and 24h change"*
- *"Get the latest prices for BTC, ETH, and ADA"*

### 📊 Market Analysis
- *"Show me detailed market data for Solana"*
- *"What's the market cap ranking of Cardano?"*
- *"Compare market caps of top 5 cryptocurrencies"*

### 📈 Historical Data
- *"Show Bitcoin's price chart for the last 30 days"*
- *"What was Ethereum's performance this week?"*
- *"Get historical data for DOGE over 90 days"*

### 🔍 Discovery
- *"Search for cryptocurrencies with 'meta' in the name"*
- *"What are the trending cryptocurrencies today?"*
- *"Show me global crypto market statistics"*

## 🛠️ Available Tools

| Tool | Description | Example Usage |
|------|-------------|---------------|
| `get_crypto_price` | Real-time price and 24h change | Current Bitcoin price |
| `get_crypto_market_data` | Detailed market information | Ethereum market analysis |
| `get_crypto_historical_data` | Historical price charts | 30-day Bitcoin chart |
| `search_crypto` | Find cryptocurrencies | Search for "solana" |
| `get_trending_crypto` | Hot cryptocurrencies | Today's trending coins |
| `get_global_crypto_data` | Global market overview | Total market cap |

## 📋 Requirements

- **Python:** 3.10 or higher
- **Dependencies:** Automatically installed via `requirements.txt`
- **Claude Desktop:** Latest version
- **Internet:** Required for API access

## 🔧 Troubleshooting

### Common Issues:

**🚫 MCP Server Not Connecting:**
- Ensure absolute path in configuration
- Restart Claude Desktop after config changes
- Test server independently: `python main.py`

**🐍 Python Issues:**
- Check version: `python --version` (needs 3.10+)
- Try `python3` instead of `python`
- Ensure Python is in system PATH

**📦 Dependency Errors:**
- Run: `pip install -r requirements.txt`
- Use virtual environment if needed
- Check internet connection

**⚡ API Rate Limits:**
- CoinGecko free API: ~50 requests/minute
- Avoid rapid consecutive requests
- Data updates every ~1 minute

## 📊 Data Coverage

- **Cryptocurrencies:** 13,000+ supported
- **Price Data:** Real-time updates
- **Historical Range:** Up to 365 days
- **Market Data:** Comprehensive metrics
- **Global Stats:** Market-wide analytics
- **Update Frequency:** ~1 minute

## 🎯 Performance

- **Response Time:** < 2 seconds typical
- **Uptime:** 99.9% (depends on CoinGecko API)
- **Data Accuracy:** Real-time market data
- **Memory Usage:** < 50MB typical

## 📚 Documentation

- **Detailed Setup:** See [INSTALLATION.md](INSTALLATION.md)
- **API Reference:** [CoinGecko API Documentation](https://www.coingecko.com/en/api/documentation)
- **Troubleshooting:** Check installation guide

## 🤝 Contributing

Contributions welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [CoinGecko](https://www.coingecko.com) for providing free cryptocurrency API
- [FastMCP](https://github.com/jlowin/fastmcp) for the MCP framework
- Original implementation by [SaintDoresh](https://github.com/SaintDoresh)

## ⭐ Star This Repo

If this MCP server helps you track crypto markets with Claude, please give it a star! ⭐

---

**Ready to get started?** Clone the repo and run `./install.sh` to begin tracking crypto prices with Claude Desktop! 🚀
