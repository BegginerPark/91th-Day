<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <title>response 내장객체 강제이동</title>
 <meta charset="UTF-8">

 <style>
  table {margin:auto; width:300px; border-collapse:collapse;} */
  table {width:200px; border-collapse:collapse; border:2px solid black; }
  caption {font-size:20pt; font-weight:bold;}
  th, td {border:1px solid grey; padding:3px;}
  th {width:25%; background-color:#CFD0ED; text-align:left;}
  td {background-color:#FAFAEE; text-align:left;}
  .msg_red {font-size:10pt; color:red;}
 </style>

 <link rel="stylesheet" href="../common/CSS/customer_insert.css"> 
</head>

<body>
<form name="login_form" method="post" action="response_redirect_check.jsp">
 <table>
  <caption>redirect 폼</caption> 
  <tr>
   <th><span class="msg_red">*</span>아 이 디</th>
   <td><input type="text" name="cust_id" size="10" maxlength="10" required autofocus></td>
  </tr>
  <tr>
   <th><span class="msg_red">*</span>비밀번호</th>
   <td><input type="password" name="cust_pw" size="11" maxlength="10" required></td>
  </tr>

  <tr>
   <td colspan="2" style="text-align:center;">
       <input type="submit" value="전송">
       <input type="reset" value="취소"></td>
  </tr>
 </table>
</form> 
</body>
</html>