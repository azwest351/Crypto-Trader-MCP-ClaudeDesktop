# CoinGecko MCP Installation Guide

## Overview
This is a high-rating Model Context Protocol (MCP) server that provides real-time cryptocurrency data from CoinGecko API. Perfect for Claude Desktop integration!

⭐ **Features:**
- Real-time crypto prices and market data
- Historical price charts
- Trending cryptocurrencies
- Global market statistics
- Search functionality
- Zero API key required (uses free CoinGecko API)

## Prerequisites
- Python 3.10 or higher
- Claude Desktop application
- Git (for cloning)

## Installation Steps

### 1. Clone the Repository
```bash
git clone https://github.com/azwest351/Crypto-Trader-MCP-ClaudeDesktop.git
cd Crypto-Trader-MCP-ClaudeDesktop
```

### 2. Install Dependencies
```bash
pip install -r requirements.txt
```

If you don't have the requirements.txt, install manually:
```bash
pip install fastmcp pycoingecko pandas
```

### 3. Test the Installation
```bash
python main.py
```
You should see the MCP server start successfully.

### 4. Configure Claude Desktop

#### For Windows:
Edit your Claude Desktop configuration file located at:
`%APPDATA%\Claude\claude_desktop_config.json`

Add this configuration:
```json
{
  "mcpServers": {
    "crypto-trader": {
      "command": "python",
      "args": ["C:\\path\\to\\your\\Crypto-Trader-MCP-ClaudeDesktop\\main.py"],
      "env": {}
    }
  }
}
```

#### For macOS:
Edit the configuration file at:
`~/Library/Application Support/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "crypto-trader": {
      "command": "python3",
      "args": ["/path/to/your/Crypto-Trader-MCP-ClaudeDesktop/main.py"],
      "env": {}
    }
  }
}
```

#### For Linux:
Edit the configuration file at:
`~/.config/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "crypto-trader": {
      "command": "python3",
      "args": ["/path/to/your/Crypto-Trader-MCP-ClaudeDesktop/main.py"],
      "env": {}
    }
  }
}
```

**Important:** Replace the path with the absolute path to your main.py file!

### 5. Restart Claude Desktop
Close and reopen Claude Desktop for the changes to take effect.

## Available Commands

Once installed, you can ask Claude questions like:

### Price Queries
- "What's the current price of Bitcoin?"
- "Show me Ethereum's price and 24h change"
- "Get the price of DOGE"

### Market Data
- "Show me detailed market data for Bitcoin"
- "What's the market cap of Ethereum?"
- "Get trading volume for BTC"

### Historical Data
- "Show me Bitcoin's price history for the last 30 days"
- "Get Ethereum price chart for the past week"

### Search & Discovery
- "Search for cryptocurrencies containing 'sol'"
- "What cryptocurrencies are trending today?"
- "Show me global crypto market stats"

## Troubleshooting

### Common Issues:

1. **"Command not found" error:**
   - Make sure Python is in your system PATH
   - Try using `python3` instead of `python` in the config

2. **Import errors:**
   - Ensure all dependencies are installed: `pip install -r requirements.txt`
   - Check Python version: `python --version` (needs 3.10+)

3. **MCP server not connecting:**
   - Verify the path in your configuration is absolute and correct
   - Check that the server starts without errors: `python main.py`
   - Restart Claude Desktop after configuration changes

4. **API rate limits:**
   - The free CoinGecko API has rate limits
   - Avoid making too many rapid requests

### Debug Mode:
To see detailed logs, run the server manually:
```bash
python main.py
```

This will show any connection attempts and errors.

## API Coverage

This MCP server provides access to:
- ✅ Real-time prices (1000+ cryptocurrencies)
- ✅ Market data (market cap, volume, supply, etc.)
- ✅ Historical prices (up to 365 days)
- ✅ Search functionality
- ✅ Trending cryptocurrencies
- ✅ Global market statistics
- ✅ All-time high/low data
- ✅ 24h price changes and volume

## Performance
- **Response time:** < 2 seconds for most queries
- **Rate limits:** ~50 requests/minute (CoinGecko free tier)
- **Data freshness:** Real-time (updated every ~1 minute)

## Support
If you encounter issues:
1. Check the troubleshooting section above
2. Verify your configuration matches the examples
3. Test the server runs independently: `python main.py`
4. Check Claude Desktop logs for connection errors

## License
MIT License - Feel free to modify and distribute!
