<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
���� �Ӽ�(id) : <%= session.getAttribute("id") %>
���� �Ӽ�(name) : <%= session.getAttribute("name") %>

<%
out.print("���� ���� �ð� = " + session.getCreationTime() + "��");
out.print("Ŭ���̾�Ʈ�� �ش� ���� ������ ���� �ð� =  "
+ session.getLastAccessedTime() + "��<br>");

out.print("Ŭ���̾�Ʈ�� ���� ���� �ð� =  "
+ (session.getLastAccessedTime()-session.getCreationTime()) + "��<br>");

out.print("Ŭ���̾�Ʈ�� ��ȿ�ð� =  "
+ session.getMaxInactiveInterval() + "��<br>");

session.removeAttribute("id");
session.removeAttribute("name");
out.print("���� ��ü�� �Ӽ��� �����Ͽ����ϴ�.<br> ");

%>
<br>
���� �Ӽ�(id) : <%= session.getAttribute("id") %><br>
���� �Ӽ�(name) : <%= session.getAttribute("name") %>
<br>
<%
session.invalidate();
out.print("��� ���� ������ �����Ͽ����ϴ�. !! <br> ");
%>

<p><a href="session_check.jsp">[ ���� �Ӽ� Ȯ�� ]</a>



</body>
</html>