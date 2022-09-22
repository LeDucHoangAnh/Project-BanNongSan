<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
<style>
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>

	<div class="row product-content">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categorys }">
						<li><a href='<c:url value = "/san-pham/${ item.id }"/> '><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>

					<li style="border: 0">&nbsp;</li>
					<li><a class="totalInCart" href="<c:url value = "/gio-hang"/>"><strong>Đã
								mua ${ totalQuantyCart } <span class="badge badge-warning pull-right"
								style="line-height: 18px;"> ${ totalPriceCart } đ</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<c:set var="countList" value="${ productByIDCategory.size() }" />
				<c:if test="${ productByIDCategory.size() > 3 }">
					<c:set var="countList" value="3" />
				</c:if>

				<c:forEach var="item" items="${ productByIDCategory }" begin="1"
					end="${ countList }" varStatus="loop">
					<li style="border: 0">&nbsp;</li>
					<li style="border: 0">&nbsp;</li>
					<li>
						<div class="thumbnail">
							<a class="zoomTool" href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>"
								title="thêm"><span class="icon-search"></span> Chi Tiết</a> <img src="<c:url value = "/assets/user/img/${ item.img }"/>"
								alt="shopping cart template">
							<div class="caption">
								<h4>
									<a class="defaultBtn" href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>">Chi Tiết</a> <span
										class="pull-right">${ item.price }</span>
								</h4>
							</div>
						</div>
					</li>

				</c:forEach>

			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li><a href="products.html">Sản phẩm</a> <span class="divider">/</span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img
										src="<c:url value = "/assets/user/img/${ product.img }"/>"
										alt="" style="width: 100%"></a>
								</div>

							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${product.name }</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm"  method="get" action="<c:url value="/AddCart/${ product.id_product }"/>">
							<div class="control-group">
								<label class="control-label"><span><fmt:formatNumber
											type="number" groupingUsed="true" value="${product.price } " />đ</span></label>
								<div class="controls">
									<input type="number" min="1" value="1" max = "1000" class="span6">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><span>Size</span></label>
								<div class="controls">
									<select class="span11">
										<option>L</option>
										<option>M</option>
										<option>S</option>
									</select>
								</div>
							</div>
							<h4>${ product.title }</h4>

							<button type="submit" class="shopBtn">
								<span class=" icon-shopping-cart"></span> Thêm Vào Giỏ
							</button>
						</form>
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Chi
							tiết sản phẩm</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Sản phẩm
							liên quan </a></li>

				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">${ product.details }
					</div>

					<div class="tab-pane fade" id="profile">

						<c:set var="countList" value="${ productByIDCategory.size() }" />
						<c:if test="${ productByIDCategory.size() > 3 }">
							<c:set var="countList" value="5" />
						</c:if>

						<c:forEach var="item" items="${ productByIDCategory }" begin="1"
							end="${ countList }" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value = "/assets/user/img/${ item.img }"/>"
										alt="">
								</div>
								<div class="span6">
									<h5>${ item.name }</h5>
									<p>${ item.title }.</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3>
											<fmt:formatNumber type="number" groupingUsed="true"
												value="${item.price } " />
											đ
										</h3>

										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Thêm vào giỏ</a> <a
												href="${ item.id_product }" class="shopBtn">Chi Tiết</a>
										</div>
									</form>
								</div>
							</div>
							<hr class="soft" />
						</c:forEach>

					</div>

				</div>
			</div>
		</div>
	</div>
</body>
