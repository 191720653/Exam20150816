<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<script type="text/javascript">
	function check(form) {
		//document.forms.form1.username.value取得form1中Username的值 并判断是否为空
		if (document.forms.LoginForm.uname.value == "") {
			//如果 为""则弹出提示
			alert("请输入用户名！");
			//将输入焦点定位到没有输入的地方
			document.forms.LoginForm.uname.focus();
			//返回错误
			return false;
		}
	}
</script>
</head>
<body>
<form action="<%= request.getContextPath() %>/LoginServlet" method="post" name="LoginForm">
		<% if(request.getAttribute("return_uri") != null) { %>
			<input type="hidden" name="return_uri" value="<%= request.getAttribute("return_uri") %>">
		<% } %>
		<table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#E8E8E8">用户登陆</td>
			</tr>
			<tr >
				<td>用户名：</td>
				<td><input type="text" name="uname" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="submit" value="登录" onclick="return check(this);" />
					<input type="reset" name="reset" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>