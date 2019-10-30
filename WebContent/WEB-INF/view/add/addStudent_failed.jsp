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
	<div style="float: left;">
		<h1 style="margin-top: 15px;margin-left: 15px;margin-bottom:50px;color: rgb(1,207,255);">学生信息注册失败!!</h1>
	</div>
</body>
</html>