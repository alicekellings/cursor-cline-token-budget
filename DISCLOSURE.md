# Disclosure

This guide is maintained by the team behind **Wappkit**
(<https://api.wappkit.com>), an OpenAI-compatible API gateway. The examples use
Wappkit as the endpoint because that's what we run.

The techniques here - capping a token's quota and reading the `usage` field - are
standard OpenAI-compatible / New API features and work the same on other
gateways. If you prefer a different provider, change the base URL and key and the
rest of the guide still applies.

We don't claim Wappkit is the cheapest or the most reliable option. Compare
pricing and test against your own workload before committing.
