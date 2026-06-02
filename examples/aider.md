# Aider

Aider talks to any OpenAI-compatible endpoint through its OpenAI provider.

Environment variables:

```bash
export OPENAI_API_BASE="https://api.wappkit.com/v1"
export OPENAI_API_KEY="YOUR_TOKEN"
aider --model openai/gpt-5.5
```

Or as flags:

```bash
aider \
  --openai-api-base "https://api.wappkit.com/v1" \
  --openai-api-key "YOUR_TOKEN" \
  --model openai/gpt-5.5
```

Use the exact model name from the marketplace. Aider prints token usage and an
estimated cost after each exchange, which pairs well with a quota-capped token.
