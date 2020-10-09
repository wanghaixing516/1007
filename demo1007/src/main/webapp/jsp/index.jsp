<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px" align="center">
    <tr>
        <td colspan="7" id="yi"><h2 align="center">固定资产查询</h2></td>
    </tr>
    <tr>
        <td colspan="4">
            <form action="/mohu" method="post">
                <span>资产编号:<input type="text" name="assetid"/></span>
                <span>资产类型:<input type="text" name="assettype"/></span>
                <span><input type="submit" value="查询"/></span>
            </form>
        </td>
    </tr>
    <tr  align="center">
        <td>资产编号</td>
        <td>资产名称</td>
        <td>资产类型</td>
        <td>入库日期</td>
    </tr>
    <c:forEach items="${list }" var="Stu">
        <tr>
            <td>${ Stu.assetid }</td>
            <td>${Stu.assetname }</td>
            <td>${Stu.assettype }</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${Stu.intodate}" type="both"/></td>
        </tr>
    </c:forEach>
</table>
<script src="/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    $(function() {
        $("tr:odd").css("background-color","#58FFCB");
        $("#yi").css("background-color","#FFFFFF");
    })
</script>
</body>
</html>
