# Cursor / Cline Token 预算控制

这个仓库记录 Cursor、Cline、Continue、Roo Code、Aider 等 AI 编程工具在使用 OpenAI-compatible API gateway 时，如何控制 token 预算、查看 usage 用量、避免 agent 长任务意外烧光额度。

> **维护方说明：**这个指南由 [Wappkit](https://api.wappkit.com) 团队维护。Wappkit 是一个 OpenAI-compatible API 中转服务。示例里使用 Wappkit 作为 endpoint，但方法本身也适用于其他兼容 OpenAI API 的服务，只需要替换 base URL 和 API key。详见 [DISCLOSURE.md](DISCLOSURE.md)。

## 为什么需要这个

AI 编程工具会在每一轮请求里带上越来越长的上下文。历史消息一旦没有被及时裁剪，每一轮都会重复发送大量内容，token 消耗就会持续上升。长任务跑久了会很贵，如果 agent 进入循环，还可能在你发现前消耗掉大量余额。

真正有用的是两件事：

1. **给每个 token 设置额度。** 给一次任务、一个项目或一个 agent 单独创建 API key，并设置固定额度。即使 agent 跑飞，也只能消耗这个 key 的预算，不会影响整个账户。
2. **查看每次请求的 usage。** OpenAI-compatible 响应通常会带 `usage` 对象，包括 `prompt_tokens`、`completion_tokens`、`total_tokens`。运行时观察它，比账单出来后再排查更有效。

## Base URL

```text
https://api.wappkit.com/v1
```

获取 key：打开 <https://api.wappkit.com> 注册并充值，然后在 **Token Management** 创建 token。需要预算上限时，创建 token 时设置额度。

> **访问说明：**Wappkit 目前不向中国大陆地区提供服务访问，也没有备用大陆入口。

## 工具配置

- [Cursor](examples/cursor.md)
- [Cline](examples/cline.md)
- [Continue](examples/continue.md)
- [Roo Code](examples/roo-code.md)
- [Aider](examples/aider.md)

## 验证

运行 [examples/smoke-test.sh](examples/smoke-test.sh) 可以检查接口连通性，打印 `usage` 用量，并测试 endpoint 是否返回 `reasoning_content`。不是所有服务商都会透传这个字段。

## 价格

价格会随模型和 token 分组变化，请以模型市场当前展示为准。这个仓库不承诺稳定性或 SLA，正式使用前请用自己的真实任务测试。
