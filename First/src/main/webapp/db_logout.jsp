<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃과 세션 삭제(db_logout.jsp)</title>
</head>
<body>
 <!-- 세션 객체의 속성 확인 -->
  세션 속성(hakbun) : <%= session.getAttribute("hakbun") %><Br>
  세션 속성(name) : <%= session.getAttribute("name") %><Br>
  
 <%
  out.print(session.getAttribute("hakbun") + "("
          + session.getAttribute("name") + ")님 로그인 중 ...<p>");

  // 세션 객체 삭제 - 세션 초기화
  session.invalidate();
  out.print("<b>로그 아웃 하셨습니다 !!</b><p>");
  
  // 경고 창 무시하고 지정 페이지(URL)로 강제 이동
  // response.sendRedirect("./db_std_ins_form.jsp");
 %>

 <p><a href="./db_std_ins_form.jsp">[  로그인 폼 ]</a>
</body>
</html>