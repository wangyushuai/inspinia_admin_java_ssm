<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/7/5
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${title}</title>
    <link href="${pageContext.request.contextPath}/vendor/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/css/style.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>
<template id="base-layout">
    <div id="template-wrapper">
        <%@include file="_navigation.jsp"%>
        <div id="page-wrapper" class="gray-bg">
            <%@include file="_topNavBar.jsp"%>
            <header><slot name="page-header"></slot></header>
            <main id="content">
                <slot></slot><!--默认插槽-->
                <page-ibox title="iboxData.title"></page-ibox> <!--base-layout 的子组件-->
            </main>
            <%@include file="_footer.jsp"%>
        </div>
    </div>
</template>

<template id="page-ibox">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>{{title}}</h5>
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
            {{content}}
        </div>
    </div>
</template>


<script type="text/javascript">
    var pageIbox = {
        template:"#page-ibox",
        props:{
            title:String,
            content:String
        }
    };
</script>
<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/vendor/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/vendor/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/vendor/js/inspinia.js"></script>
<script src="${pageContext.request.contextPath}/vendor/js/plugins/pace/pace.min.js"></script>
<script>
    Vue.component("base-layout",{
        template:"#base-layout",
        components:{
            "page-ibox":pageIbox
        },
        props:{
          iboxData:Object,//子组件ibox所需要的输入数据
        }
    })
</script>
</body>
</html>


