<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>쿠키 확인(cookie_check.jsp)</title>
</head>
<body>
 <b>쿠키 확인</b><p>
 <%
  Cookie[] cookies = request.getCookies();
 
  if (cookies != null) {

     for ( int i = 0; i < cookies.length; i++) {

        String name = cookies[i].getName();
        String value = cookies[i].getValue();
        
        out.print("쿠키 이름 : " + name + "<Br>");
        out.print("쿠키 값 : " + value + "<p>");
     }
 
  } else {
     out.println("설정된 쿠키 정보가 없습니다 !!");
  }
 %>

 <p><a href="cookie_delete.jsp">[ 쿠키 삭제 ]</a>
</body>
</html>