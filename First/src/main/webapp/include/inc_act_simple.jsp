<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>단일 파라미터(inc_act_simple.jsp)</title>
</head>

<body>
 <b>단일 파라미터(inc_act_simple.jsp)</b><Br>

 전송 파라미터 1 : <%= request.getParameter("para1") %><Br>
 전송 파라미터 2 : <%= request.getParameter("para2") %><Br>
 전송 파라미터 3 : <%= request.getParameter("para3") %> 

</body>
</html>