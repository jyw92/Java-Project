<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String name = "알리미 어플";
	
	%>
	스크립트 표현식 <%= name %>이 출력
	
	<p>
	
		<% out.println(name + "출력"); %>
		
	</p>
	
</body>
</html>