<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<form action="user_regist/doRegist">
		新用户名：<input type="text" name="username" /><br />
		<br /> 设置密码：<input type="password" name="password" /><br />
		<br /> 确认密码：&nbsp;<input type="password" name="password1" /><br />
		<br /> 用户邮箱：&nbsp;<input type="email" name="user_email" /><br />
		<br /> <input type="submit" value="注册" />
	</form>
</body>
</html>
