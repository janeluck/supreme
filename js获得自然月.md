#####js获取自然月

>主要调用`setDate`和`setMonth`方法 [Mozilla.setDate](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Date/setDate)

+ setDate: `dateObj.setDate(dayValue)`
    - **dayValue**: 一个整数，该月的第几天,如果设置为0，那么日期就会被设置为上个月的最后一天
   
+ setMonth: `dateObj.setMonth(monthValue[, dayValue])` 
    - **monthValue**: 介于 0 到 11 之间的整数(表示一月到十二月),如果有一个指定的参数超出了合理范围，setMonth会相应地更新日期对象中的日期信息。例如，为monthValue指定15，则年份会加1，月份将会使用3。
    - **dayValue**: 可选参数， 如果不指定，就会使用getDate方法的返回值

```js

// 获取本月月份
var current_month = new Date().getMonth() + 1;


// 获取本月第一天
var start = new Date().setDate(1); 

// 获取本月最后一天
var end = new Date().setMonth(current_month, 0);


console.log(new Date(start), new Date(end))
```