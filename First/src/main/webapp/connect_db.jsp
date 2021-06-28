<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연결(connect_db.jsp)</title>
</head>
<body>
<%
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

Connection conn = null;

try {
	conn = DriverManager.getConnection(url, id, pw);
	out.println("H2 서버 연결 성공!<Br>");
} catch (SQLException sqlerr) {
	out.println("H2 서버 연결 실패!!<Br>");
} finally {
	if (conn!= null) {
		try {
			conn.close();
			out.println("H2 서버 연결 종료!<Br>");
		} catch (Exception conerr) {
			conerr.printStackTrace();
		}
	}
}
%>
</body>
</html>