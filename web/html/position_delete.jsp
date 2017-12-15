<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/css.css" rel="stylesheet" type="text/css"/>
    <script src="../js/Calendar.js" type="text/javascript"></script>
    <script src="../js/iframe.js" type="text/javascript"></script>
    <title>删除岗位</title>
</head>

<body>
<span class="span_title">删除岗位：</span>
<hr/>
<span class="span_text">岗位查询：</span>
<form name="form_search" method="post">
    <span class="span_content">编号：</span>
    <input class="input_text_s" name="" type="text"/>
    <span class="span_content">名称：</span>
    <input class="input_text_s" name="" type="text"/>
    <span class="span_content">岗位类型：</span>
    <select id="choose_type">
        <option value="1" selected="selected">管理</option>
        <option value="2">技术</option>
        <option value="3">销售</option>
        <option value="4">市场</option>
        <option value="5">其他</option>
    </select>
    <input class="button" type="submit" value="查询"/>

</form>

<hr/>

<div id="div_center">
    <span class="span_text">查询结果：</span><br/>


    <form action="position_doDelete.do" id="form_delete" method="post">
        <table class="table_list" width="450px" height="100px" border="0" align="center">

            <tr id="tr_title">
                <td width="25">&nbsp;</td>
                <td width="86"><span class="span_table">编号</span></td>
                <td width="95"><span class="span_table">名称</span></td>
                <td width="146"><span class="span_table">岗位类型</span></td>
                <td width="76"><span class="span_table">岗位编制</span></td>
            </tr>
            <c:forEach items="${positionList}" var="list">
                <tr id="tr_color">
                    <td><input name="check" type="checkbox" value="${list.pno}"/></td>
                    <td>${list.pno}</td>
                    <td><a href="#div_bottom" onclick="showBottom()">${list.pname}</a></td>
                    <td>${list.ptype}</td>
                    <td>${list.pnum}</td>
                </tr>
            </c:forEach>
        </table>
        <br/>
        <div align="right">
            <input type="button" class="button" value="全选" onclick="alls()">
            <input type="button" class="button" value="反选" onclick="resets()">
            <input type="button" class="button" value="清空" onclick="unalls()">
            <input name="submit" type="submit" class="lbutton" value="删除选中岗位"/>
        </div>
    </form>

    <div id="div_bottom" style="display:none">
        <br/>
        <hr/>
        <span class="span_text">岗位信息：</span>
        <br/>
        <table class="table_list" align="center" width="430px" border="0px">
            <tr>
                <td><span class="span_table">编号：</span></td>
                <td>001</td>
                <td><span class="span_table">名称：</span></td>
                <td>主任</td>
            </tr>
            <tr>
                <td><span class="span_table">岗位类型：</span></td>
                <td>管理</td>
                <td><span class="span_table">岗位编制：</span></td>
                <td>120</td>
            </tr>
        </table>
    </div>
</body>
</html>
