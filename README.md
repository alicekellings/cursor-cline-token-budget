# cursor-cline-token-budget

Practical token-budgeting and usage-transparency setup for agentic coding tools
(Cursor, Cline, Continue, Roo Code, Aider) running on an OpenAI-compatible API
gateway.

> **Who maintains this:** the team behind [Wappkit](https://api.wappkit.com), an
> OpenAI-compatible API gateway. The examples point at Wappkit, but every step
> works with any OpenAI-compatible endpoint - swap the base URL and key.
> See [DISCLOSURE.md](DISCLOSURE.md).

## Why this exists

Agentic coding tools resend a growing conversation each turn. Once history stops
being trimmed, every turn re-sends the whole thing, so token usage climbs on a
curve instead of staying flat. On a long run that gets expensive fast, and a
runaway loop can drain a balance before you notice.

Two things actually help:

1. **Cap each token.** Give a single task or agent run its own API key with a
   fixed quota. A runaway loop can only spend that key's budget, not your whole
   balance. (Gateways built on New API - including Wappkit - let you set a quota
   per token when you create it.)
2. **Read per-call usage.** Every OpenAI-compatible response carries a `usage`
   object with `prompt_tokens`, `completion_tokens`, and `total_tokens`. Watch it
   and you catch a blowup while it's happening, not on the invoice.

## Base URL

```text
https://api.wappkit.com/v1
```

Get a key: sign up and top up at <https://api.wappkit.com>, then create a token
under **Token Management** (set a quota on it if you want a hard cap).

> **Access note:** Wappkit currently does not provide service access from
> mainland China. There is no alternate mainland endpoint.

## Tool setup

- [Cursor](examples/cursor.md)
- [Cline](examples/cline.md)
- [Continue](examples/continue.md)
- [Roo Code](examples/roo-code.md)
- [Aider](examples/aider.md)

## Verify

Run [examples/smoke-test.sh](examples/smoke-test.sh) to check connectivity, print
the `usage` block, and test whether your endpoint returns `reasoning_content`
(not every provider passes it through).

## Pricing

Pricing varies by model and token group; check the model marketplace for current
numbers. No stability or SLA guarantees are implied - test against your own
workload before you rely on it.
