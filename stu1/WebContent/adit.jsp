<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新学生页面</title>
</head>
<body>
<h3>更新学生页面</h3>
<form method="post" action="UpdateServlet">
<input type="hidden" name="sid" value="${stu.sid }">
<table border="1">
	<tr>
		<td>姓名</td>
		<td><input type="text" name="sname" value="${stu.sname }"></td>
	</tr>
	<tr>
		<td>性别</td>
		<td><input  type="radio" name="gender" value="男" <c:if test="${stu.gender=='男' }">checked</c:if>
		>男  
		<input  type="radio" name="gender" value="女" <c:if test="${stu.gender=='女' }">checked</c:if>
		>女</td>
	</tr>
	<tr>
		<td>电话</td>
		<td><input type="text" name="phone" value="${stu.phone }"></td>
	</tr>
	<tr>
		<td>生日</td>
		<td><input type="date" name="birthday" value="${stu.birthday }"></td>
	</tr>
	<tr>
		<td>爱好</td>
		<td>
			<input type="checkbox" name="hoby" value="游泳" <c:if test="${fn:contains(stu.hoby,'游泳') }">checked</c:if>
			>游泳 
			<input type="checkbox" name="hoby" value="篮球" <c:if test="${fn:contains(stu.hoby,'篮球') }">checked</c:if>
			>篮球
			<input type="checkbox" name="hoby" value="足球" <c:if test="${fn:contains(stu.hoby,'足球') }">checked</c:if>
			>足球
			<input type="checkbox" name="hoby" value="看书" <c:if test="${fn:contains(stu.hoby,'看书') }">checked</c:if>
			>看书 
			<input type="checkbox" name="hoby" value="写字" <c:if test="${fn:contains(stu.hoby,'写字') }">checked</c:if>
			>写字 
		</td>
	</tr>
	<tr>
		<td>简介</td>
		<td><textarea name="info" rows="3" cols="20" style="overflow:hidden;">${stu.info }</textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="提交"></td>
	</tr>
</table>
</form>
</body>
</html>