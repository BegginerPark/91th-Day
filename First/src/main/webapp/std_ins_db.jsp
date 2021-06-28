<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 테이블(student) 학생 정보 저장(std_ins_db.jsp)</title>
</head>
<body>

<%

Connection conn = null;
PreparedStatement pstmt = null;

String driverClass = "org.h2.Driver";

try {
	Class.forName(driverClass);
	out.println("JDBC Driver laoding 성공!<Br>");
} catch (ClassNotFoundException err) {
	out.println("JDBC Driver loading 실패!! ...WEB-INF/lib 폴더 확인<Br>");
}

String url = "jdbc:h2:~/test";
String id= "sa";
String pw = "";

try {
	conn = DriverManager.getConnection(url, id, pw);
	out.println("H2 서버 연결 성공!<Br>");
	
	String hakbun = request.getParameter("hakbun");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String dept = request.getParameter("dept");
	String addr = request.getParameter("addr");
	
	String sql = "insert into student values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hakbun);
		pstmt.setString(2, name);
		pstmt.setString(3, year);
		pstmt.setString(4, dept);
		pstmt.setString(5, addr);
	pstmt.executeUpdate();
	out.println("학생 테이블(student) 튜플 삽입 성공!<Br>");
} catch (SQLException sqlerr){
	out.println("H2 서버 연결 실패!!<Br>");
	out.println(sqlerr.getMessage() + "<Br>");
} finally {
	if (pstmt != null) {
		try {
			pstmt.close();
			out.println("Statement_close!<Br>");
		} catch (SQLException sqlerr) {}
	}
	if (conn != null) {
		try {
			conn.close();
			out.println("H2 서버 연결 종료!<Br>");
		} catch (Exception conerr) {}
	}
}
%>
<a href = "./std_ins_form.jsp">[학생 정보 입력 폼]</a>
</body>
</html>