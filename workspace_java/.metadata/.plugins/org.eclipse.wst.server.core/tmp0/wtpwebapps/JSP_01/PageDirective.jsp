<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="Error.jsp" isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Page Directive</title>
</head>
<body>

	<h1>스크립트릿에서 선언한 변수는 "JSP페이지"가 서블릿으로 변환될때 지역변수로 사용된다.</h1>
	<%
		int sum = 10/0; //에러코드작성
	%>
	
</body>
</html>