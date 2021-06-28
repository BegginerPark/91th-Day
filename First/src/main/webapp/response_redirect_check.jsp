<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<title>reponse 내장객체 강제 이동</title>
</head>
<body>
<b>reponse 내장 객체 강제이동 페이지</b>
<%
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");

	out.print("아이디 = " + cust_id + "<br>");
	out.print("비밀번호 = " + cust_pw + "<br>");

	response.sendRedirect("first.jsp");

%>


<% 	
// <p><a href="response_redirect_form.jsp">[ redirect 폼]</a>
%> 




</body>
</html>