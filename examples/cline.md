# Cline

Cline (the VS Code extension) supports OpenAI-compatible providers directly.

1. Open the Cline panel > **Settings** (gear icon).
2. **API Provider:** choose **OpenAI Compatible**.
3. **Base URL:**
   - `https://api.wappkit.com/v1`
4. **API Key:** your token.
5. **Model ID:** the exact model name from the marketplace (e.g. `gpt-5.5`).
6. Save and start a task.

To cap spend on a long agent run, point Cline at a token that has a fixed quota,
then watch the `usage` numbers (or the gateway's log view) as the run proceeds.
