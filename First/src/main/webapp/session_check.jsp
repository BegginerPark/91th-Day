<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 속성 확인</title>
</head>
<body>
<b> 세션 속성 확인</b><p>

세션 속성(id) : <%= session.getAttribute("id") %><br>
세션 속성(name) : <%= session.getAttribute("name") %><br>
<p><a href="session_delete.jsp">[ 세션 삭제 ]</a>


</body>
</html>