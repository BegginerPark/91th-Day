<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �Ӽ� Ȯ��</title>
</head>
<body>
<b> ���� �Ӽ� Ȯ��</b><p>

���� �Ӽ�(id) : <%= session.getAttribute("id") %><br>
���� �Ӽ�(name) : <%= session.getAttribute("name") %><br>
<p><a href="session_delete.jsp">[ ���� ���� ]</a>


</body>
</html>