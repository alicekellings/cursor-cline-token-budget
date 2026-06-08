# 透明说明

这个指南由 **Wappkit** 团队维护。Wappkit 地址是 <https://api.wappkit.com>，它是一个 OpenAI-compatible API gateway。示例里使用 Wappkit 作为 endpoint，是因为这是我们自己的服务。

这里讲的方法，比如给 token 设置额度、读取 `usage` 字段，属于 OpenAI-compatible / New API 常见能力，也适用于其他兼容服务。如果你使用其他服务商，替换 base URL 和 key 后，其余思路仍然成立。

我们不声称 Wappkit 一定是最便宜或最稳定的选择。正式使用前，请比较价格，并用自己的真实工作负载测试。
