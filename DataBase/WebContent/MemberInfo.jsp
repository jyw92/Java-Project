<%@ page import="model.MemberBean"%>
<%@ page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
		MemberDAO mdao = new MemberDAO();
		MemberBean mbean = mdao.oneSelectMember(id);
		
	%>
	
	<table>
		<tbody>
			<tr>
				<th>아이디</th>
				<td><%=mbean.getId() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=mbean.getEmail() %></td>
			</tr>
			<tr>
				<th>전화</th>
				<td><%=mbean.getPhone() %></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><%=mbean.getHobby() %></td>
			</tr>
			<tr>
				<th>직업</th>
				<td><%=mbean.getJob() %></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><%=mbean.getAge() %></td>
			</tr>
			<tr>
				<th>정보</th>
				<td><%=mbean.getInfo() %></td>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>