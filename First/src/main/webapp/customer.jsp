<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<title>회원 가입 파라미터</title>
</head>
<body>
<b>회원 가입 요청 파라미터 처리</b>


아이디 : <%= request.getParameter("id")%><br>
비밀번호 : <%= request.getParameter("pw")%><br>
이름 : <%= request.getParameter("name")%><br>
성별 : <%= request.getParameter("gender")%><br>
취미 : 

<% 
 String[] hobby = request.getParameterValues("hobby");

if (hobby != null) {
	for(int i = 0 ; i < hobby.length; i++){
		out.print(hobby[i] + " ");
	}
} else {
	out.print("취미를 선택하지 않았습니다.! "+"<br>");
	
}
%>

</body>
</html>