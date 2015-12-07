
bootstrap.modal with promise
弹出的modal框，判断用户交互行为（点击了ok还是cancel或者是关闭）

```html
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="close">Close</button>
                <button type="button" class="btn btn-primary" id="save">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
```



```js
    $('#myModal').modal('show');
    function confirmDialog() {

        var deferred = $.Deferred();
        $('#myModal').on('hidden.bs.modal', function(){
            if (deferred.state() == 'pending') {
                deferred.resolve(false);
            }
        });
        $('#close').on('click', function(){
            $('#myModal').modal('hide');
            deferred.resolve(false);
        });
        $('#save').on('click', function(){
            $('#myModal').modal('hide');
            deferred.resolve(true);
        });

        return deferred.promise();
    };

    confirmDialog().then(function(confirmed){
        alert(confirmed);
    })
        
```
