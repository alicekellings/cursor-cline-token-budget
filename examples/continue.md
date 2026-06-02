# Continue

Continue can use an OpenAI-compatible gateway by configuring the OpenAI provider
with an explicit `apiBase`.

Example:

```yaml
models:
  - name: Wappkit GPT-5.5
    provider: openai
    model: gpt-5.5
    apiBase: https://api.wappkit.com/v1
    apiKey: YOUR_TOKEN
    roles:
      - chat
      - edit
      - apply
```

Things to check:

1. Keep the `/v1` suffix on `apiBase`.
2. Use the exact model ID shown by the gateway.
3. Use a token with a small quota for long agent runs.

If a request fails, compare the gateway log with a direct curl request using the
same base URL, key, and model.
