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
		<p style="font-size: 20px;color: red;margin-left: 15px;margin-top: 20px;">学生信息修改失败！</p>
		<p style="font-size: 20px;color: rgb(1,207,255);margin-left: 15px;margin-top: 40px;float: left;">未查找到学生信息</p>
		<a href="Index?tojsp=<%="addStudent"%>" style="font-size: 20px;color: rgb(1,207,255);margin-left: 15px;margin-top: 40px;float: left;">去注册</a>
		
	</div>
</body>
</html>