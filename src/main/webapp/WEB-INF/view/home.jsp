<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SMS || Build with Love</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="resources/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="resources/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="resources/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/customstyle.css">

<link
	href="https://fonts.googleapis.com/css?family=Righteous&display=swap"
	rel="stylesheet">
<!-- endinject -->
<link rel="shortcut icon" href="resources/images/logo/favicon3.png" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<jsp:include page="/WEB-INF/view/partial/topnav.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="/WEB-INF/view/partial/sidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-12 grid-margin">

							<div class="d-flex justify-content-between flex-wrap">

								<div class="d-flex align-items-end flex-wrap">
									<!--                  <div class="mr-md-3 mr-xl-5">
                                                                <h2>Welcome back,</h2>
                                                                <p class="mb-md-0">Your analytics dashboard template.</p>
                                                              </div>-->
									<div class="d-flex">
										<i class="mdi mdi-home text-muted hover-cursor"></i>
										<p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Dashboard&nbsp;/&nbsp;</p>
										<p class="text-primary mb-0 hover-cursor">Analytics</p>
									</div>
								</div>
								<div
									class="d-flex justify-content-between align-items-end flex-wrap">
									<button class="btn btn-primary mt-2 mt-xl-0">${time}</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body dashboard-tabs p-0">
									<ul class="nav nav-tabs px-4" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="overview-tab" data-toggle="tab" href="#overview"
											role="tab" aria-controls="overview" aria-selected="true">Overview</a>
										</li>

									</ul>
									<div class="tab-content py-0 px-0">
										<div class="tab-pane fade show active" id="overview"
											role="tabpanel" aria-labelledby="overview-tab">
											<div class="d-flex flex-wrap justify-content-xl-between">
												<div
													class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-calendar-heart icon-lg mr-3 text-primary"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Kurs Sayisi</small>
														<div class="dropdown">
															<a
																class="btn btn-secondary  p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
																href="#" role="button" id="dropdownMenuLinkA"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="false">
																<h5 class="mb-0 d-inline-block">${kurssayisi}</h5>
															</a>

														</div>
													</div>
												</div>

												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-eye mr-3 icon-lg text-success"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Total views</small>
														<h5 class="mr-2 mb-0">9833550</h5>
													</div>
												</div>

												<div
													class="d-flex py-3 border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-flag mr-3 icon-lg text-danger"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Flagged</small>
														<h5 class="mr-2 mb-0">3497843</h5>
													</div>
												</div>
											</div>
										</div>

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">

					<c:forEach var="course" items="${user.courses}">
						<div class="col-sm-6">
							<div class="card" style="width: 18rem;">
								<img class="card-img-top" src="..." alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">${course.title}</h5>
									<p class="card-text">${course.description}</p>
									<a href="#" class="btn btn-primary">Ayrıntılı görüntüle</a>
								</div>
							</div>

						</div>
					</c:forEach>

				</div>






			</div>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.html -->
			s

			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- plugins:js -->
	<script src="resources/vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="resources/vendors/chart.js/Chart.min.js"></script>
	<script src="resources/vendors/datatables.net/jquery.dataTables.js"></script>
	<script
		src="resources/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="resources/js/off-canvas.js"></script>
	<script src="resources/js/hoverable-collapse.js"></script>
	<script src="resources/js/template.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="resources/js/dashboard.js"></script>
	<script src="resources/js/data-table.js"></script>
	<script src="resources/js/jquery.dataTables.js"></script>
	<script src="resources/js/dataTables.bootstrap4.js"></script>
	<!-- End custom js for this page-->
</body>

</html>

