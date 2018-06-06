<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/5/3
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<template id="render-body">
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
        <c:forEach items="${properties}" var="item" varStatus="vs">
            <tr>
                <td>
                    <a href="javascript:;" onclick="del('${item.id}')"><i class="fa fa-trash" aria-hidden="true"></i></a>
                    <a href="javascript:;" onclick="edit('${item.id}')"><i class="fa fa-pencil-square-o"></i></a>
                </td>
                <td>${item.id}</td>
                <td>${item.cid}</td>
                <td class="text-navy"><i class="fa fa-level-up"></i> ${item.name}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</template>


<%--vue js--%>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
    Vue.component('render-body',{
        template:'#render-body'
    });
</script>
<%--master page--%>
<%@include file="../shared/_layout.jsp"%>




