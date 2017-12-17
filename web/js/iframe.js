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

function showBottom(td_id) {
    var id = '{"sno":"'+td_id+'"}';
    document.getElementById("div_bottom").style.display = "";
    $.ajax({
        type: 'post',
        url: 'section_queryByName.do',
        contentType: 'application/json;charset=utf-8',
        //通过id取表格对象转换成json格式
        data:id,
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
