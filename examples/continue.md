# Continue

Continue 可以通过 OpenAI provider 接入 OpenAI-compatible gateway，关键是显式配置 `apiBase`。

示例：

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

需要检查：

1. `apiBase` 保留 `/v1` 后缀。
2. 使用中转站模型市场展示的精确模型 ID。
3. 长任务先使用小额度 token。

如果请求失败，用相同 base URL、key、model 跑一次 curl，再和中转站请求日志对比。
