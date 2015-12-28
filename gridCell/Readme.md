### 文本超过一定width打点处理

当文本的字数超过一定的限制, 超过元素宽度的部分打点处理
这个主要是`text-overflow: ellipsis`和`white-space: nowrap`这两个属性配合使用来实现

```html
<style>
    p {
        width: 100px;   /* 宽度设置定值 */
        overflow: hidden; 
        text-overflow: ellipsis; /* 文本溢出部分显示为点... */
        white-space: nowrap; /* 文本超出宽度不做换行处理 */    
    }
</style>

<p>BBC为纪念阿加莎125周年诞辰而推出的3集迷你剧，改编自阿婆同名经典之作《无人生还》，历史上成就最高的推理小说之一</p>


```

