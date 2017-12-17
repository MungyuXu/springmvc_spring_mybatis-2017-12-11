function alls() {
    var sum = document.getElementsByName("check");
    for (var i = 0; i < sum.length; i++) {  //ѭ�����
        if (sum[i].type == "checkbox") {  //�ж��Ƿ���checkbox
            sum[i].checked = true; //�ǵĻ���ѡ��
        }
    }
}

function unalls() {
    var sum = document.getElementsByName("check");//
    for (var i = 0; i < sum.length; i++) {  //ѭ�����
        if (sum[i].type == "checkbox") {  //�ж��Ƿ���checkbox
            sum[i].checked = false; //�ǵĻ��Ͳ�ѡ��
        }
    }
}

function resets() {
    var sum = document.getElementsByName("check");//
    for (var i = 0; i < sum.length; i++) {  //ѭ�����
        if (sum[i].type == "checkbox") {  //�ж��Ƿ���checkbox
            if (sum[i].checked == true) {    //�ж��Ƿ�ѡ��
                sum[i].checked = false;  //ѡ�е����䲻ѡ��
            }
            else {      //�ж��Ƿ�ûѡ
                sum[i].checked = true;   //ûѡ�е�����ѡ��
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
        //ͨ��idȡ������ת����json��ʽ
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

    if (type == "����¼��") {
        if (confirm("�Ƿ�Ը�Ա��������ְ����")) {
            document.location.replace("leave.html");

            return false;
        }
    }
    return true;
}
