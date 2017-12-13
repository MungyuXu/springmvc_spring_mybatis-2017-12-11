function valid()
{
	var lname=document.getElementById("l_name").value;
	var lpwd=document.getElementById("l_pwd").value;
	if(lname==""||lpwd=="")
	{
		alert("账号和密码不能为空.");
		return false;
		}
    else if (lname=="123"&&lpwd=="123"){
		document.location.replace("index.html");
		return false;
		}
		else
		{
			alert("账号和密码输入错误.");
			return false;
			}
	}