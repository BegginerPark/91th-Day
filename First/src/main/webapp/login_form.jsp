<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String cust_id = (String)session.getAttribute("cust_id");
String cust_name = (String)session.getAttribute("cust_name");
Boolean login = false;

if ((cust_id != null && (cust_name != null))) {
	login = true;
}

%>
 <style>
  table {margin:auto; width:300px; border-collapse:collapse;} */
  table {width:400px; border-collapse:collapse; border:2px solid black; }
  caption {font-size:20pt; font-weight:bold;}
  th, td {border:1px solid grey; padding:3px;}
  th {width:25%; background-color:#CFD0ED; text-align:left;}
  td {background-color:#FAFAEE; text-align:left;}
  .msg_red {font-size:10pt; color:red;}
 </style>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 로그인 폼</title>
</head>
<body>
	<form name="login_form" method="POST" action="login_check.jsp">
		<table>
		<caption>로그인 폼</caption>
		<tr>
		<th>아 이 디</th>
		<td><input type="text" name="cust_id" size = "10" maxlength="10" required autofocus></td>
		</tr>
		<th>패스워드</th>
		<td><input type="password" name="cust_pw" size = "11" maxlength="10" required></td>
		</tr>
		<td colspan ="2" style="text-align:center"><%!  %>
		</table>
	
	<%
	if (login) {
		out.print("<input type = 'submit' value = '로그인' disabled>" +
				"<input type = 'button' value = '(" + cust_name + ")님 로그아웃' "
				+ "onClick = location.href = './logout.jsp'> </td>");
	} else {
		out.print("<input type= 'submit' value = '로그인'> "
				+ "<input tyep = 'button' value = '로그아웃' disabled></td>");
	}
	%>
	
	</form>




</body>
</html>