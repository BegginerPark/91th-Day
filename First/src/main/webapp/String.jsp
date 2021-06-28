<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>스트링 클래스 사용(string.jsp)</title>
</head>
<body>
<b>스트링 클래스 메소드</b><br>
<%
	String univ = "first university";
	String UNIV = "FIRST UNIVERSITY";
	String msg = "";

	int str_len = univ.length();
	String sub_str1 = univ.substring(0,4);
	String sub_str2 = UNIV.substring(4);
%>

	문자열 길이(length) : <%=str_len %><br>
	부분 문자열(substring) : <%=sub_str1 %><br>
	부분 문자열(SUBSTRING) : <%=sub_str2 %><br>
	<%
	if (univ.isEmpty()) {
		msg = "empty";
	} else {
		msg = "not empty";
	}
	out.print("isEmpty :" + msg + "<br>");
		

		
	
	if (univ.equals(UNIV.toLowerCase())) {
		msg = "equal";
	} else {
		msg = "not equal";
	}
	out.print("toLowerCase :" + msg + "<br>");
		
	%>

</body>
</html>