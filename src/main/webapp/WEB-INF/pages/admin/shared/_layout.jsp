<%--到百度首页
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/3/7
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>INSPINIA | @ViewBag.Title</title>

    <link href="vendor/css/bootstrap.css" rel="stylesheet">
    <link href="vendor/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="vendor/css/animate.css" rel="stylesheet">
    <link href="vendor/css/style.css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <%@include file="_navigation.jsp"%>
        <div id="page-wrapper" class="gray-bg">
            <%@include file="_topNavBar.jsp"%>
            <renderBody></renderBody>
            <%@include file="_footer.jsp"%>
        </div>
    </div>
    <renderScript></renderScript>
</body>
</html>
