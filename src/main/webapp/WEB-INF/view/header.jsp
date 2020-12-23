
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>


<title>Spring Boot Blog</title>

<link
	href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css"
	rel="stylesheet" media="screen" />

<script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/main.css" />

</head>
<body>
	<div class="header">
		<!-- this is header -->
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="/home">LMS</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse navbar-right">


					<!-- show My Blog only if user is authenticated -->
					<ul class="nav navbar-nav" sec:authorize="hasRole('USER')">
						<li class="active"><a
							href="/profile/${authentication.getName()}">Kurslarim</a></li>
					</ul>
					<!-- show new post only if user is authenticated -->
					<ul class="nav navbar-nav" sec:authorize="hasRole('USER')">
						<li class="active"><a href="/newPost">Yeni Kurs</a></li>
					</ul>
					<!-- show sign out only if user is authenticated -->
					<ul class="nav navbar-nav">
						<li class="active"><a href="/newPost"><sec:authentication
									property="principal.username" /></a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li class="active"><a href="/newPost"><sec:authentication
									property="principal.authorities" /></a></li>
					</ul>
					<!-- show sign out only if user is authenticated -->
					<ul class="nav navbar-nav" sec:authorize="isAuthenticated()">
						<li class="active"><a href="/logout">Cikis Yap</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</div>

</body>
</html>