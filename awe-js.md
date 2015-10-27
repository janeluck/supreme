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

```







