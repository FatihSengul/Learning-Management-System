<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
	<!-- Side Bar -->
	<div class="wrapper">
		<div class="sidebar">
			<h2>${course.name}</h2>

			<ul>
				<li><a href="/course/details/${course.id}"><i class="fas fa-home"></i>Kurs Mataryeller</a></li>
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
			<div class="header">Course Name:${course.name} Course
				Teacher:${course.teacher.firstName}</div>

			<div class="info">
				<sec:authorize access="hasRole('ROLE_TEACHER')">




					<div>
						<h3>Ders Material Yükle</h3>
						<form id="uploadFiles" name="uploadFiles" method="post"
							action=/uploadFiles/${course.id} encType="multipart/form-data">
							<input type="file" name="files" multiple required />
							<button type="submit">Submit</button>
						</form>
					</div>
				</sec:authorize>
				<div>
					<h3>Ders Dökümanları</h3>
					<table>
						<thead>
							<tr>
							
								<th>Name</th>
								<th>İndirme Linki</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="doc" items="${docs}">
								<tr>
									

									<td>${doc.docName}</td>
									<td><a href="/downloadFile/${doc.id}">İndir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</body>
</html>