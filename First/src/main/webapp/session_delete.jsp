<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 삭제</title>
</head>
<body>
세션 속성(id) : <%= session.getAttribute("id") %>
세션 속성(name) : <%= session.getAttribute("name") %>

<%
out.print("세션 생성 시간 = " + session.getCreationTime() + "초");
out.print("클라이언트의 해당 세션 마지막 접근 시간 =  "
+ session.getLastAccessedTime() + "초<br>");

out.print("클라이언트의 세션 유지 시간 =  "
+ (session.getLastAccessedTime()-session.getCreationTime()) + "초<br>");

out.print("클라이언트의 유효시간 =  "
+ session.getMaxInactiveInterval() + "초<br>");

session.removeAttribute("id");
session.removeAttribute("name");
out.print("세션 객체의 속성을 삭제하였습니다.<br> ");

%>
<br>
세션 속성(id) : <%= session.getAttribute("id") %><br>
세션 속성(name) : <%= session.getAttribute("name") %>
<br>
<%
session.invalidate();
out.print("모든 세션 정보를 삭제하였습니다. !! <br> ");
%>

<p><a href="session_check.jsp">[ 세션 속성 확인 ]</a>



</body>
</html>