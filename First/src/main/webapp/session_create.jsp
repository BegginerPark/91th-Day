<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 속성 설정</title>
</head>
<body>
<%
session.setAttribute("id","admin");
session.setAttribute("name","관리자");

out.print("세션 속성이 설정 되었습니다. !<br>");
%>
세션 속성(id) : <%= session.getAttribute("id") %>
세션 속성(name) : <%= session.getAttribute("name") %>

<p><a href="session_check.jsp">[ 세션 속성 확인 ]</a>


</body>
</html>