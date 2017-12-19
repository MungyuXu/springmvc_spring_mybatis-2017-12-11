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
    <script src="../js/calendar.js" type="text/javascript"></script>
    <script src="../js/iframe.js" type="text/javascript"></script>
    <script src="../js/valid.js" type="text/javascript"></script>
    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <title>修改员工信息</title>
    <script>
        function toQuery() {
            while ($("#tr_color").length > 0) {
                $("#tr_color").remove();
            }
            alert("!");
            $.ajax({
                type: 'post',
                url: 'employ_queryByName.do',
                contentType: 'application/json;charset=utf-8',
                //通过id取表格对象转换成json格式,search是form表单id
                data: JSON.stringify($('#search').serializeObject()),
                success: function (data) {
                    var trc = $("#info_search");
                    var meg = "";
                    //循环追加表单
                    $.each(data, function (index, position) {
                        var td1 = '<tr id="tr_color">';
                        var td2 = '<td><input name="check" type="checkbox" value="cheak" disabled="disabled"/></td>';
                        var td3 = '<td>' + position.eno + '</td>';
                        var td4 = '<td><a href="#div_bottom" onclick="showBottom()">' + position.ename + '</a></td>';
                        var td5 = '<td>' + position.egender + '</td>';
                        var td6 = '<td>' + position.eid + '</td>';
                        var td7 = '</tr>';
                        meg = td1 + td2 + td3 + td4 + td5 + td6 + td7;
                        trc.append(meg);
                    })
                }
            });
        }
    </script>
</head>

<body>
<span class="span_title">修改员工信息：</span>
<hr/>
<span class="span_text">员工查询：</span><br/>
<%--id=“search”与上对应--%>
<form name="form_search" method="get" id="search">
    <table border="0">
        <tr>
            <td><span class="span_content">部门名称：</span></td>
            <td><input class="input_text" name="esection" type="text"/></td>
            <td><span class="span_content">员工编号：</span></td>
            <td><input class="input_text" name="eno" type="text"/></td>
        </tr>
        <tr>
            <td><span class="span_content">员工姓名：</span></td>
            <td><input class="input_text" name="ename" type="text"/></td>
            <td>&nbsp;</td>
            <td><input class="button" type="button" value="查询" onclick="toQuery()"/></td>
        </tr>
    </table>
</form>
<hr/>

<div id="div_center">
    <span class="span_text">查询结果：</span><br/>
    <table id="info_search" width="450px" class="table_list" border="0">
        <tr id="tr_title">
            <td width="25">&nbsp;</td>
            <td>员工号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>身份证号</td>
        </tr>
        <%--循环输出所有查询信息--%>
        <c:forEach items="${employList}" var="list">
            <tr id="tr_color">
                <td><input name="check" type="checkbox" value="cheak" disabled="disabled"/></td>
                <td>${list.eno}</td>
                <td><a href="#div_bottom" onclick="showBottom()">${list.ename}</a></td>
                <td>${list.egender}</td>
                <td>${list.eid}</td>
            </tr>
        </c:forEach>
    </table>
</div><!--div for div_center-->


<div id="div_bottom" style="display:none">
    <hr/>
    <form id="information" method="post" action="employUpdate.do">
        <table width="450px" border="0" align="center">
            <tr>
                <td width="92">员工号：<font class="mark">*</font></td>
                <td width="140"><input class="input_text" name="eno" type="text"/></td>
                <td width="204">&nbsp;</td>
            </tr>
            <tr>
                <td>姓名：<font class="mark">*</font></td>
                <td><input class="input_text" name="ename" type="text"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>性别：<font class="mark">*</font></td>
                <td>
                    <select id="choose_sex" name="egender">
                        <option value="男">男</option>
                        <option value="女" selected="selected">女</option>
                    </select></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>身份证号：<font class="mark">*</font></td>
                <td><input class="input_text" name="eid" type="text" maxlength="18"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="span_content">部门：<font class="mark">*</font></span></td>
                <td>
                    <select id="choose_type" name="esection">
                        <option value="A部门" selected="selected">A部门</option>
                        <option value="B部门">B部门</option>
                        <option value="C部门">C部门</option>
                    </select>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="span_content">岗位：</span><font class="mark">*</font></td>
                <td>
                    <select id="choose_type" name="eposition">
                        <option value="A" selected="selected">部门经理</option>
                        <option value="B">部门副经理</option>
                        <option value="C">部员</option>
                    </select>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>用工形式：<font class="mark">*</font></td>
                <td>
                    <select id="choose_type" name="etype">
                        <option value="正式员工" selected="selected">正式员工</option>
                        <option value="临时员工">临时员工</option>
                    </select>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>人员来源：<font class="mark">*</font></td>
                <td>
                    <select id="choose_type" name="efrom">
                        <option value="校园招聘" selected="selected">校园招聘</option>
                        <option value="社会招聘">社会招聘</option>
                        <option value="其他">其他</option>
                    </select>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input class="lbutton" type="submit" value="保存" onclick="return valid_ne()"/></td>
                <td></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

