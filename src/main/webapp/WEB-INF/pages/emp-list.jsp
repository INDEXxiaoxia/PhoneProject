<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工列表查询</title>
    <!-- 使用"/“开头，来加载css样式 或 js脚本 等，好处：不需要再进行相对路径 的转换。
            "/" ，无论当前界面在哪，将都会从 "/webapp"开始读取资源
            前提：这种方式加载资源，必须在tomcat启动的情况下访问-->

    <link rel="stylesheet" href="/plugins/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="/plugins/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body class="container" style="margin-top: 20px">
<div class="panel panel-primary">
    <div class="panel-heading">查询员工列表</div>
    <div class="panel-body">
        <!-- 添加查询条件的表单-->
        <%--<form action="/emp/findAll" method="post">--%>
        <form action="/emp/findPageAll?size=1" method="post">
            <div class="form-group form-inline">
                <input name="id" class="form-control" placeholder="请输入员工编号" value="${param.id}">
                <input name="ename" class="form-control" placeholder="请输入员工名称" value="${param.ename}">
                <input type="submit" class="btn btn-success" value="查询"/>
            </div>
        </form>
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <th>员工编号</th>
                <th>员工姓名</th>
                <th>员工工资</th>
            </tr>
            <!-- 下面使用循环来加载每一个员工的信息-->
            <c:forEach items="${pageInfo.list}" var="emp">
                <tr>
                    <td>${emp.id}</td>
                    <td>${emp.ename}</td>
                    <td>${emp.salary}</td>
                </tr>
            </c:forEach>
        </table>
        <!-- 添加分页插件-->
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <!-- 使用for-each循环实现-->
                <c:forEach var="pageNum" begin="1" end="${pageInfo.pages}" step="1">
                    <li><a href="#">${pageNum}</a></li>
                </c:forEach>
                <%--
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>--%>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>


</body>
</html>
