# observable读取原理解析


好奇knockoutjs怎么实现被观察变量(简单数据类型)的读取，看了下[ko.observable](https://github.com/knockout/knockout/blob/master/src/subscribables/observable.js)源码，分离出一个简单版的，帮助理解下原理吧，这里先不涉及变量更新后派发通知的处理。

+ 附上ko监测变量的用法（[ko官方文档](http://knockoutjs.com/documentation/observables.html)）
    1. 使用ko.observable方法注册变量，eg： `var name = ko.observable('lucy');`
    2. 变量读取，eg： `name()`
    3. 变量写入，eg： `name('maria')`

+ 这里写个observable函数抽取出ko.observable方法中变量读写的部分，主要还是利用闭包和约定arguments的长度来实现


```js
var observable = function(initialValue) {                       
    function observable(){                                      
        if (arguments.length > 0) {                             
            if (observable['latestValue'] !== arguments[0]){    
                observable['latestValue'] = arguments[0];       
            }                                                   
        }  else {                                               
            return observable['latestValue'];                   
        }                                                       
                                                                
    };                                                          
    observable['latestValue'] = initialValue;                   
    return observable;                                          
};                                                              
                                                                
// demo                                                         
var obj = {};                                                   
obj.data = observable(2);                                       
console.log(obj.data()); // 2                                   
obj.data(36);                                                   
console.log(obj.data()); // 36                                  
obj.name = observable('rose');                                  
console.log(obj.name()); // 'rose'                            
obj.name('lily');                                               
console.log(obj); // {data: 36, name: 'lily'}
                                                    
```




