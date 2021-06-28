<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <title>include 액션태그(include_action.jsp)</title>
 <meta charset="UTF-8">
</head>

<body>
 <b>include 액션태그(include_action.jsp)</b><p>

 <!-- 1부터 10까지 정수 합 -->
 <jsp:include page="./include/inc_sum_for.jsp" flush="true" />

<p>include 액션태그</p>
 
</body>
</html>
