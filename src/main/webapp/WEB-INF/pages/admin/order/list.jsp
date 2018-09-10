<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/7/17
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../shared/base-layout.jsp" %>
<%@include file="../shared/page-ibok.jsp" %>
<%--本页所需资源--%>
<link href="${pageContext.request.contextPath}/vendor/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/vendor/js/plugins/dataTables/datatables.min.js"></script>
<%--正文--%>
<div id="_wrapper">
    <base-layout>
        <page-ibox title="table" content="table content">
            <table class="dataTables table table-striped table-bordered table-hover dataTables-example">
                <thead>
                    <th>serialNum</th>
                    <th>ID</th>
                    <th>Status</th>
                    <th>Price</th>
                    <th>Num</th>
                    <th>UserName</th>
                    <th>CreateTime</th>
                    <th>PayTime</th>
                    <th>DeliverTime</th>
                </thead>
            </table>
        </page-ibox>
    </base-layout>
</div>

<script>
    var app = new Vue({
        el: "#_wrapper",
        data: {},
        mounted:function () {
            this.$nextTick(function () {
                //load main table
                init_datatables();
            });
        }
    })

    function init_datatables() {
        $.fn.dtconfig.ajax = {
            url: "/admin/order/ajaxList",
            type: "get",
        }
        //ajax 请求返回为复杂对象，故需要设置列详情
        $.fn.dtconfig.columns = [
            {data:null,name:"serialNum"},
            {data:"id",name:"id"},
            {data:"statusDesc",name:"status"},
            {data:"totalNumber",name:"price"},
            {data:"total",name:"num"},
            {data:"user.name",name:"userName"},
            {data:"createDate",name:"createTime"},
            {data:"payDate",name:"payTime"},
            {data:"deliveryDate",name:"deliverTime"}
        ];
        $.fn.dtconfig.columnDefs = [{
            targets:[6,7,8],
            render:function (data,type,row,meta) {
                return (new Date(data).Format("yyyy-MM-dd hh:mm:ss"));
            }
        }]
        var page_dt = $('.dataTables').DataTable($.fn.dtconfig);
        page_dt.on('draw.dt',function () {
            page_dt.column(0, { search: 'applied', order: 'applied' }).nodes().each(function (cell, i) {
                cell.innerHTML = i + 1;
            });
        })
    }
</script>