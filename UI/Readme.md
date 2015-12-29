#####前端常用UI组件的切法

> 参考bootstrap component的写法

1. dropdown

```html

<style>
    .dropdown-menu {
        display: none
    }
    .dropdown:hover > .dropdown-menu {
        display: block
    }
</style>
<ul class="nav">
    <li class="active"><a href="#">Link</a></li>
    <li><a href="#">Link</a></li>
    <li><a href="#">Link</a></li>
    <li class="dropdown">
        <a href="#" >Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
        </ul>
    </li>
</ul>


```

    




