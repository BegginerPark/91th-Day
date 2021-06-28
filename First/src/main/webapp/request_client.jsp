<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request 내장 객체</title>
</head>
<body>
<b>request 내장 객체 - [클라이언트 관련 정보]</b>
클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>
클라이언트 이름 : <%= request.getRemoteHost() %><br>
클라이언트 포트 : <%= request.getRemotePort() %><br>
클라이언트 사용자 : <%= request.getRemoteUser() %><br>

</body>
</html>