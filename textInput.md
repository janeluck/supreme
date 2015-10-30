# textInput事件与keypress事件


---
####定义：
> 当用户在可编辑区域中输入字符时，就会触发testInput这个事件。


####区别：
#####1. 任何可以获得焦点的元素都可以触发keypress事件，但是只有可编辑区域才能触发textInput事件；
#####2. textInput事件只会在用户按下能够输入实际字符的键时才会被触发，而keypress事件则在按下那些能够影响文本显示的键时也会触发
#####3. textInput事件的event对象还包含一个data属性，这个属性的值就是用户输入的字符


####补充一个change事件：
#####1. 对于`<input>`和`<textarea>`元素，当它们从获得焦点到失去焦点且value值改变时，才会触发change事件。
#####2. 对于`<select>`元素，只要用户选择了不同的选项，就会触发change事件

---------
示例：
```html
<input type = 'text' id ='ipt'>
```

```js
function addEvent(el, type, fn){ 
    if(el.addEventListener){ 
        el.addEventListener(type, fn, false);     } else { 
        el.attachEvent('on' + type, fn); 
    } 
} 
var ipt = document.getElementById('ipt'); 
addEvent(ipt,'textInput',function(e){ 
    e = e || window.event; 
    console.log(e.data); 
}); 
addEvent(ipt,'keypress',function(e){ 
    e = e || window.event; 
    console.log(e); 
});
addEvent(ipt,'change',function(e){ 
    e = e || window.event; 
    console.log(e); 
});

```

  




