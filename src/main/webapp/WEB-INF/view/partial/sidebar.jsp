<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/adminpanel"> <i
				class="mdi mdi-home menu-icon"></i> <span class="menu-title">Dashboard</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#academic" aria-expanded="false" aria-controls="academic">
				<i class="mdi mdi-school menu-icon"></i> <span class="menu-title">Kurslar</span>
				<i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="academic">
				<ul class="nav flex-column sub-menu">
					<c:forEach var="course" items="${user.courses}">
						<li class="nav-item"><a class="nav-link"
							href="course/details/${course.id}">${course.title}</a></li>
					</c:forEach>
					<sec:authorize access="hasRole('ROLE_TEACHER')">
						<li class="nav-item"><a class="nav-link"
							href="course/coursepanel">Kurs Ekle</a></li>
					</sec:authorize>
					<li class="nav-item"><a class="nav-link"
						href="/joincourse">Kursa Katıl</a></li>



				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#exam" aria-expanded="false" aria-controls="exam"> <i
				class="mdi mdi-near-me menu-icon"></i> <span class="menu-title">Ödevler</span>
				<i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="exam">
				<ul class="nav flex-column sub-menu">
					<c:forEach var="course" items="${user.courses}">
						<li class="nav-item"><a class="nav-link"
							href="course/${course.id}/members">${course.title}</a></li>
					</c:forEach>
					<li class="nav-item"><a class="nav-link"
						href="studentmarksaddpage">Ödev Ekle</a></li>
				</ul>
			</div></li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#student" aria-expanded="false" aria-controls="student"> <i
				class="mdi mdi-account-multiple-plus menu-icon"></i> <span
				class="menu-title">Öğrenciler</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="student">
				<ul class="nav flex-column sub-menu">


					<c:forEach var="course" items="${user.courses}">
						<li class="nav-item"><a class="nav-link"
							href="course/${course.id}/members">${course.title}</a></li>
					</c:forEach>
					<li class="nav-item"><a class="nav-link" href="searchstd">Öğrenci Ara</a></li>
				</ul>
			</div></li>


		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/showingnoticepage"> <i
				class="mdi mdi-script menu-icon"></i> <span class="menu-title">Bildirimler</span>
		</a></li>

	</ul>
</nav>