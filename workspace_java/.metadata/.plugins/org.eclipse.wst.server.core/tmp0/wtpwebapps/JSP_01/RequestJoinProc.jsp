<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/signin.css">
</head>
<body>
	
	<%
		//POST방식으로 데이터가 넘어올때 한글이 깨질수 있기에
		request.setCharacterEncoding("UTF-8");
		
		//각종 사용자로부터 넘어온 데이터를 저장해줌
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		String email = request.getParameter("email");
		
		//[]배열 타입으로 리턴
		String [] hobby = request.getParameterValues("hobby");
		
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
		
		
		if(!pw.equals(pw2)){
	%>
		<script type="text/javascript">
			alert("비밀번호가 틀립니다.");
			histroy.go(-1); //이전페이지로 이동
		</script>
	<%
		}
	%>
	<div class="container">
		<form class="form-horizontal">
			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<%= id %>
				</div>
			</div>
			<div class="form-group">
				<label for="pw2" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<%= email %>
				</div>
			</div>
			<div class="form-group">
				<label for="pw2" class="col-sm-2 control-label">취미</label>
				<div class="col-sm-10">
					<%
						for(int i=0; i < hobby.length; i++){
							out.write(hobby[i]+" ");
						}
					%>
				</div>
			</div>
			<div class="form-group">
				<label for="pw2" class="col-sm-2 control-label">직업</label>
				<div class="col-sm-2">
					<%= job %>
				</div>
			</div>
			<div class="form-group">
				<label for="pw2" class="col-sm-2 control-label">나이</label>
				<div class="col-sm-10">
					<%= age %>
				</div>
			</div>
			<div class="form-group">
				<label for="pw2" class="col-sm-2 control-label">하고싶은말</label>
				<div class="col-sm-10">
					<%= info %>
				</div>
			</div>
		</form>
	</div>
</body>
</html>