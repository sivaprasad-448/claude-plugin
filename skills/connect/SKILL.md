---
name: connect
description: Connect Claude Code to a Lightup instance using a credentials file. Use this when the user wants to set up or configure their Lightup connection.
---

Help the user connect Claude Code to their Lightup instance using their credentials file.

1. Ask the user for two things:
   - Path to their Lightup credentials JSON file (downloaded from Lightup → Settings → API → Download Credentials)
   - Their Lightup MCP server URL (provided by the Lightup team, e.g. https://mcp.lightup.ai)

2. Read the credentials file and extract host + token:
   ```
   python3 -c "import json; d=json.load(open('<path-to-credentials.json>')); print('server:', d['data']['server']); print('token:', d['data']['refresh'])"
   ```

3. Run claude mcp add with the extracted values:
   ```
   claude mcp add --transport sse lightup "<mcp-url>/sse?host=<data.server>&refresh_token=<data.refresh>" -s user
   ```

4. Tell the user: "Connected! You can now ask questions about your data. Try: 'What metrics do I have?' or 'Show me recent incidents'."
