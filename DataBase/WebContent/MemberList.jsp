<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		1. DB에서 모든회원의 정보를 가져옴 
		2. table태그를 이용하여 화면에 회원들의 정보를 출력
	-->
	
	<%
		MemberDAO mdao = new MemberDAO();
	
		//회원들의 정보가 얼마나 저장되어있는지 모르기에 가변길이인 VECTOR를 이용하여 데이터를 저장해줌
		Vector<MemberBean> vec = mdao.allSelectMember();
		
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>취미</th>
			</tr>
			<%
				for(int i = 0; i < vec.size(); i++){
					MemberBean bean = vec.get(i);
			%>
			<tr>
				<td><a href="MemberInfo.jsp?id=<%=bean.getId()%>"><%=bean.getId() %></a></td>
				<td><%=bean.getEmail() %></td>
				<td><%=bean.getPhone() %></td>
				<td><%=bean.getHobby() %></td>
			</tr>
			<%
				}
			%>
		</thead>
	</table>
	
</body>
</html>