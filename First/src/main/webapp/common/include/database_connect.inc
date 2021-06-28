<%

String driverClass = "org.h2.Driver";

try {
	Class.forName(driverClass);
} catch (ClassNotFoundException err) {
	System.out.println("JDBC 드라이버 로딩 오류! " + err.getMessage());
}

String url = "jdbc:h2:~/test";
String id = "sa";
String pw = "";

try {
	conn = DriverManager.getConnection(url, id, pw);
} catch (SQLException sqlerr) {
	System.out.println("데이터베이스 연결 오류! " + sqlerr.getMessage());
}
%> 