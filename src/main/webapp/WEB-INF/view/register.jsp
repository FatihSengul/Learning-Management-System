<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="en">

<head>

<title>KULLANCI KAYIT FORMU</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet" href="/resources/css/logreg.css">
<script src="/recourses/js/logreg.js"></script>
</head>

<body>
	<div class="container">
		<div class="header">
			<h2>Hesap Olustur</h2>
		</div>

		<form:form action="${pageContext.request.contextPath}/register" method="POST"
			modelAttribute="user" class="form">
			<div class="form-control">
				<label for="username">Ad</label> 
				<form:input type="text" path="firstName"
					placeholder="ibo795" id="firstname" /> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>
			<div class="form-control">
				<label for="username">Soyad</label> <form:input type="text"
					path="lastName" placeholder="ibo795" id="lastname" /> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>
			<div class="form-control">
				<label for="username">Email</label> <form:input path="email" type="email"
					placeholder="ibrahim@hotmail.com" id="email" /> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>
			<div class="form-control">
				<label for="username">Şifre</label> <form:input type="password"
					path="password" placeholder="Sifre Gir" id="password" /> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>
			
			<div class="form-control">
				<label for="username">Kullanıcı Tipi</label>
				<form:select path="formRole" items="${roles}" id="selectrole"
					class="form-control" />
				<i class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error message</small>
			</div>
			<button >Kaydet</button>
		</form:form>
	</div>






	<script src="script.js"></script>





</body>
</html>