<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기타 연산자(el_op_etc.jsp)</title>
</head>
<body>
<b>기타 연산자</b><Br>
\${(5 >7) ? 5 : 7} = ${(5 >7) ? 5 : 7}<Br>

<%
	Cookie[] cookies = request.getCookies();
%>

\${empty ""} = ${empty ""}<Br>
\${empty cookies} = ${empty cookies} <Br>

</body>
</html>