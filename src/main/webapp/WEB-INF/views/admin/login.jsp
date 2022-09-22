<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>

<title>Quản Trị</title>
</head>
<body>
	<div class="row">
		
		<div class="span9">
			
			<h3>Quản trị</h3>
			<hr class="soft" />

			
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng Nhập</h5>
						<h1>${ statusLoginInfo }</h1>
						<form:form action="quan-tri/dang-nhap" method="POST" modelAttribute="admin">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Tên tài khoản</label>
								<div class="controls">
									
										<form:input class="span3" path="name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật
									Khẩu</label>
								<div class="controls">
									
										<form:input class="span3" path="password"/>
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