function valid()
{
	var lname=document.getElementById("l_name").value;
	var lpwd=document.getElementById("l_pwd").value;
	if(lname==""||lpwd=="")
	{
		alert("�˺ź����벻��Ϊ��.");
		return false;
		}
    else if (lname=="123"&&lpwd=="123"){
		document.location.replace("index.html");
		return false;
		}
		else
		{
			alert("�˺ź������������.");
			return false;
			}
	}