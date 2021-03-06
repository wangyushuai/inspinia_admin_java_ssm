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
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>属性管理  </h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">Config option 1</a>
                    </li>
                    <li><a href="#">Config option 2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
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
        </div>
    </div>
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




