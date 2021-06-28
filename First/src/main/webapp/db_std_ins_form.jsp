<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

 <%
  // 세션 객체의 속성 확인
  String hakbun = (String)session.getAttribute("hakbun");
  String name = (String)session.getAttribute("name");
  Boolean login = false;

  if ((hakbun != null) && (name != null)) {
     login = true;      // 로그인 상태
  }
 %>
 
<!DOCTYPE html>
<html>
<head>
<title>학생 테이블(student) 학생 정보 입력(db_std_ins_form.jsp)</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="../common/CSS/student_insert.css">
</head>

<body>
<form name="student_form" method="post" action="db_login_check.jsp">
 <table>
 <caption>학생 정보 입력</caption>
  <tr>
   <th>&nbsp; 학 번</th>
   <td><input type="text" name="hakbun" size="10" maxlength="10" required autofocus></td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;">
 <%
  if (login) {  // 로그인 경우 버튼 상태
     out.print("<input type='submit' value='로그 인' disabled>"
			 + "<input type='button' value='(" + name + ")님 로그아웃' "
			 + "onClick=location.href='./db_logout.jsp'></td>");
  } else {	    // 로그아웃 경우 버튼 상태
     out.print("<input type='submit' value='로그 인'>"
             + "<input type='button' value='로그아웃' disabled></td>");
  }
 %>
  </tr> 
 </table>
</form>

</body>
</html>