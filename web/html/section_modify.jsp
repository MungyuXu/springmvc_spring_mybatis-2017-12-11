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
    <link href="../css/css.css" rel="stylesheet" type="text/css"/>
    <script src="../js/Calendar.js" type="text/javascript"></script>
    <script src="../js/iframe.js" type="text/javascript"></script>
    <script src="../js/valid.js" type="text/javascript"></script>
    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <%--<script src="../js/jquery-1.4.4.min.js" type="text/javascript"></script>--%>
    <%--<script src="../js/jquery-3.2.1.js" type="text/javascript"></script>--%>
    <script src="https://cdn.bootcss.com/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <title>修改部门</title>
    <script>
        function toQuery() {
            // $("#clean1").empty();
            while ($("#tr_color").length > 0) {
                $("#tr_color").remove();
            }
            alert(JSON.stringify($('#search').serializeObject()));
            $.ajax({
                type: 'post',
                url: 'position_queryByName.do',
                contentType: 'application/json;charset=utf-8',
                data: JSON.stringify($('#search').serializeObject()),
                success: function (data) {
                    $.each(data, function (index, position) {
                        var td1 = $('<tr id="tr_color">');
                        var td2 = $(' <td><input name="check" type="checkbox" value="cheak" disabled="disabled"/></td>');
                        var td3 = $(' <td>${position.sno}</td>');
                        var td4 = $('<td><a href="#div_bottom" onclick="showBottom()">${position.sname}</a></td>');
                        var td5 = $('<td>${position.stype}</td>');
                        var td6 = $('  <td>${position.s_setdate}</td>');
                        var td7 = $('</tr>');
                        $("#tr_title").append(td1,td2,td3,td4,td5,td6,td7);
                    })
                }
            });
        }
    </script>
</head>

<body>
<span class="span_title">修改部门：</span>
<hr/>
<span class="span_text">部门查询：</span>
<form id="search" name="form_search" method="get">
    <span class="span_content">编号：</span>
    <input class="input_text_s" name="sno" type="text"/>
    <span class="span_content">名称：</span>
    <input class="input_text_s" name="sname" type="text"/>
    <span class="span_content">类型：</span>
    <select id="choose_type" name="stype">
        <option value="公司" selected="selected">公司</option>
        <option value="部门">部门</option>
    </select>
    <input class="button" type="button" value="查询" onclick="toQuery()"/>
</form>
<hr/>
<div id="div_center">
    <span class="span_text">查询结果：</span>
    <br/>
    <table id="table_search" class="table_list" width="450px" height="100px" border="0" align="center">
        <tr id="tr_title">
            <td width="25">&nbsp;</td>
            <td width="86">编号</td>
            <td width="95">名称</td>
            <td width="56">类型</td>
            <td width="165">成立日期</td>
        </tr>
        <c:forEach items="${sectionList}" var="list">
            <tr id="tr_color">
                <td><input name="check" type="checkbox" value="cheak" disabled="disabled"/></td>
                <td>${list.sno}</td>
                <td><a href="#div_bottom" onclick="showBottom()">${list.sname}</a></td>
                <td>${list.stype}</td>
                <td>${list.s_setdate}</td>
            </tr>
        </c:forEach>
    </table>
</div><!--div for div_center-->
<div id="div_bottom" style="display:none">
    <br/>
    <hr/>
    <span class="span_text">部门信息：</span>
    <form id="form_section" method="post">
        <table align="center" width="430px" border="0px">
            <tr>
                <td><span class="span_table">编号：</span><font class="mark">*</font></td>
                <td><input class="input_text" name="sno" type="text"/></td>
                <td><span class="span_table">名称：</span><font class="mark">*</font></td>
                <td><input class="input_text" name="sname" type="text"/></td>
            </tr>
            <tr>
                <td><span class="span_table">类型：</span><font class="mark">*</font></td>
                <td><select id="choose_type" name="stype">
                    <option value="Co" selected="selected">公司</option>
                    <option value="Se">部门</option>
                </select></td>
                <td><span class="span_table">电话：</span><font class="mark">*</font></td>
                <td><input class="input_text" name="" type="text"/></td>
            </tr>
            <tr>
                <td><span class="span_table">传真：</span></td>
                <td><input class="input_text" name="sfax" type="text"/></td>
                <td><span class="span_table">上级部门：</span></td>
                <td><select id="choose_type">
                    <option value="Co" selected="selected">公司</option>
                    <option value="A">A部门</option>
                    <option value="B">B部门</option>
                    <option value="C">C部门</option>
                </select></td>
            </tr>
            <tr>
                <td><span class="span_table">成立日期：</span><font class="mark">*</font></td>
                <td><input class="input_text" name="s_setdate" type="text" onClick="javascript:ShowCalendar(this)"></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td><span class="span_table">描述：</span></td>
                <td colspan="3"><textarea name="sdes" cols="25" rows="3"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><input align="right" class="lbutton" type="submit" value="保存" onclick="return valid_s()"/></td>
            </tr>
        </table>
    </form>
</div><!--div for div_bottom-->
</body>
</html>
