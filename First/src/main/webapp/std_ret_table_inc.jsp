<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>학생 테이블(student) 학생 정보 검색(std_ret_table_inc.jsp)</title>
<meta charset="UTF-8">
 <link rel="stylesheet" href="../common/CSS/table_retrieval.css">
</head>

<body>
 <%
  // 객체 참조 변수
  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rset = null;
  
 %>
  <%@ include file = "../common/include/database_connect.inc" %>
 <%
  try { 
     // SQL 질의어 처리(perform SQL query(DML))
     // 학생 테이블(customer) 검색
     String sql = "SELECT * FROM student ORDER BY hakbun ASC";
     pstmt = conn.prepareStatement(sql);          
     rset = pstmt.executeQuery();

  // 학생 정보 검색 출력
 %> 
      
<form name="student_form_table">
 <table>
  <caption>학생 정보 검색</caption>
  <tr>
   <th>학 번</th>
   <th>이 름</th>
   <th>학 년</th>
   <th>학 과</th>
   <th>주 소</th>
  </tr>      
 <%
     // 학생 정보(레코드 셋) 출력
     while (rset.next()) {

        String hakbun = rset.getString("hakbun");
        String name = rset.getString("name");
        String year = rset.getString("year");
               year = year + "학년";
        String dept = rset.getString("dept");
        String addr = rset.getString("addr");
 %>
  <tr>
   <td><%=hakbun%></td>
   <td><%=name%></td>
   <td><%=year%></td>
   <td><%=dept%></td>
   <td><%=addr%></td>
  </tr>
 <%
     }

  } catch (SQLException sqlerr) {
     System.out.println("SQL 질의처리 오류!" + sqlerr.getMessage());

  } finally {
     // 데이터베이스 연결 종료(close database)
 %>
     <%@ include file = "../common/include/database_close.inc" %>
 <%	  
  }
 %> 
 </table>
</form>

</body>
</html>