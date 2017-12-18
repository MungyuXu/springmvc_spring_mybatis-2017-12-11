function valid_s() {
    var f = document.getElementById("form_section");
    var inputs = f.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].value == "") {
            var n = inputs[i].name;
            if (n != "sdes" && n != "supper" && n != "sfax") {
                alert("必填项不能为空。");
                return false;
            }
        }
    }
    return true;
}

function valid_submit_modify() {
    if (valid_s()){
        alert(11111111111111);
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
}

function valid_p() {
    var f = document.getElementById("form_position");
    var inputs = f.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].value == "") {
            var n = inputs[i].name;
            if (n != "pnum") {
                alert("必填项不能为空。");
                return false;
            }
        }
    }
    return true;
}

function valid_l() {
    var f = document.getElementById("form_leave");
    var inputs = f.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].value == "") {
            var n = inputs[i].name;
            if (n != "leave_to" && n != "leave_remark") {
                alert("必填项不能为空。");
                return false;
            }
        }
    }
    return true;
}

function valid_move() {
    var f = document.getElementById("form_move_submit");
    var inputs = f.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].value == "") {
            var n = inputs[i].name;
            if (n != "remark") {
                alert("必填项不能为空。");
                return false;
            }
        }
    }
    return true;
}

function valid_ne() {
    var f = document.getElementById("information");
    var inputs = f.getElementsByTagName("input");
    var selected = f.getElementsByTagName("select");
    for (var i = 0; i < 6; i++) {
        if (inputs[i].value == "") {
            alert("必填项不能为空！");
            return false;
        }
    }

    return true;
}

function valid_de() {
    var f = document.getElementById("information_t");
    var inputs = f.getElementsByTagName("input");
    var id = document.getElementById("must_input_no");
    for (var i = 0; i < 4; i++) {
        if (inputs[i].value == "") {
            alert("必填项不能为空！");

            return false;
        }
    }
    if (id.value == "") {
        alert("员工号不能为空！")
        return false;
    }
    return true;
}