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
		request.setCharacterEncoding("UTF-8");
	
		//임의적으로 id와 pw를 설정
		String dbid = "aaaa";
		String dbpw = "1234";
		
		//사용자로부터 넘어온 데이터를 입력 받아줌
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(dbid.equals(id) && dbpw.equals(pw)){
			response.sendRedirect("ResponseMain.jsp?id="+id);
		}else{
	%>
		<script>
			alert("아이디와 패스워드가 일치 하지 않습니다.");
			history.go(-1);
		</script>
	<%			
		}
		
	%>
</body>
</html>