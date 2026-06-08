#!/usr/bin/env bash
# OpenAI-compatible gateway 冒烟测试。
# 检查：连通性、单次请求 usage，以及是否透传 reasoning_content。
#
# 用法：
#   BASE_URL=https://api.wappkit.com/v1 TOKEN=sk-xxx MODEL=gpt-5.5 ./smoke-test.sh
#
# 依赖：curl, jq

set -euo pipefail

BASE_URL="${BASE_URL:-https://api.wappkit.com/v1}"
TOKEN="${TOKEN:?set TOKEN to your API key}"
MODEL="${MODEL:-gpt-5.5}"

echo "== 1. Connectivity + usage =="
curl -sS "$BASE_URL/chat/completions" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"$MODEL\",\"messages\":[{\"role\":\"user\",\"content\":\"say hi in one word\"}],\"stream\":false}" \
  | jq '{model, content: .choices[0].message.content, usage}'

echo
echo "== 2. reasoning_content passthrough / non-stream (may be empty - not all providers send it) =="
curl -sS "$BASE_URL/chat/completions" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"$MODEL\",\"messages\":[{\"role\":\"user\",\"content\":\"Think step by step: what is 17*23?\"}],\"reasoning_effort\":\"high\",\"stream\":false}" \
  | jq '.choices[0].message | {has_reasoning: has("reasoning_content"), reasoning_content}'

echo
echo "== 3. reasoning_content passthrough / stream =="
curl -sS -N "$BASE_URL/chat/completions" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"$MODEL\",\"messages\":[{\"role\":\"user\",\"content\":\"Think step by step: what is 17*23?\"}],\"reasoning_effort\":\"high\",\"stream\":true}" \
  | grep -m 1 'reasoning_content' || true
