<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>다중 파라미터(inc_act_multiple.jsp)</title>
</head>

<body>
 <b>다중 파라미터(inc_act_multiple.jsp)</b><Br>
 <%
  String[] para1 = request.getParameterValues("para1");    

  if (para1 != null) {
	  
     for (int i = 0; i < para1.length; i++) {
        out.println("전송 파라미터 1 : " + para1[i] + "<Br>");
     }
  }
 %>
전송 파라미터 2 : <%= request.getParameter("para2") %><Br>
전송 파라미터 3 : <%= request.getParameter("para3") %> 

</body>
</html>