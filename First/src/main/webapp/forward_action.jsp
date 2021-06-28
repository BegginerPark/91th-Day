<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <title>forward 액션태그(forward_action.jsp)</title>
 <meta charset="UTF-8">
</head>

<body>
 <b>forward 액션태그(forward_action.jsp)</b><p>

 <%
  String msg = "forward 액션태그 테스트";
 %>
 <!-- 1부터 10까지 정수 합 -->
 <jsp:forward page="./include/inc_sum_for.jsp" />

<p>forward 액션태그</p>
 메시지 출력 : <%=msg %>
 
</body>
</html>
