<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>修改学生信息</title>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	border: 0px;
}
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
 
/* 鼠标移动到选项上修改背景颜色 */
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
		<h1 style="margin-top: 15px;margin-left: 15px;">修改学生信息</h1>
		<p style="font-size: 20px;color: red;margin-left: 15px;margin-top: 20px;margin-bottom: 30px;">学生信息修改成功，  修改后信息如下</p>
		
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