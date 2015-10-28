# SWITCH STATEMENT

    switch语句中的每一种情形（case）的含义是：“如果表达式等于这个值（value），则执行后面的语句（statement）。”而break关键字会导致代码执行流跳出switch语句。如果省略break关键字，就会导致执行完当前case后，继续执行下一个case。最后的default关键字则用于在表达式不匹配前面任何一种情形的时候，执行机动代码。
    
    ```js
    switch (i) {
        case 25:
            console.log('25');
            break;
        case 35:
            console.log('35');
            break; 
        case 45:
            console.log('45');
            break;
        default: 
            console.log('other');    
    }
    
    ```