<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录/Login</title>
<style type="text/css">
* {
	padding: 0;
	border: 0;
}
html,body {
	width: 100%;
	height: 100%;
}
</style>
</head>
<body style="margin: 0px;">
	<div style="width: 50%;height: 100%;background-color: rgb(1,207,255);"></div>
	<div style="width: 935px;height:467px;background-color: rgb(50,67,93);position: absolute; left:209px;top: 82px;">
		<div style="width: 298px;height: 264px;margin-top: 102px;margin-left: 80px;float: left;">
			<img src="images/logo.png" style=" width: 100px;height: 100px;margin-top: 55px;margin-left: 100px;">
			<p style="font-size: 25px;margin-left: 50px;color: #FFF;">学生后台管理系统</p>
		</div>
		<hr style="width: 2px;height: 264px;margin-left: 30px;margin-top:102px; float: left;background:rgb(140,140,140);">
		<div style="width:245px;height:220px; margin-top: 102px;margin-left: 80px;float: left;">
			<p style="color: rgb(1,207,255);font-size: 20px;">登录/Login</p>
			<form  action="Login" method="post" >
			<table>
				<tr>
					<td><input type="text" name="username" style="clear:both;width:270px;height:30px;border: none;border-bottom:1px solid #FFF;background-color: rgb(50,67,93);margin-bottom: 25px;"></td>
				</tr>
				<tr>
					<td><input type="password" name="password" style="clear:both;width:270px;height:30px;border: none;border-bottom:1px solid #FFF;background-color: rgb(50,67,93);margin-bottom: 25px;"></td>
				</tr>
			</table>
			<div>
				<input type="submit" value="登录" style="width: 270px;margin-left: 5px;margin-top:30px;height: 35px;border-radius: 17px;font-size: 18px;background-color: rgb(1,207,255);border: none;">
			</div>
		</form>
		</div>
	</div>

</body>
</html>