<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../common/CSS/table_retrieval.css">
<title>학생 테이블 학생 정보 검색</title>
</head>
<body>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rset = null;

String driverClass = "org.h2.Driver";

try {
	Class.forName(driverClass);
	out.println("JDBC Driver loading 성공!<br>");
} catch(ClassNotFoundException err) {
	out.println("JDBC Driver loading 실패!!<br>");
}
String url = "jdbc:h2:~/test";
String id = "sa";
String pw = "";
try {
	conn = DriverManager.getConnection(url, id, pw);
	out.println("MariaDB 서버 연결 성공!<br>");
	String sql = "SELECT * FROM student ORDER BY hakbun ASC";
	pstmt = conn.prepareStatement(sql);
	rset = pstmt.executeQuery();
	
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
	out.println("SQL 질의처리 오류!" + "<br>");
	out.println(sqlerr.getMessage() + "<br>");

} finally {
   // 데이터베이스 연결 종료(close database)
   if (pstmt != null) {
       try {
          pstmt.close();
          out.println("Statement_close!<Br>");
       } catch (SQLException sqlerr) {}
   }
   if (conn != null) {
      try {
         conn.close();
         out.println("MariaDB 서버 연결 종료!<Br>");
      } catch (Exception conerr) {}
   }
}

%>

</table>
</form>
</body>
</html>