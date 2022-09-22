<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>

<head>
<title>Sản Phẩm</title>
</head>
<body>
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_settings-panel.html -->


		<!-- partial -->
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link"
					href="<c:url value = "/quan-tri/dash-board"/>"> <i
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
								<div class="row flex-grow">
									<div class="col-12 grid-margin stretch-card">
										<div class="card card-rounded">
											<div class="card-body">
												<div
													class="d-sm-flex justify-content-between align-items-start">
													<div>
														<h4 class="card-title card-title-dash">Danh Sách Thể
															Loại Sản Phẩm</h4>
													</div>
													<div>
														<button
															class="btn btn-primary btn-lg text-white mb-0 me-0"
															type="button">
															<i class="mdi mdi-account-plus"></i>Thêm Mới
														</button>
													</div>
												</div>
												<div class="table-responsive  mt-1">
													<table class="table select-table">
														<thead>
															<tr>
																<th>Tên Sản Phẩm</th>
																<th>Thể Loại</th>
																<th>Kích Cỡ</th>

																<th>Giá</th>
																<th>Khuyến Mãi</th>
																<th>Tiêu Đề</th>
																<th>Sản Phẩm Tiêu Biếu</th>
																<th>Sản Phẩm Mới</th>
																<th>Mô Tả</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="item" items="${ listproducts }">
																<tr>
																	<td>
																		<h6>${ item.name }</h6>
																	</td>
																	<td><h6>${ item.id_category }</h6></td>
																	<td><h6>${ item.sizes }</h6></td>
																	<td><h6>${ item.price }</h6></td>
																	<td><h6>${ item.sale }</h6></td>
																	<td><h6>${ item.title }</h6></td>
																	<td><h6>${ item.highlight }</h6></td>
																	<td><h6>${ item.new_product }</h6></td>
																	<td><div
																			class="badge badge-opacity-warning">${ item.details }</div></td>
																</tr>

															</c:forEach>

														</tbody>
													</table>
												</div>
											</div>

										</div>
									</div>
								</div>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->

		</div>
		<!-- main-panel ends -->
	</div>
</body>
