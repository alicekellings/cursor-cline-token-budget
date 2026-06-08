# Aider

Aider 可以通过 OpenAI provider 接入任意 OpenAI-compatible endpoint。

环境变量方式：

```bash
export OPENAI_API_BASE="https://api.wappkit.com/v1"
export OPENAI_API_KEY="YOUR_TOKEN"
aider --model openai/gpt-5.5
```

也可以用命令行参数：

```bash
aider \
  --openai-api-base "https://api.wappkit.com/v1" \
  --openai-api-key "YOUR_TOKEN" \
  --model openai/gpt-5.5
```

模型名要使用模型市场里展示的精确名称。Aider 每轮对话后会打印 token usage 和预估成本，配合带额度的 token 更容易控制预算。
