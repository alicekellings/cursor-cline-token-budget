# Roo Code

For an OpenAI-compatible provider, the important fields are the base URL, API
key, and exact model ID. If Roo CLI exposes the same shape as the extension, a
minimal setup should look like this:

```bash
roo --provider openai-compatible \
  --base-url https://api.wappkit.com/v1 \
  --api-key YOUR_TOKEN \
  --model gpt-5.5
```

Use a quota-capped token when testing autonomous runs. That makes failed loops
bounded and keeps the request log easier to inspect.

If OpenAI Compatible works but another provider path does not, compare:

1. The exact outbound URL.
2. The model ID sent by the client.
3. The request body received by the gateway.
