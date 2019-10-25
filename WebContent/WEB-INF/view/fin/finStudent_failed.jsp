<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>查询学生信息</title>
<style type="text/css">
body {
	margin: 0px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    height: 625px;
    background-color: rgb(1,207,255);
}
 
li a {
    display: block;
    color: #FFF;
    padding: 10px 40px;
    text-decoration: none;
}
 
li a:hover {
    background-color: #555;
    color: white;
}
</style>
</head>
<body>
	<div style="float: left;">
		<ul>
			<li><a href="Index?tojsp=<%="finStudent"%>">查询学生信息</a></li>
			<li><a href="Index?tojsp=<%="addStudent"%>">注册学生信息</a></li>
			<li><a href="Index?tojsp=<%="delStudent"%>">删除学生信息</a></li>
			<li><a href="Index?tojsp=<%="modStudent"%>">修改学生信息</a></li>
			<li><a href="Index?tojsp=<%="outStudent"%>">退出登录</a></li>
		</ul>
		
	</div>
	<div style="float: left;">
		<h1 style="margin-top: 15px;margin-left: 15px;">查询学生信息</h1>
		<form action="FinStudent" method="post" onsubmit="return check()" style="margin-top:50px;margin-bottom: 80px;margin-left: 15px;">
			<table style="width: 300px;font-size: 17px;float: left;">
				<tr>
					<td>学号</td>
					<td><input type="text" name="studentno" id="studentno" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><input type="text" name="sname" id="sname" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
			</table>
			<input type="submit" value="查询" id="bt" style="width: 120px;height: 40px;margin-left: 5px;margin-top:23px;border-radius: 17px;font-size: 18px;border: none;background-color: rgb(1,207,255);">
		</form>
		<h3 style="color: red;margin-left: 15px;">对不起，未查询到学生信息！</h3>
	</div>
</body>
</html>