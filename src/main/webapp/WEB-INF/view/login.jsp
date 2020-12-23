<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="/resources/css/logreg.css">

</head>

<body>
	<div class="container">
		<div class="header">
			<h2>Login Form</h2>
		</div>
		<form:form id="form" class="form" method="post" action="login"
			modelAttribute="user" >

			<div class="form-control">
				<label for="username">Email</label> <form:input  path="email"
					placeholder="ibrahim@hotmail.com" id="email" /> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>
			<div class="form-control">
				<label for="username">Password</label> <form:password
					path="password" placeholder="Şifre Gir" id="password" /> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>

			<button type="submit">Giriş Yap</button>
		</form:form>
	</div>
	
</body>

</html>