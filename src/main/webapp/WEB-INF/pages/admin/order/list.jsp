<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/7/17
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../shared/base-layout.jsp"%>
<%@include file="../shared/page-header.jsp"%>

<div id="_wrapper">
    <base-layout>

    </base-layout>
</div>

<script>
    var app = new Vue({
        el:"#_wrapper",
        data:{
            pt:{},//page-header component  use

        }
    })
</script>