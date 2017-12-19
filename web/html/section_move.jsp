<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/css.css" rel="stylesheet" type="text/css" />
    <script src="../js/Calendar.js" type="text/javascript"></script>
    <script src="../js/iframe.js" type="text/javascript"></script>
    <script src="../js/valid.js" type="text/javascript"></script>
    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <title>员工部门调动</title>
</head>


<body>
<span class="span_title">员工部门调动：</span>
<hr />
<form action="" name="form_smove" method="post"  >
    <table>
        <tr>
            <td><span class="span_content">部门编号：</span></td>
            <td><input class="input_text"name="q_sno" type="hidden"/></td>
            <td><span class="span_content">部门名称：</span></td>
            <td><input class="input_text" name="esection" type="text" /></td>
        </tr>
        <tr>
            <td><span class="span_content">员工编号：</span></td>
            <td><input class="input_text" name="eno" type="text" /></td>
            <td><span class="span_content">员工姓名：</span></td>
            <td><input class="input_text" name="ename" type="text" /></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><input class="button" type="submit" value="查询" onclick=""/></td>
        </tr>
    </table>
</form>
<hr />
<div id="div_center" >
    <span class="span_text">查询结果：</span><br />
    <table width="450px" class="table_list" border="0">
        <tr id="tr_title">
            <td>员工号</td>
            <td>姓名</td>
            <td>部门编号</td>
            <td>部门</td>
        </tr>

        <c:forEach items="${employPojoList}" var="list">
            <tr id="tr_color">
                <td>${list.eno}</td>
                <td><a href="#div_bottom" onclick="sectionMove_showBottom(${list.eno})">${list.ename}</a></td>
                <td></td>
                <td>${list.esection}</td>
            </tr>
        </c:forEach>
    </table>
</div><!--div for div_center-->
<div id="div_bottom" style="display:none" >
    <hr />
    <span class="span_text">调动信息：</span>
    <form action="section_move_add.do" id="form_move_submit" method="post">

        <table class="table_list" width="450" border="0" align="center">
            <tr>
                <td>员工号：</td>
                <td id="eno1"></td>
                <input id="eno" type="hidden" name="eno" value=""/>
                <td>姓名：</td>
                <td id="name1"></td>
                <input id="name" type="hidden" name="name" value=""/>
            </tr>
            <tr>
                <td>部门编号：</td>
                <td></td>
                <td >部门：</td>
                <td id="oldPosition1"></td>
                <input id="oldPosition" type="hidden" name="oldPosition" value=""/>
            </tr>
            <tr>
                <td>调转后部门：<font class="mark">*</font></td>
                <td><input class="input_text"name="movePosition" type="text"/></td>
                <td>调转类型：<font class="mark">*</font></td>
                <td><select name="moveType">
                    <option>主动调转</option>
                    <option>主动调转</option>
                    <option>数据录入错误</option>
                </select></td>
                <td>&nbsp;</td>
            <tr>
                <td>调转原因：<font class="mark">*</font></td>
                <td><input class="input_text" name="moveCause" type="text" /></td>
                <td>调动日期：<font class="mark">*</font></td>
                <td><input class="input_text" name="moveDate" type="text" onClick="javascript:ShowCalendar(this)" ></td>

            </tr>
            <tr>
                <td>备注：</td>
                <td colspan="3"><textarea name="remark" cols="25" rows="3"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><input class="lbutton" type="submit" value="调转"onclick="return valid_move()"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
