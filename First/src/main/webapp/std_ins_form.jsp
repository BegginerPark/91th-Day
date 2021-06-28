<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 테이블(student) 학생 정보 입력(std_ins_form.jsp)</title>
<meta charset="UTF-8">
<link rel="stylesheet" href = "../common/CSS/student_insert.css">
</head>
<body>
<form name = "student_form" method="post" action = std_ins_db.jsp><
<table>
<caption>학생 정보 입력</caption>
	<tr>
		<td>&nbsp; 학 번 </td>
		<td><input type = "text" name = "hakbun" size = "10" required autofocus></td>
	</tr>
	<tr>
		<td>&nbsp; 이 름 </td>
		<td><input type = "text" name = "name" maxlength = "5" required></td>
	</tr>
	<tr>
		<th>&nbsp; 학 년 </th>
		<td><input type = "radio" name = "year" value = "1" required>1학년&nbsp;
		<td><input type = "radio" name = "year" value = "2" required>2학년&nbsp;
		<td><input type = "radio" name = "year" value = "3" required>3학년&nbsp;
		<td><input type = "radio" name = "year" value = "4" required>4학년</td>
	</tr>
	<tr>
		<th>&nbsp; 학 과 </th>
		<td><input type = "text" name = "dept" size = "10" maxlength = "10" required></td>
	</tr>
	<tr>
		<th>&nbsp; 주 소 </th>
		<td><input type = "text" name = "addr" size = "40" maxlength = "40" required></td>
	</tr>
	<tr>
		<td colspan = "2" style = "text-align:center;">
		<input type = "submit" value = "전송">
		<input type = "reset" value = "취소"></td>
	</tr>
</table>
</body>
</html>