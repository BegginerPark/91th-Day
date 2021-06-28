<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대학 데이터베이스(univ) 생성(univ_db_create.jsp)</title>
<meta charset = "UTF-8">
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
	
	String sql = "CREATE DATABASE univ";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	out.println("대학 데이터베이스(univ) 생성 성공!<Br>");
} catch (SQLException sqlerr) {
	out.println("대학 데이터베이스(univ) 생성 실패!!<Br>");
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


</body>
</html>