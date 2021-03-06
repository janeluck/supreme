### 浏览器缓存控制
> 不存在最佳的缓存策略。根据通信模式、提供的数据类型以及应用特定的数据更新要求，必须定义和配置每个资源最适合的设置以及整体的’缓存层级’。

#####让浏览器做缓存需要给浏览器发送指定的Http头，告诉浏览器缓存策略

1. Cache-Control
    + `no-store`: 强制缓存在任何情况下都不要保留任何副本
    + `no-cache`: 强制每次请求直接发送给源服务器，而不经过本地缓存版本的校验
    + `max-age=`: 从请求时间开始到过期时间之间的秒数
    + `public`: 即使有关联的 HTTP 认证，甚至响应状态码无法正常缓存，响应也可以被缓存。大多数情况下，public不是必须的
    + `private`: 浏览器可以缓存private响应，但是通常只为单个用户缓存，因此，不允许任何中继缓存对其进行缓存 - 例如，用户浏览器可以缓存包含用户私人信息的 HTML 网页，但是 CDN 不能缓存
  
|Cache-Control 指令|说明|
| ------------- |:---------|
|no-store|不允许缓存响应，每个请求必须获取完整的响应|
|max-age=86400|浏览器和任何中继缓存均可以将响应（如果不设置private）缓存长达一天|
|private, max-age=600|客户端浏览器只能将响应缓存最长 10 分钟（60 秒 x 10 分）|
    
    
2. Last-Modified, Etag
    + Last-Modified/If-Modified-Since
    + ETag/If-None-Match
    
    
#####参考文档: [HTTP 缓存](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/http-caching?hl=zh-cn)    
    





