<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>注册学生信息</title>
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
form {
	padding:0;
	margin:0
}
</style>
</head>
<body>
	<div id="left_navi" style="float: left;">
		<ul>
			<li><a href="Index?tojsp=<%="finStudent"%>">查询学生信息</a></li>
			<li><a href="Index?tojsp=<%="addStudent"%>">注册学生信息</a></li>
			<li><a href="Index?tojsp=<%="delStudent"%>">删除学生信息</a></li>
			<li><a href="Index?tojsp=<%="modStudent"%>">修改学生信息</a></li>
			<li><a href="Index?tojsp=<%="outStudent"%>">退出登录</a></li>
		</ul>
	</div>
	<div style="float: left;margin-left: 30px;">
		<h1 style="margin-top: 15px;margin-left: 15px;">注册学生信息</h1>
		<form action="AddStudent" method="post" style="margin-top: 50px;margin-bottom: 80px;margin-left: 15px;">
			<table style="width: 500px;">
				<tr style="line-height: 40px;">
					<td>学号</td>
					<td><input type="text" name="studentno" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr style="line-height: 40px;">
					<td>姓名</td>
					<td><input type="text" name="sname" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr style="line-height: 40px;">
					<td>性别</td>
					<td><input type="radio" name="sex" value="男" checked="checked">男  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						<input type="radio" name="sex" value="女" >女</td>
				</tr>
				<tr style="line-height: 40px;">
					<td>生日</td>
					<td><input type="datetime" name="birthday" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr style="line-height: 40px;">
					<td>班级</td>
					<td><input type="text" name="classno" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr style="line-height: 40px;">
					<td>入学成绩</td>
					<td><input type="number" name="point" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr style="line-height: 40px;">
					<td>联系电话</td>
					<td><input type="tel" name="phone" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr style="line-height: 40px;">
					<td>邮箱</td>
					<td><input type="email" name="email" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
			</table>
			<div>
				<input type="submit" value="注册" style="width: 270px;margin-left: 5px;margin-top:50px; height: 35px;border-radius: 17px;font-size: 18px;background-color: rgb(1,207,255);border: none;">
			</div>
		</form>
	</div>
	
</body>
</html>