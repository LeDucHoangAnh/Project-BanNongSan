<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Star Admin2</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/feather/feather.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/mdi/css/materialdesignicons.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/ti-icons/css/themify-icons.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/typicons/typicons.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/simple-line-icons/css/simple-line-icons.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/css/vendor.bundle.base.css"/>">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="<c:url value="/assets/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/js/select.dataTables.min.css"/>">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<c:url value="/assets/admin/css/vertical-layout-light/style.css"/>">
<!-- endinject -->
<link rel="shortcut icon"
	href="<c:url value="/assets/admin/images/favicon.png"/>" />
<title>Quản Trị</title>
<decorator:head />
</head>
<body>

	<div class="container-scroller">
		<div class="row p-0 m-0 proBanner" id="proBanner">
			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
					<div class="ps-lg-1">
						<div class="d-flex align-items-center justify-content-between">
							<p class="mb-0 font-weight-medium me-3 buy-now-text">Free
								24/7 customer support, updates, and more with this template!</p>
							<a target="_blank" class="btn me-2 buy-now-btn border-0">Get
								Pro</a>
						</div>
					</div>
					<div class="d-flex align-items-center justify-content-between">
						<a
							href="<c:url value="https://www.bootstrapdash.com/product/star-admin-pro/"/>"><i
							class="mdi mdi-home me-3 text-white"></i></a>
						<button id="bannerClose" class="btn border-0 p-0">
							<i class="mdi mdi-close text-white me-0"></i>
						</button>
					</div>
				</div>
			</div>

			<%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>

			<decorator:body />

			<%@include file="/WEB-INF/views/layouts/admin/footer.jsp"%>
		</div>

		<!-- endinject -->
		<!-- Plugin js for this page -->
		<script
			src="<c:url value="/assets/admin/vendors/chart.js/Chart.min.js"/>"></script>
		<script
			src="<c:url value="/assets/admin/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"/>"></script>
		<script
			src="<c:url value="/assets/admin/vendors/progressbar.js/progressbar.min.js"/>"></script>

		<!-- End plugin js for this page -->
		<!-- inject:js -->
		<script src="<c:url value="/assets/admin/js/off-canvas.js"/>"></script>
		<script src="<c:url value="/assets/admin/js/hoverable-collapse.js"/>"></script>
		<script src="<c:url value="/assets/admin/js/template.js"/>"></script>
		<script src="<c:url value="/assets/admin/js/settings.js"/>"></script>
		<script src="<c:url value="/assets/admin/js/todolist.js"/>"></script>
		<!-- endinject -->
		<!-- Custom js for this page-->
		<script src="<c:url value="/assets/admin/js/jquery.cookie.js"/>"
			type="text/javascript"></script>
		<script src="<c:url value="/assets/admin/js/dashboard.js"/>"></script>
		<script src="<c:url value="/assets/admin/js/Chart.roundedBarCharts.js"/>"></script>
</body>
</html>