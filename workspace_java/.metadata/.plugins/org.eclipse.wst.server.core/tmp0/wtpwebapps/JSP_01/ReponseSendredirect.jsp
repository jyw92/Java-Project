<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
    	<form class="form-signin" action="ResponseLoginProc.jsp" method="post">
        	<h2 class="form-signin-heading">Please sign in</h2>
        	<label for="inputId" class="sr-only">Id address</label>
        	<input type="text" id="id" name="id" class="form-control" placeholder="Id">
        	<label for="inputPassword" class="sr-only">Password</label>
        	<input type="password" id="pw" name="pw" class="form-control" placeholder="Password">
	        <input type="submit" value="Sign in" class="btn btn-lg btn-primary btn-block">
    	</form>
    </div>
</body>
</html>