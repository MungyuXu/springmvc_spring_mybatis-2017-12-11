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
    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <title>员工岗位调动</title>
    <script>
        function toQuery() {

            while ($("#tr_color").length > 0) {
                $("#tr_color").remove();
            }
            alert("!");
            $.ajax({
                type: 'post',
                url: 'position_move_queryByName.do',
                contentType: 'application/json;charset=utf-8',
                //通过id取表格对象转换成json格式,search是form表单id
                data: JSON.stringify($('#search').serializeObject()),
                success: function (data) {
                    var trc = $("#pmove_search");
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
<span class="span_title">查询已调动岗位员工：</span>
<hr/>
<form id="search" name="form_search" method="get">
    <table border="0">
        <tr>
            <td><span class="span_content">开始日期：</span></td>
            <td><input class="input_text" name="q_start" type="text" id="s_date" title="点击选择"
                       onClick="javascript:ShowCalendar(this)"></td>
            <td><span class="span_content">结束日期：</span></td>
            <td><input class="input_text" name="end" type="text" id="s_date" title="点击选择"
                       onClick="javascript:ShowCalendar(this)"></td>
        </tr>
        <tr>
            <td><span class="span_content">员工编号：</span></td>
            <td><input class="input_text" name="q_eno" type="text"/></td>
            <td><span class="span_content">员工姓名：</span></td>
            <td><input class="input_text" name="q_ename" type="text"/></td>
        </tr>
        <tr>
            <td><span class="span_content">调动方式：</span></td>
            <td><select name="q_method">
                <option>升职</option>
                <option>降职</option>
            </select></td>
            <td>&nbsp;</td>
            <td><input class="button" type="submit" value="查询"/></td>
        </tr>
    </table>
</form>
<hr/>

<div id="div_center">
    <span class="span_text">查询结果：</span>
    <br/>
    <table id="pmove_search" width="450px" class="table_list" border="0">
        <tr id="tr_title">
            <td><span class="span_table">员工号</span></td>
            <td><span class="span_table">姓名</span></td>
            <td><span class="span_table">调动方式</span></td>
            <td><span class="span_table">调动时间</span></td>
        </tr>
        <c:forEach items="${positionMoveList}" var="list">
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
    <form action="info_modify.jsp " id="form_pmove" method="post">
        <span class="span_text">岗位调动信息：</span>
    <br/>
        <table width="450px" border="0">
            <tr>
                <td><span class="span_table">员工号：</span></td>
                <td>1</td>
                <td><span class="span_table">姓名：</span></td>
                <td>1</td>
            </tr>
            <tr>
                <td><span class="span_table">调动原因：</span></td>
                <td>1</td>
                <td><span class="span_table">调动时间：</span></td>
                <td>1</td>
            </tr>
            <tr>
                <td><span class="span_table">原岗位：</span></td>
                <td>1</td>
                <td><span class="span_table">调动后岗位：</span></td>
                <td>1</td>
            </tr>
            <tr>
                <td><span class="span_table">调转类型：</span></td>
                <td>1</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><span class="span_table">备注：</span></td>
                <td colspan="3">1</td>
            </tr>

        </table>
    </form>

</div><!--div for div_bottom-->
</body>
</html>
