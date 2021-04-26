<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>회원정보 보기</title>
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/signin.css">
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBean -->
	<jsp:useBean id="mbean" class="bean.MemberBean"> <!-- 객체생성 MemberBean mbean = new MemberBean() -->
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean> 
	<h2>ID : <jsp:getProperty property="id" name="mbean"/></h2>
	<h2>PW : <jsp:getProperty property="pw" name="mbean"/></h2>
	<h2>EMAIL : <jsp:getProperty property="email" name="mbean"/></h2>
	
	<%=mbean.getPhone() %>
</body>
</html>