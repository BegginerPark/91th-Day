<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �Ӽ� ����</title>
</head>
<body>
<%
session.setAttribute("id","admin");
session.setAttribute("name","������");

out.print("���� �Ӽ��� ���� �Ǿ����ϴ�. !<br>");
%>
���� �Ӽ�(id) : <%= session.getAttribute("id") %>
���� �Ӽ�(name) : <%= session.getAttribute("name") %>

<p><a href="session_check.jsp">[ ���� �Ӽ� Ȯ�� ]</a>


</body>
</html>