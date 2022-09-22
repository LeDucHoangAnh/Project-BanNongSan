<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>

<title>Đăng ký</title>
</head>
<body>
	<div class="row">
		
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Đăng Ký</h5>
						<h1>${ status }</h1>
						<br />
						<form:form action="dang-ky" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail </label>
								<div class="controls">
									<form:input class="span3" type="email" path="user"
										placeholder="Nhập email" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật
									Khẩu</label>
								<div class="controls">
									<form:input class="span3" type="password" path="password"
										placeholder="Nhập Mật Khẩu" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputDisplayname">Họ
									Tên</label>
								<div class="controls">
									<form:input class="span3" path="display_name"
										placeholder="Nhập Họ Tên" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputAddress">Địa Chỉ</label>
								<div class="controls">
									<form:input class="span3" path="address"
										placeholder="Nhập Địa Chỉ" />
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Tạo Tài Khoản</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng Nhập</h5>
						<h1>${statusLogin }</h1>
						<form:form action="dang-nhap" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input class="span3" type="email" path="user"
										placeholder="Nhập email" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật
									Khẩu</label>
								<div class="controls">
									<form:input class="span3" type="password" path="password"
										placeholder="Nhập Mật Khẩu" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng Nhập</button>
									</br> <a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
