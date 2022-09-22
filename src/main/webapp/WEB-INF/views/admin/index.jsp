<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>

<head>
<title>DashBoard</title>
</head>
<body>
	<div class="container-fluid page-body-wrapper">

		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link"
					href="<c:url value = "/quan-tri/dashboard"/>"> <i
						class="mdi mdi-grid-large menu-icon"></i> <span class="menu-title">Dashboard</span>
				</a></li>
				<li class="nav-item nav-category">Quản Lý</li>
				<li class="nav-item"><a class="nav-link"
					data-bs-toggle="collapse"
					href="<c:url value = "/quan-tri/loai-san-pham"/>"
					aria-expanded="false" aria-controls="form-elements"> <i
						class="menu-icon mdi mdi-card-text-outline"></i> <span
						class="menu-title">Thể Loại Sản Phẩm</span> <i class="menu-arrow"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-bs-toggle="collapse"
					href="<c:url value = "/quan-tri/san-pham"/>" aria-expanded="false"
					aria-controls="charts"> <i class="menu-icon mdi mdi-chart-line"></i>
						<span class="menu-title">Sản Phẩm</span> <i class="menu-arrow"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-bs-toggle="collapse"
					href="<c:url value = "/quan-tri/lien-he"/>" aria-expanded="false"
					aria-controls="tables"> <i class="menu-icon mdi mdi-table"></i>
						<span class="menu-title">Liên Hệ</span> <i class="menu-arrow"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-bs-toggle="collapse"
					href="<c:url value = "/quan-tri/don-hang"/>" aria-expanded="false"
					aria-controls="icons"> <i
						class="menu-icon mdi mdi-layers-outline"></i> <span
						class="menu-title">Đơn Hàng</span> <i class="menu-arrow"></i>
				</a>
					<div class="collapse" id="icons">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link"
								href="pages/icons/mdi.html">Danh Sách Đơn Hàng</a></li>
						</ul>
					</div></li>
				<li class="nav-item nav-category">Trang</li>
				<li class="nav-item"><a class="nav-link"
					data-bs-toggle="collapse"
					href="<c:url value = "/quan-tri/nguoi-dung"/>"
					aria-expanded="false" aria-controls="auth"> <i
						class="menu-icon mdi mdi-account-circle-outline"></i> <span
						class="menu-title">Người dùng</span> <i class="menu-arrow"></i>
				</a></li>
			</ul>
		</nav>
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="row">
					<div class="col-sm-12">
						<div class="home-tab">
							<div
								class="d-sm-flex align-items-center justify-content-between border-bottom">
								<h1>Admin</h1>

							</div>
						</div>
					</div>
					<!-- content-wrapper ends -->
				</div>
			</div>
		</div>
		<!-- main-panel ends -->
	</div>
</body>
