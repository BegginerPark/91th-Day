<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <title>include 액션태그(include_act_simple.jsp)</title>
 <meta charset="UTF-8">
</head>

<body>
 <b>include 단일 파라미터(include_act_simple.jsp)</b><p>
   
 <%-- 한글 파라미터 인코딩 --%>
 <% request.setCharacterEncoding("UTF-8"); %>

 <jsp:include page="./include/inc_act_simple.jsp" flush="true">
   <jsp:param name="para1" value="p1 값" />   
   <jsp:param name="para2" value="p2 값" />
   <jsp:param name="para3" value="파라미터3 값" />
 </jsp:include>
 
 <p>include 단일 파라미터</p>
 
</body>
</html>
