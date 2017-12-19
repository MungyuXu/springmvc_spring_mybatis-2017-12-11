function alls() {
    var sum = document.getElementsByName("check");
    for (var i = 0; i < sum.length; i++) {  //循环输出
        if (sum[i].type == "checkbox") {  //判断是否是checkbox
            sum[i].checked = true; //是的话就选中
        }
    }
}

function unalls() {
    var sum = document.getElementsByName("check");//
    for (var i = 0; i < sum.length; i++) {  //循环输出
        if (sum[i].type == "checkbox") {  //判断是否是checkbox
            sum[i].checked = false; //是的话就不选中
        }
    }
}

function resets() {
    var sum = document.getElementsByName("check");//
    for (var i = 0; i < sum.length; i++) {  //循环输出
        if (sum[i].type == "checkbox") {  //判断是否是checkbox
            if (sum[i].checked == true) {    //判断是否选中
                sum[i].checked = false;  //选中的让其不选择
            }
            else {      //判断是否没选
                sum[i].checked = true;   //没选中的让其选择
            }
        }
    }
}


function showCenter() {
    document.getElementById("div_center").style.display = "";
    return false;
}

function showBottom() {
    // alert(document.getElementById("div_bottom").style.display);
    document.getElementById("div_bottom").style.display = "block";
}

//岗位修改
function position_showBottom(td_id) {
    var id = '{"pno":"' + td_id + '"}';
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'position_queryByName.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data: id,
        success: function (data) {
            $.each(data, function (index, position) {
                document.getElementById("pno").value = position.pno;
                document.getElementById("pname").value = position.pname;
                // document.getElementById("ptype").value = position.ptype;
                document.getElementById("pnum").value = position.pnum;

            })
        }
    });
}


function section_showBottom(td_id) {
    var id = '{"sno":"' + td_id + '"}';
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'section_queryByName.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data: id,
        success: function (data) {
            $.each(data, function (index, position) {
                document.getElementById("sno").value = position.sno;
                document.getElementById("sname").value = position.sname;
                $("#sphone").val(position.stype);
                document.getElementById("sphone").value = position.sphone;
                document.getElementById("sfax").value = position.sfax;
                $("#choose_type").val(position.supper);
                document.getElementById("s_setdate").value = position.s_setdate;
            })
        }
    });
}

//对应员工岗位调动
function pmove_showBottom(td_id) {
    var id = '{"eno":"' + td_id + '"}';
    alert(id);
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'employ_queryByName.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data: id,
        success: function (data) {
            $.each(data, function (index, position) {
                document.getElementById("eno").value = position.eno;
                document.getElementById("ename").value = position.ename;
                document.getElementById("eid").value = position.eid;
            })
        }
    });
}
//查询已调动岗位员工
function movep_showBottom(td_id) {
    var id = '{"q_eno":"' + id + '"}';
    alert(id);
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'position_move_queryByName.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data: id,
        success: function (data) {
            $.each(data, function (index, position) {
                document.getElementById("q_eno").value = position.q_eno;
                document.getElementById("q_ename").value = position.q_ename;
                document.getElementById("pmove_cause").value = position.pmove_cause;
                // document.getElementById("pmove_date").value = position.pmove_date;
                document.getElementById("eposition").value = position.eposition;
                document.getElementById("pmove_position").value = position.pmove_position;
                document.getElementById("pmove_type").value = position.pmove_type;
            })
        }
    });
}

function show(mydiv) {
    document.getElementById(mydiv).style.display = "";
}

function hidden(mydiv) {
    document.getElementById(mydiv).style.display = "none";
}

function tm_leave() {
    var type = document.getElementById("result").value;

    if (type == "不予录用") {
        if (confirm("是否对该员工进行离职处理")) {
            document.location.replace("leave.html");

            return false;
        }
    }
    return true;
}
function valid_submit_modify() {
    if (valid_s()){
        $.ajax({
            type: 'post',
            url: 'sectionUpDateById.do',
            contentType: 'application/json;charset=utf-8',
            //通过id取表格对象转换成json格式
            data:JSON.stringify($('#form_section').serializeObject()),
            success: function (data) {
                alert("修改成功");
            }
        });
    }
}
function sectionMove_showBottom(eno) {
    var id = '{"eno":"' + eno + '"}';
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'employQeryById.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data: id,
        success: function (data) {
            $.each(data, function (index, employ) {
                document.getElementById("eno1").innerText = employ.eno;
                document.getElementById("eno").value = employ.eno;
                document.getElementById("name1").innerText = employ.ename;
                document.getElementById("name").value = employ.ename;
                document.getElementById("oldPosition1").innerText = employ.esection;
                document.getElementById("oldPosition").value = employ.esection;
            })
        }
    });
}
function s_move_showBottom(id) {
    var json = '{"id":"' + id + '"}';
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'sectionMoveQeryById.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data: json,
        success: function (data) {
            $.each(data, function (index, sectionMove) {
                document.getElementById("eno").innerText = sectionMove.eno;
                document.getElementById("name").innerText = sectionMove.name;
                document.getElementById("moveCause").innerText = sectionMove.moveCause;
                document.getElementById("moveDate").innerText = sectionMove.moveDate;
                document.getElementById("oldPosition").innerText = sectionMove.oldPosition;
                document.getElementById("movePosition").innerText = sectionMove.movePosition;
                document.getElementById("moveType").innerText = sectionMove.moveType;
                document.getElementById("remark").innerText = sectionMove.remark;
            })
        }
    });
}