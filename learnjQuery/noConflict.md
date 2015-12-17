#####jQuery Plugin插件冲突处理办法

来看下最常见的处理办法(bootstrap.tooltip.js)

```js

 var old = $.fn.tooltip

  $.fn.tooltip = function (option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.tooltip')
      var options = typeof option == 'object' && option

      if (!data) $this.data('bs.tooltip', (data = new Tooltip(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.tooltip.Constructor = Tooltip


  // TOOLTIP NO CONFLICT
  // ===================

  $.fn.tooltip.noConflict = function () {
    $.fn.tooltip = old
    return this
  }

```

如果当前环境下`tooltip`已经被占用，可以使用`$.fn.bTooltip =   $.fn.tooltip.noConflict()` 拿到bootstrap的tooltip插件