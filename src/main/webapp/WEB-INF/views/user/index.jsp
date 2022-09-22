<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Trang chủ</title>
<body>
	<!--
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categorys }">
						<li><a href='<c:url value = "/san-pham/${ item.id }"/> '><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>


					<li><a class="totalInCart" href="<c:url value = "/gio-hang"/>"><strong>Đã
								mua ${ TotalQuantyCart }<span
								class="badge badge-warning pull-right"
								style="line-height: 18px;">${ TotalPriceCart }</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Mã Giảm Giá</h2>
				<p>
					Cho Khách Hàng Đặt Online. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>


			<a class="shopBtn btn-block" href="#">Sản Phẩm Sắp Tới <br>
				<small>Click</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<c:set var="countList" value="${ products.size() }" />
				<c:if test="${ products.size() > 3 }">
					<c:set var="countList" value="3" />
				</c:if>

				<c:forEach var="item" items="${ products }" begin="1"
					end="${ countList }" varStatus="loop">
					<li style="border: 0">&nbsp;</li>
					<li>
						<div class="thumbnail">
							<a class="zoomTool"
								href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>"
								title="add to cart"><span class="icon-search"></span> Chi
								Tiết</a> <img
								src="<c:url value = "/assets/user//img/${ item.img }" />"
								alt="shopping cart template">
							<div class="caption">
								<h4>
									<a class="defaultBtn"
										href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>">Chi
										tiết</a> <span class="pull-right"><fmt:formatNumber
											type="number" groupingUsed="true" value="${item.price } " />đ</span>
								</h4>
							</div>
						</div>
					</li>
				</c:forEach>

			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
						<c:forEach var="item" items="${ slides }" varStatus="index">
							<c:if test="${ index.first }">
								<div class="item active">
							</c:if>
							<c:if test="${ not index.first }">
								<div class="item">
							</c:if>
							<img style="width: 100%"
								src="<c:url value = "/assets/user//img/slide/${ item.img }" />"
								alt="bootstrap ecommerce templates">
							<div class="carousel-caption">
								<h4>${ item.caption }</h4>
								<p>
									<span>${ item.content }</span>
								</p>
							</div>
					</div>
					</c:forEach>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản Phẩm Mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">

					<div class="carousel-inner">
						<c:if test="${ products.size() > 0 }">
							<div class="item active">
								<ul class="thumbnails">
									<c:forEach var="item" items="${ products }" varStatus="loop">
										<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool"
													href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>"
													title="thêm"><span class="icon-search"></span> Chi tiết</a>
												<a
													href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>"><img
													src="<c:url value="/assets/user/img/${ item.img }"/>"
													alt=""></a>
											</div>
										</li>
										<c:if
											test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
								</ul>
							</div>
							<c:if test="${ (loop.index + 1) < products.size() }">
								<div class="item">
									<ul class="thumbnails">
							</c:if>
						</c:if>
						</c:forEach>
						</c:if>


					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>

		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"
					title="View more">Xem Thêm<span class="icon-plus"></span></a> Sản
				Phẩm Nổi Bật
			</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<c:if test="${products.size()  > 0}">

					<ul class="thumbnails">
						<c:forEach var="item" items="${ products }" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool"
										href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>"
										title="Thêm"><span class="icon-search"></span> Chi Tiết</a> <a
										href="/kshop/chi-tiet-san-pham/${ item.id_product }"><img
										src="<c:url value = "/assets/user/img/${ item.img }"/>" alt=""></a>
									<div class="caption">
										<h5>${ item.name }</h5>
										<h4>
											<a class="defaultBtn"
												href="<c:url value = "/chi-tiet-san-pham/${ item.id_product }"/>"
												title="Xem Chi Tiết"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn"
												href="<c:url value = "/AddCart/${ item.id_product }"/>"
												title="Thêm"><span class="icon-plus"></span></a> <span
												class="pull-right"><fmt:formatNumber type="number"
													groupingUsed="true" value="${item.price } " />đ</span>
										</h4>
									</div>
								</div>
							</li>
							<c:if
								test="${ (loop.index + 1) % 3 == 0 || (loop.index +1) == products.size() }">
					</ul>
					<c:if test="${ (loop.index + 1) < products.size() }">
						<ul class="thumbnails">
					</c:if>
				</c:if>
				</c:forEach>
				</c:if>

			</div>
		</div>

		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">View more <span
				class="icon-plus"></span></a> Popular Products
		</div>
		<hr>
		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">View more <span
				class="icon-plus"></span></a> Best selling Products
		</div>
	</div>
	</div>
	<!-- 
Clients 
-->


</body>


