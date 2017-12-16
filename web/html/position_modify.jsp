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
    <script src="../js/valid.js" type="text/javascript"></script>
    <title>修改岗位</title>
</head>

<body>
<span class="span_title">修改岗位：</span>
<hr/>
<span class="span_text">岗位查询：</span>
<form name="form_search" method="get">
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
    <span class="span_text">查询结果：</span>
    <br/>
    <table class="table_list" width="450px" height="100px" border="0" align="center">

        <tr id="tr_title">
            <td width="25">&nbsp;</td>
            <td width="86">编号</td>
            <td width="95">名称</td>
            <td width="146">岗位类型</td>
            <td width="76">岗位编制</td>
        </tr>
        <c:forEach items="${positionList}" var="list">
            <tr id="tr_color">
                <td><input name="check" type="checkbox" value="" disabled="disabled"/></td>
                <td>${list.pno}</td>
                <td><a href="#div_bottom" onclick="showBottom()">${list.pname}</a></td>
                <td>${list.ptype}</td>
                <td>${list.pnum}</td>
            </tr>
        </c:forEach>

    </table>
</div><!--div for div_center-->
<div id="div_bottom" style="display:none">
    <hr/>
    <form id="form_position" method="post">
        <span class="span_text">岗位信息：</span>
        <br/>
        <table align="center" width="430px" border="0px">
            <tr>
                <td><span class="span_table">编号：</span><font class="mark">*</font></td>
                <td><input class="input_text" name="pno" type="text"/></td>
                <td><span class="span_table">名称：</span><font class="mark">*</font></td>
                <td><input class="input_text" name="pname" type="text"/></td>
            </tr>
            <tr>
                <td><span class="span_table">岗位类型：</span><font class="mark">*</font></td>
                <td><select id="choose_type" name="ptype">
                    <option value="1" selected="selected">管理</option>
                    <option value="2">技术</option>
                    <option value="3">销售</option>
                    <option value="4">市场</option>
                    <option value="5">其他</option>
                </select></td>
                <td><span class="span_table">岗位编制：</span></td>
                <td><input class="input_text" name="pnum" type="text"/></td>
            </tr>

            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><input class="lbutton" type="submit" value="保存" onclick="return valid_p()"/></td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
