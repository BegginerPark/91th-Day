<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 테이블(student) 스키아 생성(univ_stdbl_create.jsp)</title>
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
} catch (SQLException sqlerr){
	out.println("H2 서버 연결 실패!!<Br>");
	out.println(sqlerr.getMessage() + "<Br>");
}

try {
	String sql = "CREATE TABLE student ("
			+ "hakbun int not null,"
			+ "name char(5),"
			+ "year tinyint,"
			+ "dept varchar(10),"
			+ "addr varchar(50),"
			+ "primary key(hakbun))";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	out.println("학생 테이블(student) 생성 성공!<Br>");
} catch (SQLException sqlerr) {
	out.println("학생 테이블(student) 생성 실패!!<Br>");
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