<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="header/deLayout.jsp" />

    <style>
        html,
        body{
            font-family: 'Helvetica Neue',helvetica, "Hiragino Sans GB",'Microsoft YaHei', "WenQuanYi Micro Hei", sans-serif;
            font-size: 12px;
            color: #444;
        }
        .btn{
            font-size: 12px;
        }
    </style>
</head>
<body style="padding: 40px;">
<div class="login-form">
    <div class="form-group">
        <input type="text" class="form-control login-field" value="" placeholder="Enter your name" id="login-name" />
        <label class="login-field-icon fui-user" for="login-name"></label>
    </div>

    <div class="form-group">
        <input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" />
        <label class="login-field-icon fui-lock" for="login-pass"></label>
    </div>


<main>

    <div style="margin-bottom: 5px;">
        <button id="btnAdd" class="btn">添加到第三行</button>
        <button id="btnAddArr" class="btn" >添加列表到第二行</button>
        <button id="btnRemove" class="btn" >删除第二行</button>
        <button id="btnRemoveSelected" class="btn" >删除选择的行</button>
        <button id="btnRemoveAll" class="btn" >删除全部行</button>
        <button id="btnUpdate" class="btn" >更新第二行</button>
        <input id="secucode" placeholder="查询条件:名字" style="margin-left: 20px;"> <button id="btnSearch" class="btn" >搜索</button>
    </div>
    <table id="mmg" class="mmg">
        <tr>
            <th rowspan="" colspan=""></th>
        </tr>
    </table>
    <div id="pg" style="text-align: right;"></div>
</main>
<script>
    var h;
    $(document).ready(function(){
        h=200;

        var cols = [
            {title:'唯一标识', name:'id', width: 80, align: 'center',lockWidth:true,lockDisplay: true},
            { title:'名字', name:'name' ,width:110, sortable: true, align:'center' },
            { title:'性别', name:'sex' ,width:110, sortable: true, align:'center' },
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
                   name : $('#secucode').val(), start:1
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
        $('#btnSearch').on('click',function(){
            //点击查询时页码置为1
            mmg.load({page: 1});
        });
    });

</script>


</body>
</html>
