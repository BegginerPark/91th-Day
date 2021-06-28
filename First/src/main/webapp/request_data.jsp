<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request 내장 객체</title>
</head>
<body>
<b>request 내장 객체 - [전송 관련 정보]</b>
요청정보 프로토콜 : <%= request.getProtocol() %><br>
요청정보 전송방식 : <%= request.getMethod() %><br>
요청정보 컨텐츠 타입 : <%= request.getContentType() %><br>
요청정보 인코딩 : <%= request.getCharacterEncoding() %><br>
요청정보 길이 : <%= request.getContentLength() %><br>

컨텍스트 경로 : <%= request.getMethod() %><br>
요청 URI : <%= request.getContentType() %><br>
요청 URL : <%= request.getCharacterEncoding() %><br>
요청 서블릿 경로 : <%= request.getContentLength() %><br>

쿠키 정보 : <%= request.getMethod() %><br>
세션 아이디 : <%= request.getRequestedSessionId() %><br>
세션 정보 : <%= request.getSession() %><br>



</body>
</html>