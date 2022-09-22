<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>

<nav
	class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
	<div
		class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
		<div class="me-3">
			<button class="navbar-toggler navbar-toggler align-self-center"
				type="button" data-bs-toggle="minimize">
				<span class="icon-menu"></span>
			</button>
		</div>
		<div>
			<a class="navbar-brand brand-logo" href="index.html"> <img
				src="<c:url value ="/assets/admin/images/logo.svg"/>" alt="logo" />
			</a> <a class="navbar-brand brand-logo-mini" href="index.html"> <img
				src="images/logo-mini.svg" alt="logo" />
			</a>
		</div>
	</div>
	<div class="navbar-menu-wrapper d-flex align-items-top">
		<ul class="navbar-nav">
			<li class="nav-item font-weight-semibold d-none d-lg-block ms-0">
				<h1 class="welcome-text">
					Good Morning, <span class="text-black fw-bold">Kai</span>
				</h1>
			</li>
		</ul>
		<ul class="navbar-nav ms-auto">

			<li class="nav-item dropdown d-none d-lg-block user-dropdown"><a
				class="nav-link" id="UserDropdown" href="#"
				data-bs-toggle="dropdown" aria-expanded="false"><a> <img
						class="img-xs rounded-circle"
						src="<c:url  value = "/assets/admin/images/logo.png"/>"
						alt="Profile image"> Đăng Xuất
				</a> </a>
		</ul>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-bs-toggle="offcanvas">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
</nav>