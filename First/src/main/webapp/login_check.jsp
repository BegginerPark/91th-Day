<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�α��� üũ �� ���� ����(login_check.jsp)</title>
</head>
<body>

<%
String user_id = "root";
String user_pw = "admin";
String user_name = "������";

String cust_id = request.getParameter("cust_id");
String cust_pw = request.getParameter("cust_pw");
if (cust_id.isEmpty() || cust_pw.isEmpty()) {
	out.print("<script>alert('���̵�� ��й�ȣ�� �Է��Ͻÿ�!!');"
	+ "history.back();"
	+"</script>");
}


if (cust_id.equals(user_id) && cust_pw.equals(user_pw)) {
	session.setAttribute("cust_id", user_id);
	session.setAttribute("cust_name", user_name);
	out.print("<b>" + session.getAttribute("cust_id") + "(" 
	+ session.getAttribute("cust_name") + ")�� �湮�� ȯ���մϴ�! </b><p>");
} else {
	out.print("<b> ȸ�� ���� �� �湮�Ͻʽÿ�!!</b><p>");
	
}
%>

���� �Ӽ�(cust_id) : <%= session.getAttribute("cust_id") %><Br>
���� �Ӽ�(cust_name) : <%= session.getAttribute("cust_name") %><p>

<%
response.sendRedirect("./login_form.jsp");
%>

<p><a href="./login_form.jsp">[�α��� ��]</a>

</body>
</html>