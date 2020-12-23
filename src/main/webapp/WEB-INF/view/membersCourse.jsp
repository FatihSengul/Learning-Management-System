<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">

</head>
<body>
	<!-- Navbar  -->
	<%@include file="header.jsp"%>
	<div class="wrapper">
		<div class="sidebar">
			<h2>${course.name}</h2>
			<h3>${course.teacher.firstName}</h3>
			<ul>
				<li><a href="/course/details/${course.id}"><i
						class="fas fa-home"></i>Kurs Mataryeller</a></li>
				<li><a href="/course/${course.id}/members"><i
						class="fas fa-user"></i>Üyeler</a></li>
				<li><a href="#"><i class="fas fa-address-card"></i>Ödev</a></li>

			</ul>
			<div class="social_media">
				<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
					class="fab fa-twitter"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a>
			</div>
		</div>
		<div class="main_content">
			<div class="header">${course.name}</div>
			<div class="info">
				<c:forEach var="users" items="${course.users}">
					<li>${users.firstName}${users.lastName}</li>
				</c:forEach>


			</div>
		</div>
	</div>
</body>
</html>