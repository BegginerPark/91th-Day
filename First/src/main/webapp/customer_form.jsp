<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
 <title>회원 가입 폼(customer_insert_form.jsp)</title>
 <meta charset="UTF-8">
 <!-- 
 <style>
  /* table {margin:auto; width:300px; border-collapse:collapse;} */
  table {width:400px; border-collapse:collapse; border:2px solid black; }
  caption {font-size:20pt; font-weight:bold;}
  th, td {border:1px solid grey; padding:3px;}
  th {width:25%; background-color:#CFD0ED; text-align:left;}
  td {background-color:#FAFAEE; text-align:left;}
  .msg_red {font-size:10pt; color:red;}
 </style>
 --> 
 <link rel="stylesheet" href="../common/CSS/customer_insert.css"> 
</head>

<body>
<form name="customer_form" method="post" action="customer.jsp">
 <table>
  <caption>회원 가입</caption> 
  <tr>
   <th><span class="msg_red">*</span>아 이 디</th>
   <td><input type="text" name="id" size="10" maxlength="10" required autofocus></td>
  </tr>
  <tr>
   <th><span class="msg_red">*</span>비밀번호</th>
   <td><input type="password" name="pw" size="11" maxlength="10" required></td>
  </tr>
  <tr>
   <th><span class="msg_red">*</span>이&nbsp;&nbsp;름</th>
   <td><input type="text" name="name" size="10" maxlength="5" required></td>
  </tr>
  <tr>
   <th>&nbsp; 성&nbsp;&nbsp;별</th>
   <td><input type="radio" name="gender" value="M">남자&nbsp;&nbsp;&nbsp;
       <input type="radio" name="gender" value="F">여자</td>
  </tr>
  <tr>
   <th>&nbsp; 취&nbsp;&nbsp;미</th>   
   <td><input type="checkbox" name="hobby" value="등산">등산&nbsp;&nbsp;
	   <input type="checkbox" name="hobby" value="낚시">낚시&nbsp;&nbsp;
	   <input type="checkbox" name="hobby" value="독서">독서&nbsp;&nbsp;
	   <input type="checkbox" name="hobby" value="테니스">테니스</td>
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