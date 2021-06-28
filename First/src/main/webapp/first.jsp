<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>My First JSP(first.jsp)</title>
</head>
<body>
 <h1>My First JSP 프로그램</h1>
 
 <%
  String name = "대한민국";
 %>
 
 국가 : <%= name %>
 
</body>
</html>