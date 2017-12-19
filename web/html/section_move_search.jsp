<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <script src="../js/Calendar.js" type="text/javascript"></script>
    <script src="../js/iframe.js" type="text/javascript"></script>
    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <link href="../css/css.css" rel="stylesheet" type="text/css"/>
    <title>查询已调动部门员工</title>
</head>

<body>
<span class="span_title">查询已调动部门员工：</span>
<hr/>
<form name="form_section_move_search" method="get">
    <table border="0">
        <tr>
            <td><span class="span_content">开始时间：</span></td>
            <td><input class="input_text" name="q_start" type="text" id="s_date" title="点击选择"
                       onClick="javascript:ShowCalendar(this)" size="20"></td>
            <td><span class="span_content">结束时间：</span></td>
            <td><input class="input_text" name="q_end" type="text" id="e_date" title="点击选择"
                       onClick="javascript:ShowCalendar(this)" size="20"></td>
        </tr>
        <tr>
            <td><span class="span_content">员工编号：</span></td>
            <td><input class="input_text" name="q_eno" type="text"/></td>
            <td><span class="span_content">员工姓名：</span></td>
            <td><input class="input_text" name="q_ename" type="text"/></td>
        </tr>
        <tr>
            <td><span class="span_content">调动方式：</span></td>
            <td>
                <select id="choose_type" name="q_method">
                    <option value="Co" selected="selected">主动调动</option>
                    <option value="A">被动调动</option>
                </select>
            </td>
            <td></td>
            <td><input class="button" type="submit" value="查询"/></td>
        </tr>


    </table>
</form>
<hr/>

<div id="div_center">
    <span class="span_text">查询结果：</span><br/>
    <table width="450px" class="table_list" border="0">
        <tr id="tr_title">
            <td>员工号</td>
            <td>姓名</td>
            <td>调动方式</td>
            <td>调动时间</td>
        </tr>
        <c:forEach items="${sectionMovePojoList}" var="list">
            <tr id="tr_color">
                <td>${list.eno}</td>
                <td><a href="#div_bottom" onclick="s_move_showBottom(${list.id})">${list.name}</a></td>
                <td>${list.moveType}</td>
                <td>${list.moveDate}</td>
            </tr>
        </c:forEach>

    </table>
</div><!--div for div_center-->
<div id="div_bottom" style="display:none">
    <hr/>
    <table width="450px" border="0">
        <tr>
            <td ><span class="span_table">员工号：</span></td>
            <td id="eno"></td>
            <td><span class="span_table">姓名：</span></td>
            <td id="name"></td>
        </tr>
        <tr>
            <td><span class="span_table">调动原因：</span></td>
            <td id="moveCause"></td>
            <td><span class="span_table">调动时间：</span></td>
            <td id="moveDate"></td>
        </tr>
        <tr>
            <td><span class="span_table">原部门：</span></td>
            <td id="oldPosition"></td>
            <td><span class="span_table">调动后部门：</span></td>
            <td id="movePosition"></td>
        </tr>
        <tr>
            <td><span class="span_table">调转类型：</span></td>
            <td id="moveType"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><span class="span_table">备注：</span></td>
            <td colspan="3" id="remark"></td>
        </tr>

    </table>
</div><!--div for div_bottom-->
</body>
</html>
