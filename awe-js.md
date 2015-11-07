```js
// question one

var test = (function(a){
    return function(){
        return a *= 2;
    }
})(3);

console.log(test());


// question two

for(var i = 0; i < 3; i++){
    setTimeout(function(){
        console.log(i--);
    }, 0)
}


// question three

function A(){
};
function B(name){
    this.name = name;
};
function C(name){
    this.name = name || 'lily';
};

A.prototype.name = 'rose';
B.prototype.name = 'rose';
C.prototype.name = 'rose';

console.log(new A().name + new B().name + new C().name);


// question four

var m = 1,
    obj = {
        m: 3,
        getNumber: function(){
            m *= 2;
            return this.m *= 2;
        }
    };
var    fn = obj.getNumber;
obj.getNumber();
console.log(fn());


// question five: string reverse

var str = 'abcdefg';
console.log(str.split('').reverse().join(''));


// question six: remove all instances of a value from an array, returning the original array

Array.prototype.remove = function(item){
    for(var i = this.length; i--;) {
      if(this[i] === item) {
        this.splice(i, 1);
      }
    }
    return this;
}


// question seven

[]+{}; // '[object object]'
{}+[]; // 0

```







