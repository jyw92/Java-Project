<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- RequestLogin에서 넘어온 아이디와 패스워드를 읽어드림 -->
	<%
		//사용자의 정보가 저장되어있는 객체 request의 getParameter() 사용자의 정보를 추출
		String id = request.getParameter("id"); //사용자의 ID값을 읽어서 변수 ID에 저장하시오
		String pw = request.getParameter("pw");
		
	%>
	
	
	<p>id : <%= id %></p>
	<p>pw : <%= pw %></p>
	
</body>
</html>