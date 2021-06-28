<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>논리 연산자(el_op_logic.jsp)</title>
</head>
<body>

<b>논리 연산자</b><Br>
\${5 >= 5 and 5 <= 5} = ${5 >= 5 and 5 <= 5}<Br>
\${5 > 5 or 5 == 5} = ${5 > 5 or 5 == 5}<Br>
\${(5 >= 5) && (5 <= 5)} = ${(5 >= 5) && (5 <= 5)}<Br>
\${(5 > 5) || (5 == 5)} = ${(5 > 5) || (5 == 5)}<Br>
\${!(5 >5)} = ${!(5 >5)}<Br>


</body>
</html>