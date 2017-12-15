<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="../js/iframe.js" type="text/javascript"></script>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<title>删除部门</title>
</head>

<body>
<span class="span_title">删除部门：</span>
<hr />
<span class="span_text">部门查询：</span>
<form name="form_search" method="get"  >
<span class="span_content">编号：</span>
    <input class="input_text_s"name="" type="text"/>
    <span class="span_content">名称：</span>
	<input class="input_text_s" name="" type="text" />
    <span class="span_content">类型：</span>
    <select id="choose_type">
	<option value="Co" selected="selected">公司</option>
	<option value="Se">部门</option>
	</select>
  <input class="button" type="submit" value="查询"/>

</form>

<hr />

<div id="div_center" >
<span class="span_text">查询结果：</span>
<br />
<form action="section_doDelete.do" id="form_delete" method="post">
<table class="table_list" width="450px" height="100px" border="0" align="center">

  <tr id="tr_title">
     <td width="25">&nbsp;</td>
    <td width="86"><span class="span_table">编号</span></td>
    <td width="95"><span class="span_table">名称</span></td>
    <td width="56"><span class="span_table">类型</span></td>
    <td width="165"><span class="span_table">成立日期</span></td>  
  </tr>
    <c:forEach items="${sectionList}" var="list">
        <tr  id="tr_color">
            <td><input  name="check"  type="checkbox" value="${list.sno}"/></td>
            <td>${list.sno}</td>
            <td><a href="#div_bottom"  onclick="showBottom()">${list.sname}</a></td>
            <td>${list.stype}</td>
            <td>${list.s_setdate}</td>
        </tr>
    </c:forEach>

</table>
    <br />
    <div align="right">
        <input type="button" class="button" value="全选" onClick="alls()">
        <input type="button" class="button" value="反选" onClick="resets()">
        <input type="button" class="button" value="清空" onClick="unalls()">
        <input type="submit" class="lbutton" value="删除选中部门">
    </div>
</div><!--div for div_center-->
</form>
<div id="div_bottom" style="display:none">
<br />
<hr />
<span class="span_text">部门信息：</span>
<br />
<table class="table_list" align="center" width="430px" border="0px">
  <tr>
    <td><span class="span_table">编号：</span></td>
    <td>001</td>
    <td><span class="span_table">名称：</span></td>
    <td>研发部</td>
  </tr>
  <tr>
    <td><span class="span_table">类型：</span></td>
    <td>部门</td>
    <td><span class="span_table">电话：</span></td>
    <td>024*****</td>
  </tr>
  <tr>
    <td><span class="span_table">传真：</span></td>
    <td>1235231</td>
   <td><span class="span_table">上级部门：</span></td>
    <td>A部门</td>
  </tr>
  <tr>
    <td><span class="span_table">成立日期：</span></td>
    <td>2000-10-31</td>
    <td></td>
   <td> </td>
  </tr>
    <td><span class="span_table">描述：</span></td>
    <td colspan="3">无</td>
</table>
</div>
</body>
</html>
