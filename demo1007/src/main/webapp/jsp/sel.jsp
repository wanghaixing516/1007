<%--
  Created by IntelliJ IDEA.
  User: 王海兴
  Date: 2020/10/7
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/ins" method="post">
<table border="1px" align="center">
    <tr>
        <td><input type="hidden" name="id"/></td>
    </tr>
    <tr>
        <td>资产编号:<input type="text" name="assetid"/></td>
    </tr>
    <tr>
        <td>资产名称:<input type="text" name="assetname"/></td>
    </tr>
    <tr>
        <td>资产类型:<input type="text" name="assettype"/></td>
    </tr>
    <tr>
        <td>入库日期:<input type="text" name="intodate"/></td>
    </tr>

    <tr>
        <td>
            <input type="submit"value="提交">
            <input type="reset"value="重置">
        </td>
    </tr>
</table>
</form>
<script src="/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    $(function() {
        $("tr:odd").css("background-color","#58FFCB");
        $("#yi").css("background-color","#FFFFFF");
    })
</script>
</body>
</html>
