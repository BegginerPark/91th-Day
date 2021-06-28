<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃과 세션 삭제(logout.jsp)</title>
</head>
<body>

세션 속성(cust_id) : <%= session.getAttribute("cust_id") %><Br>
세션 속성(cust_name) : <%= session.getAttribute("cust_name") %><p>

<%
out.print("<b>" + session.getAttribute("cust_id")
				+ "(" + session.getAttribute("cust_name")
				+ ")님 로그인 중 .......</b><p>");

out.print("세션 생성 시간 = " + session.getCreationTime() + "초<Br>");
out.print("클라이언트의 해당 세션 마지막 접근 시간 = " 
			+ session.getLastAccessedTime() + "초<Br>");
out.print("클라이언트의 세션 유지 시간 = "
			+ (session.getLastAccessedTime() - session.getCreationTime()) + "초<Br>");
out.print("세션의 유효시간 = " + session.getMaxInactiveInterval() + "초(30초)<p>");

session.removeAttribute("cust_id");
session.removeAttribute("cust_name");
out.print("세션 속성(cust_id) : " + session.getAttribute("cust_id") + "<Br>");
out.print("세션 속성(cust_name) : " + session.getAttribute("cust_name") + "<p>");

session.invalidate();

out.print("<b> 로그 아웃 하셨습니다!!</b><p>");

%>

<p><a href = "./login_form.jsp">[세션 삭제 확인]</a>
</body>
</html>