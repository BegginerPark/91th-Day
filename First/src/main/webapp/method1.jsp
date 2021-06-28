<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>매소드 사용(method.jsp)</title>
</head>
<body>
<b>메소드 정의와 호출</b>

<%!
	public int sum(int para1, int para2) {
	int tot;
	
	tot = para1 + para2;
	return tot;
}


%>

<%
	int su1 = 1;
	int su2 = 10;
	int hap = 0;
	int fcn_sum = 0;
	
	hap = su1 + su2;
	fcn_sum = sum(su1, su2);

%>

<br><br><br>


<%=su1 %> + <%=su2 %> = <%=hap %><p>

<%=su1 %> + <%=su2 %> = <%=fcn_sum %><p>

<%=su1 %> + <%=su2 %> = <%=sum(1,10) %><p>









</body>
</html>