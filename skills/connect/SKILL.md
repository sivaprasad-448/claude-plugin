---
name: connect
description: Connect Claude Code to a Lightup instance. Use this when the user wants to set up or configure their Lightup connection.
---

Help the user connect Claude Code to their Lightup instance.

1. Ask the user for three things:
   - Their Lightup MCP server URL (e.g. https://mcp.acme.lightup.ai)
   - Their Lightup instance URL (e.g. https://app.acme.lightup.ai)
   - Their Lightup refresh token (found at Lightup → Settings → API → Refresh Token)

2. Run this command with their values substituted:
   claude mcp add --transport sse lightup "<mcp-url>/sse?host=<instance-url>&refresh_token=<token>" -s user

3. Tell the user: "Connected! You can now ask questions about your data. Try: 'What metrics do I have?' or 'Show me recent incidents'."
