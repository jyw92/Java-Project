<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/signin.css">

</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="MemberJoinProc.jsp" method="post">
			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id" name="id" placeholder="아이디">
				</div>
			</div>
			<div class="form-group">
				<label for="pw" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호">
				</div>
			</div>
			<div class="form-group">
				<label for="pw2" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="email" name="email" placeholder="email">
				</div>
			</div>
			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">휴대폰번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="phone" name="phone" placeholder="휴대폰번호">
				</div>
			</div>
			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">주소</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="address" name="address" placeholder="주소">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit"  class="btn btn-primary">회원가입</button>
					<button type="reset" class="btn btn-default">취소</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>