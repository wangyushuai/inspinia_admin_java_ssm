<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/5/3
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>属性管理</title>
</head>
<body>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Opration</th>
            <th>PropertyId</th>
            <th>CategoryID</th>
            <th>PropertyName</th>
        </tr>
        </thead>
        <tbody>
        <%--<c:forEach items="${properties}" var="item" varStatus="vs">--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<a href="javascript:;" onclick="del('${item.id}')"><i class="fa fa-trash" aria-hidden="true"></i></a>--%>
                    <%--<a href="javascript:;" onclick="edit('${item.id}')"><i class="fa fa-pencil-square-o"></i></a>--%>
                <%--</td>--%>
                <%--<td>${item.id}</td>--%>
                <%--<td>${item.cid}</td>--%>
                <%--<td class="text-navy"><i class="fa fa-level-up"></i> ${item.name}</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
        </tbody>
    </table>


    <script>
        var app = new Vue({
            el:'#app',
            data: {
                message:"hello,vue"
            }
        })
    </script>
</body>
</html>
