<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>查询学生信息</title>
<style type="text/css">
html,body {
	margin: 0px;
	width: 100%;
	height: 100%;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    padding-top: 20px;
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
	<div style="width: 200px;height: 100%;background-color: rgb(1,207,255);float: left;">
		<ul>
			<li><a href="Index?tojsp=<%="finStudent"%>">查询学生信息</a></li>
			<li><a href="Index?tojsp=<%="addStudent"%>">注册学生信息</a></li>
			<li><a href="Index?tojsp=<%="delStudent"%>">删除学生信息</a></li>
			<li><a href="Index?tojsp=<%="modStudent"%>">修改学生信息</a></li>
			<li><a href="Index?tojsp=<%="outStudent"%>">退出登录</a></li>
		</ul>
		
	</div>
	<div style="float: left;margin-left: 30px;">
		<h1 style="margin-top: 15px;margin-left: 15px;">查询学生信息</h1>
		<form action="FinStudent" method="post" style="margin-top:50px;margin-bottom: 80px;margin-left: 15px;">
			<table style="width: 300px;font-size: 17px;float: left;">
				<tr>
					<td>学号</td>
					<td><input type="text" name="studentno" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><input type="text" name="sname" required="required" style="width:200px;height:25px;border: none;border-bottom:1px solid #000;"></td>
				</tr>
			</table>
			<input type="submit" value="查询" style="width: 120px;height: 40px;margin-left: 5px;margin-top:23px;border-radius: 17px;font-size: 18px;border: none;background-color: rgb(1,207,255);">
		</form>
			<table style="width: 1100px;border: 1px;text-align: center;">
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>班级号</th>
					<th>入学成绩</th>
					<th>联系电话</th>
					<th>电子邮件</th>
				</tr>
				<c:forEach items="${list}" var="stu">
					<tr>
						<td>${stu.studentno}</td>
						<td>${stu.sname}</td>
						<td>${stu.sex}</td>
						<td>${stu.birthday}</td>
						<td>${stu.classno}</td>
						<td>${stu.point}</td>
						<td>${stu.phone}</td>
						<td>${stu.email}</td>
					</tr>
				</c:forEach>
			</table>
	</div>
</body>
</html>