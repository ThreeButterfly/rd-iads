<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="<%=request.getContextPath()%>/static/component/UI/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="<%=request.getContextPath()%>/static/component/UI/css/flat-ui.min.css" rel="stylesheet">

    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/component/mmGrid/source/css/normalize.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/component/mmGrid/src/mmGrid.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/component/mmGrid/src/theme/bootstrap/mmGrid-bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/component/mmGrid/src/mmPaginator.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/component/mmGrid/src/theme/bootstrap/mmPaginator-bootstrap.css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/static/component/UI/js/vendor/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/static/component/UI/js/vendor/respond.min.js"></script>
    <![endif]-->

    <script src="<%=request.getContextPath()%>/static/component/UI/js/vendor/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/component/UI/js/application.js"></script>
    <script src="<%=request.getContextPath()%>/static/component/UI/js/flat-ui.min.js"></script>


    <script src="<%=request.getContextPath()%>/static/component/mmGrid/source/js/plugins.js"></script>
    <script src="<%=request.getContextPath()%>/static/component/mmGrid/source/js/vendor/json2.js"></script>
    <script src="<%=request.getContextPath()%>/static/component/mmGrid/src/mmGrid.js"></script>
    <script src="<%=request.getContextPath()%>/static/component/mmGrid/src/mmPaginator.js"></script>
</head>
<body>
<div class="container">
    <h1>Hello, world!</h1>
</div>
<!-- /.container -->

<button class="btn btn-default">Default</button>
<button class="btn btn-primary">Primary</button>
<button class="btn btn-info">Info</button>
<button class="btn btn-danger">Danger</button>
<button class="btn btn-success">Success</button>
<button class="btn btn-warning">Warning</button>
<button class="btn btn-inverse">Inverse</button>

<script>
    var h;
    $(document).ready(function(){
        h=700;

        var cols = [
            {title:'唯一标识', name:'id', width: 80, align: 'center',lockWidth:true,lockDisplay: true},
            { title:'名字', name:'name' ,width:110, sortable: true, align:'center' },
            { title:'性别', name:'sex' ,width:110, sortable: true, align:'center' },
            { title:'备注', name:'sex' ,width:110, sortable: true, align:'center' },
            { title:'操作', name:'' ,width:150, align:'center', lockWidth:true, lockDisplay: true, renderer: function(val){
                return '<button  class="btn btn-info">保存</button> <button  class="btn btn-danger">删除</button>'
            }}
        ];
        var mmg = $('.mmg').mmGrid({
            height: h
            , cols: cols
            , url: '<%=request.getContextPath()%>/test'
            , method: 'get'
            , remoteSort:true
            , sortName: 'SECUCODE'
            , sortStatus: 'asc'
            , multiSelect: false
            , checkCol: false
            , fullWidthRows: true
            , autoLoad: false
            ,indexCol: false
            , plugins: [
                $('#pg').mmPaginator()
            ]
            , params: function(){
                //如果这里有验证，在验证失败时返回false则不执行AJAX查询。
                return {
                    secucode: $('#secucode').val()
                }
            }
        });


        mmg.on('cellSelected', function(e, item, rowIndex, colIndex){
            var editItem=item;
            for(attr in editItem){
                $("input[name="+attr+"]").val(editItem[attr]);
            }
            //修改
            $("#sub_edit").on('click',function(e){
                e.stopPropagation();
                for(attr in editItem){
                    editItem[attr]=$("input[name="+attr+"]").val();
                }
                $.ajax({
                    type: "POST",
                    url: "<%=request.getContextPath()%>/lineAction/updateLinePower",
                    dataType : 'json',
                    contentType : 'application/json',
                    data:JSON.stringify(editItem),
                    success: function(msg){
                        $('#myModal').modal('hide');
                        mmg.load();
                    },
                    error:function(msg){
                        mmg.load();
                        $('#myModal').modal('hide');
                    }
                });
            });



            //查看
            if($(e.target).is('.btn-info, .btnPrice')){
                e.stopPropagation();  //阻止事件冒泡
                //alert(JSON.stringify(item));
                //获取行
                var oldJson=item;
                $("input[name=id]").val(oldJson.id);
                // alert($("input[name=id]").val());
                var dataTr= $("#mmg tr")[rowIndex];
                $(dataTr).find("td").each(function(i){
                    var data=$(this).find("span").html();

                });
                $.ajax({
                    type: "POST",
                    url: "<%=request.getContextPath()%>/lineAction/updateLinePower",
                    dataType : 'json',
                    contentType : 'application/json',
                    data:JSON.stringify(oldJson),
                    success: function(msg){
                    },
                    error:function(msg){
                        alert("保存成功");
                    }
                });
                //mmg.updateRow(s, selectedIndexes);
            }else if($(e.target).is('.btn-danger') && confirm('你确定要删除该行记录吗?')){
                e.stopPropagation(); //阻止事件冒泡
                $.ajax({
                    type: "POST",
                    url: "<%=request.getContextPath()%>/lineAction/delLinePower",
                    data:"id="+item.id,
                    success: function(msg){
                        alert("删除成功！");
                        mmg.load();
                    }
                });
            }
        }).load();

    });

</script>


</body>
</html>
