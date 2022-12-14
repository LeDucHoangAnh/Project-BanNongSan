<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Giỏ hàng</title>
</head>
<body>
	<div class="row">
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Giỏ hàng</li>
			</ul>
			<div class="well well-small">
				<h1>
					Giỏ Hàng <small class="pull-right"> Số sản phẩm trong giỏ: ${ TotalQuantyCart } </small>
				</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Hình Ảnh</th>
							<th>Tên Sản Phẩm</th>
							<th>Size</th>
							<th>Đơn giá</th>
							<th>Số lượng</th>
							<th>Tổng tiền</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ Cart }">
							<tr>
								<td><img width="100"
									src="<c:url value = "/assets/user/img/${ item.value.product.img }"/>"
									alt=""></td>
								<td>${ item.value.product.name }</td>
								<td>L</td>
								<td>${ item.value.product.price }đ</td>
								<td><input type="number" min="1" max="1000" class="span1"
									style="max-width: 50px" placeholder="1"
									id="quanty-cart-${ item.key }" size="16" type="text"
									value="${ item.value.quanty }">
									<div class="input-append">
										<button data-id="${ item.key }"
											class="btn btn-mini btn-danger edit-cart" type="button">Chỉnh
											Sửa</button>
										<a href="<c:url value = "/DeleteCart/${ item.key }"/>"
											class="btn btn-mini btn-danger" type="button"> <span
											class="icon-remove"></span>
										</a>
									</div></td>
								<td>${ item.value.totalPrice }đ</td>
							</tr>
						</c:forEach>





						<tr>
							<td colspan="5" class="alignR">Tổng tiền</td>
							<td>${ TotalPriceCart }đ</td>
						</tr>

					</tbody>
				</table>
				<br /> <a href="<c:url value = "/"/>" class="shopBtn btn-large"><span
					class="icon-arrow-left"></span> Tiếp tục mua </a> <a href="<c:url value = "checkout" />"
					class="shopBtn btn-large pull-right">Thanh Toán <span
					class="icon-arrow-right"></span></a>

			</div>
		</div>
	</div>
	<content tag="script"> <script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "EditCart/" + id + "/" + quanty;
		});
	</script> </content>

</body>