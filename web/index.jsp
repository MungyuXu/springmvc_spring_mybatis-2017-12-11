<%--
  Created by IntelliJ IDEA.
  User: hokitlee
  Date: 2017/12/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="regist.do" method="post">
    <input type="text" name="id">
    <input type="text" name="name">
    <input type="submit">
  </form>
  <a href="query.do">请求</a>
  <a href="queryModel.do">请求</a>
  </body>
</html>
