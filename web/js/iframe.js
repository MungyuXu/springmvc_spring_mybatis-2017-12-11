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
    // alert("aaaaaaa");
    alert(document.getElementById("div_bottom").style.display);
    document.getElementById("div_bottom").style.display = "block";
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
