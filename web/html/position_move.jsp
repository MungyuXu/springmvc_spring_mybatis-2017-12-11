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
<title>员工岗位调动</title>
</head>

<body>
<span class="span_title">员工岗位调动：</span>
<hr />
<form name="form_search" method="post"  >
<table  border="0" >
  <tr>
    <td ><span class="span_content">部门编号：</span></td>
    <td ><input class="input_text"name="q_sno" type="text"/></td>
     <td ><span class="span_content">部门名称：</span></td>
    <td ><input class="input_text" name="q_sname" type="text" /></td>
  </tr>
    <tr>
    <td><span class="span_content">员工名称：</span></td>
    <td><input class="input_text" name="q_ename" type="text" /></td>
      <td>&nbsp;</td>
    <td ><input class="button" type="submit" value="查询"/></td>
  </tr>
</table>
</form>
<hr />
<div id="div_center">
<span class="span_text">查询结果：</span>
<br />
<table width="450px" class="table_list" border="0">
  <tr id="tr_title">
    <td width="73">员工号</td>
    <td width="63">姓名</td>
    <td width="89">部门编号</td>
    <td width="99">部门</td>
    <td width="104">岗位</td>
  </tr>
  <c:forEach items="${employList},${positionMoveList}" var="list">
    <tr id="tr_color">
      <td><input name="check" type="checkbox" value="cheak" disabled="disabled"/></td>
      <td>${list.q_eno}</td>
      <td><a href="#div_bottom" onclick="showBottom()">${list.ename}</a></td>
      <td>${list.q_sno}</td>
      <td>${list.esection}</td>
      <td>${list.eposition}</td>
    </tr>
  </c:forEach>
</table>
</div><!--div for div_center-->
<div id="div_bottom"  style="display:none"  >
<hr />
<form id="form_move_submit" method="post" action="pmove.do">
<span class="span_text">调动信息：</span>
<table class="table_list" width="450" border="0" align="center">
  <tr>
    <td>员工号：</td>
	<td><input class="input_text" name="eno" type="text"  /></td>
	<td>姓名：</td>
	<td><input class="input_text" name="ename" type="text"  /></td>
  </tr>  
   <tr>
<td>部门编号：</td>
<td><input class="input_text" name="sno" type="text"  /></td>
    <td>部门：</td>
	<td><input class="input_text" name="esection" type="text"  /></td>
	
  </tr>  
  <tr>
<td>岗位：</td>
<td><input class="input_text" name="eposition" type="text"  /></td>
    <td>调转后岗位：<font class="mark">*</font></td>
    <td><input class="input_text"name="pmove_position" type="text"/></td>
    
  <tr>
	<td>调转类型：<font class="mark">*</font></td>
   	 <td><select name="pmove_type">
	<option>升职</option>
	<option>降职</option>
	<option>数据录入错误</option>
	</select></td>
    <td>调转原因：<font class="mark">*</font></td>
    <td><input class="input_text" name="pmove_cause" type="text" /></td> 
  </tr>
    <%--<tr>--%>
    <%--<td>调动日期：<font class="mark">*</font></td>--%>
    <%--<td><input class="input_text" name="pmove_date" type="text" onClick="javascript:ShowCalendar(this)" ></td>--%>
    <%--<td></td>--%>
   <%--<td></td>--%>
  <%--</tr>--%>
    <%--<tr>--%>
 <%--<td>备注：</td>--%>
    <%--<td colspan="3"><textarea name="remark" cols="25" rows="3"></textarea></td>--%>
  <%--</tr>--%>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td><input class="lbutton" type="submit" value="调转" onclick="return valid_move()"/>
</tr>
 
</table>  
</form>
</div>
</body>
</html>
