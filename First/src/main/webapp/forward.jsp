<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward 액션태그</title>
</head>
<body>
<b>forward 액션태그</b>

<%
	String msg = "formward 액션태그 테스트";

%>
<jsp:forward page="./include/inc_sum_for.jsp">

<p>forward 액션태그</p>


</body>
</html>