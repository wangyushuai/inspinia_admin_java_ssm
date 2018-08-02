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
    <base-layout v-bind:layout-data="layoutData">
        <div solt="page-header">page-header solt content</div><br/>
        <div>default solt content</div>
    </base-layout>
</div>

<script>
    var app = new Vue({
        el:"#_wrapper",
        data:{
            layoutData:{
               iboxData:{
                    title:"ibox Title xx",
                    content:"ibox content xx"
                }
            },
        }
    })
</script>


<div>branch devlepe test</div>