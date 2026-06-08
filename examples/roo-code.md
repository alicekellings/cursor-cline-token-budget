# Roo Code

配置 OpenAI-compatible provider 时，关键字段是 base URL、API key 和精确模型 ID。如果 Roo CLI 暴露的参数和扩展类似，最小配置大致如下：

```bash
roo --provider openai-compatible \
  --base-url https://api.wappkit.com/v1 \
  --api-key YOUR_TOKEN \
  --model gpt-5.5
```

测试自动运行任务时，建议使用带额度的 token。这样即使任务循环失败，消耗也有上限，请求日志也更容易排查。

如果 OpenAI Compatible 路线可用，但其他 provider 路线不可用，重点对比：

1. 实际发出的 URL。
2. 客户端发送的模型 ID。
3. 中转站收到的请求 body。
