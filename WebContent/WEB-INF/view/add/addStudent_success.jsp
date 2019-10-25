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
		<h1 style="margin-top: 15px;margin-left: 15px;margin-bottom:50px;color: rgb(1,207,255);">学生信息注册成功!!</h1>
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