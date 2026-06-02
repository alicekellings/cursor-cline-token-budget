# Cursor

Cursor can route requests to any OpenAI-compatible endpoint (BYOK).

1. **Settings > Models.**
2. Put your API key in the **OpenAI API Key** field.
3. Enable **Override OpenAI Base URL** and set it to:
   - `https://api.wappkit.com/v1`
4. Add the model name(s) you want as custom models - use the exact names shown in
   the gateway's model marketplace (e.g. `gpt-5.5`).
5. Save and send a test message.

Notes:

- Cursor's settings UI shifts between versions; the three things you're looking
  for are the **API key**, the **base URL override**, and a **custom model name**.
- Some Cursor features (Tab, certain agent modes) only run on Cursor's own
  backend and ignore a custom base URL. Chat and the model picker honor it.
- To cap spend, point Cursor at a token that has a quota set on it (see the
  [README](../README.md)).
