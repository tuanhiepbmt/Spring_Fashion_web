<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <link rel="icon" type="image/x-icon" href="/template/client/images/logo.png">
        <title>Something you need</title>

        <link href="https://fonts.googleapis.com/css?family=Barlow:400,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/template/client/css/font-awesome.min.css">
        <link rel="stylesheet" href="/template/client/css/bootstrap.min.css">
        <link rel="stylesheet" href="/template/client/css/ion.rangeSlider.css">
        <link rel="stylesheet" href="/template/client/css/ion.rangeSlider.skinFlat.css">
        <link rel="stylesheet" href="/template/client/css/jquery.bxslider.css">
        <link rel="stylesheet" href="/template/client/css/jquery.fancybox.css">
        <link rel="stylesheet" href="/template/client/css/flexslider.css">
        <link rel="stylesheet" href="/template/client/css/swiper.css">
        <link rel="stylesheet" href="/template/client/css/swiper.css">
        <link rel="stylesheet" href="/template/client/css/style.css">
        <link rel="stylesheet" href="/template/client/css/media.css">

    </head>

    <body>
        <%@include file="/WEB-INF/common/client/header.jsp" %>

            <main>

                <section class="container">
                    <c:if test='${ not empty products &&!products.get(0).getLink().equals("all") }'>
                        <c:set var="category" value="${ products.get(0).getCategory().getName() }" />
                    </c:if>
                    <c:if test='${ not empty products && products.get(0).getLink().equals("all") }'>
                        <c:set var="category" value="Tất cả" />
                    </c:if>
                    <c:forEach var="categoryItem" items="${ categorys }" varStatus="i" begin="0" end="${ categorys.size() }">
                        <c:if test="${ category eq 'Tất cả' }">
                            <c:set var="indexInCategorys" value="-1" />
                            <c:set var="i" value="${ categorys.size() }" />
                        </c:if>
                        <c:if test="${ categoryItem.getName().equals(category) }">
                            <c:set var="indexInCategorys" value="${ i.index }" />
                            <c:set var="i" value="${ categorys.size() }" />
                        </c:if>
                    </c:forEach>
                    <ul class="b-crumbs">
                        <li><a href="home"> Trang chủ </a></li>
                        <li><a href="#"> ${ category } </a></li>
                        <c:if test="${ not empty products && !products.get(0).getLink().equals('all') }">
                            <li><span>${ products.get(0).getType().getName() }</span></li>
                        </c:if>
                    </ul>
                    <h1 class="main-ttl">
                        <span> ${ category } </span>
                    </h1>
                    <!-- Catalog Sidebar - start -->
                    <div class="section-sb">
                        <c:if test="${ indexInCategorys!=-1 }">
                            <div class="section-sb-current">
                                <h3>
                                    <a href="#">${ category }<span id="section-sb-toggle"
											class="section-sb-toggle"><span class="section-sb-ico"></span></span></a>
                                </h3>
                                <ul class="section-sb-list" id="section-sb-list">
                                    <c:forEach var="type" items="${ listTypeInCategory.get(indexInCategorys) }">
                                        <li class="categ-1">
                                            <a href="product?link=&categoryId=${ categorys[indexInCategorys].id }&typeId=${ type.id }"> <span class="categ-1-label">${ type.getName() }</span>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </c:if>
                        <c:if test="${ indexInCategorys==-1 }">
                            <c:forEach var="item" items="${ categorys }" varStatus="i">
                                <div class="section-sb-current">
                                    <h3>
                                        <a href="#">${ item.getName() }<span id="section-sb-toggle"
												class="section-sb-toggle"><span
													class="section-sb-ico"></span></span></a>
                                    </h3>
                                    <ul class="section-sb-list" id="section-sb-list">
                                        <c:forEach var="type" items="${ listTypeInCategory.get(i.index) }">
                                            <li class="categ-1">
                                                <a href="product?link=&categoryId=${ categorys[i.index].id }&typeId=${ type.id }"> <span class="categ-1-label">${
														type.getName() }</span>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </c:forEach>
                        </c:if>
                        <!-- Catalog Categories - end -->

                        <!-- Filter - start -->
                        <div class="section-filter">
                            <button id="section-filter-toggle" class="section-filter-toggle" data-close="Hide Filter" data-open="Show Filter">
								<span>Show Filter</span> <i class="fa fa-angle-down"></i>
							</button>
                            <div class="section-filter-cont">
                                <div class="section-filter-price">
                                    <div id="price" class="range-slider section-filter-price" data-step="1000" data-min="0" data-max="1000000" data-from="300000" data-to="700000" data-prefix="đ" data-grid="false"></div>
                                </div>

                                <div class="section-filter-item opened">
                                    <p class="section-filter-ttl">
                                        Chất liệu <i class="fa fa-angle-down"></i>
                                    </p>
                                    <div class="section-filter-fields">
                                    	<c:forEach var="item" items="${ materials }" varStatus="i">
	                                        <p class="section-filter-field">
	                                            <input id="section-filter-checkbox3-${ i.index }" name='${ item.getName() }' value="" type="checkbox"><label class="section-filter-checkbox"
	                                                for="section-filter-checkbox3-${ i.index }">${ item.getName() }</label>
	                                        </p>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="section-filter-item opened">
                                    <p class="section-filter-ttl">
                                        Quốc gia Sản Xuất <i class="fa fa-angle-down"></i>
                                    </p>
                                    <div class="section-filter-fields">
                                        <div class="section-filter-select">
                                            <select id="origin" style="width: 246px; height: 40px; text-align: center;" data-placeholder="Manufacturer country">
												<option value="">Tất cả</option>
												<c:forEach var="item" items="${ origins }">
													<option>${ item.getName() }</option>
												</c:forEach>
											</select>
                                        </div>
                                    </div>
                                </div>
                                <div class="section-filter-buttons" style="display: flex; justify-content: space-evenly;">
                                    <input onclick="growing()" style="width: 91px;" class="btn btn-themes" id="set_filter" name="set_filter" value="Áp dụng" type="button"> <input onclick="growing()" style="width: 58px;" class="btn btn-link" id="del_filter"
                                        name="del_filter" value="Đặt lại" type="button">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Filter - end -->

                    <!-- Catalog Sidebar - end -->
                    <!-- Catalog Items | List V1 - start -->
                    <div class="section-cont">

                        <!-- Catalog Topbar - start -->
                        <div class="section-top">


                            <!-- Sorting -->
                            <div class="section-sortby">
                                <p style="position: absolute; top: -37px; right: 1px">Sắp xếp</p>
                                <ul>
                                    <li><a onclick="growing()" href="#">Giá
											từ thấp đến cao</a></li>
                                    <li><a onclick="growing()" href="#">Giá
											từ cao đến thấp</a></li>
                                    <li><a onclick="growing()" href="#">Bán
											chạy nhất</a></li>
                                    <li><a onclick="growing()" href="#">Mặc định</a></li>
                                </ul>
                            </div>

                        </div>
                        <c:if test="${ products.size()==0 }">
                            <img style="position: absolute; top: 351px; right: 606px; height: 150px; width: 150px" src="template/client/images/sorry.png" alt="">
                            <div style="font-family: cursive; position: absolute; font-size: 30px; top: 517px; right: 524px;">
                                Không có sản phẩm nào!</div>
                        </c:if>
                        <c:forEach var="product" items="${ products }">
                            <div class="prod-items section-items">
                                <div class="prodlist-i">
                                    <a class="prodlist-i-img" href="product?id=${ product.id }">
                                        <!-- NO SPACE -->
                                        <img src="/template/images_upload/product_images/${ product.getImage()[0] }" alt="${ product.getName() }">
                                        <!-- NO SPACE -->
                                    </a>
                                    <div class="prodlist-i-cont">
                                        <h3>
                                            <a href="product?id=${ product.id }">${ product.getName() }</a>
                                        </h3>
                                        <div class="prodlist-i-txt">Stuneed tự hào là shop thời trang Hàng đầu Việt Nam, Sản phẩm được mọi lứa tuổi săn đón, Luôn cập nhập và ra mắt những mấu thời trang hot nhất .Hợp xu thế của Việt Nam và Thế giới</div>
                                        <div class="prodlist-i-skuwrap" style="display: flex; justify-content: space-evenly;">
                                            <div class="prodlist-i-skuitem">
                                                <p class="prodlist-i-skuttl">Clothes sizes</p>
                                                <div class="offer-props-select">
                                                    <p id="pSize${ product.id }">XS</p>
                                                    <div style="display: flex;"></div>
                                                    <ul>
                                                        <li><a style="cursor: pointer;">S</a></li>
                                                        <li><a style="cursor: pointer;">M</a></li>
                                                        <li><a style="cursor: pointer;">L</a></li>
                                                        <li class="active"><a style="cursor: pointer;">XS</a></li>
                                                        <li><a style="cursor: pointer;">XL</a></li>
                                                        <li><a style="cursor: pointer;">XXL</a></li>
                                                        <li><a style="cursor: pointer;">XXXL</a></li>
                                                    </ul>

                                                </div>

                                            </div>
                                            <div style="margin-top: 20px;">
                                                <span style="font-size: 24px;"> <b>
														${ product.getPrice() }₫ </b>
												</span>
                                            </div>
                                        </div>
                                        <div class="prodlist-i-action">
                                            <p class="prodlist-i-qnt">
                                                <input id="ip${ product.id }" aria-label="quantity" max=10 min=1 class="inputQuantity${ product.id }" value="1" type="number">
                                                <a class="is-form plus"></a>
                                                <a class="is-form minus"></a>
                                            </p>
                                            <p class="prodlist-i-addwrap">
                                                <a onclick="addProduct(${ product.id })" id="addProduct${ product.id }" class="prodlist-i-add" style="font-size: 15px; cursor: pointer;">Thêm vào giỏ
													hàng</a>
                                            </p>
                                        </div>
                                        <p class="prodlist-i-info" style="margin-left: 37px;">
                                            <a onclick="growing()" class="prodlist-i-favorites"><i
													style="color: palevioletred; cursor: pointer;"
													id="loveproducts._id %>" style="cursor: pointer;"
													class="fa fa-heart"></i> yêu thích</a>
                                            <!-- <a onclick="love(`products._id %>`)" class="prodlist-i-favorites"><i
													style="color: #dadada; cursor: pointer;" id="love products._id %>"
													style="cursor: pointer;" class="fa fa-heart"></i> yêu thích</a> <a onclick="Dontlogin()" class="prodlist-i-favorites"><i
													style="color: #dadada; cursor: pointer;" id="loveproducts._id %>"
													style="cursor: pointer;" class="fa fa-heart"></i> yêu thích</a> -->

                                            <a style="margin-right: 46px;" onclick="growing()" class="prodlist-i-compare"><i style="color: #272727; cursor: pointer;"
													id="compareproducts._id %>" style="cursor: pointer;"
													class="fa fa-bar-chart"></i> So sánh</a>
                                            <!-- <a style="margin-right: 46px;" onclick="compare(`products._id %>`)" class="prodlist-i-compare"><i style="color: #dadada; cursor: pointer;"
													id="compareproducts._id %>" style="cursor: pointer;"
													class="fa fa-bar-chart"></i> So sánh</a> <a style="margin-right: 46px;" onclick="Dontlogin()" class="prodlist-i-compare"><i style="color: #dadada; cursor: pointer;"
													id="compareproducts._id %>" style="cursor: pointer;"
													class="fa fa-bar-chart"></i> So sánh</a> -->
                                        </p>
                                    </div>

                                    <div class="prodlist-i-props-wrap">
                                        <ul class="prodlist-i-props">
                                            <li><b>Chất Liệu</b> ${ product.getMaterial().getName() }
                                            </li>
                                            <li><b>Loại</b> ${ products.get(0).getType().getName() }
                                            </li>
                                            <li><b>Phong cách</b> ${ product.getTags()[0] }
                                            </li>
                                            <li><b>Quốc gia sản xuất</b> ${ product.getOrigin().getName() }
                                            </li>
                                            <li><b>Sản phẩm có sẵn</b> ${ product.getStock() }
                                            </li>
                                            <li><b>Lượt mua</b> ${ product.getPurchases() }
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:if test="${ not empty products }">
	                        <form id="formSubmit" action="/product" method="get">
			                    	<input type="hidden" name="limit" value="" id="limit">
			                    	<input type="hidden" name="link" value="" id="link">
			                    	<input type="hidden" name="page" value="" id="page">
			                    	<c:if test='${ !category.equals("Tất cả") }'>
				                    	<input type="hidden" name="categoryId" value="${ products[0].categoryId }" id="categoryId">
				                    	<input type="hidden" name="typeId" value="${ products[0].typeId }" id="typeId">
			                    	</c:if>
			                    </form>
	                        <div class="pagi">
								 <ul class="pagination" id="pagination"></ul>
	                        </div>
                        </c:if>
                    </div>
                </section>
            </main>
            <script src="/template/assets/libs/jquery/jquery.min.js"></script>
            <script type="text/javascript" src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
		<script type="text/javascript">
		    var limit = 1;
		    $('#pagination').twbsPagination({
		        totalPages: ${ totalPage },
		        visiblePages: 3,
		        startPage: ${ page },
		        next: 'Next',
		        prev: 'Prev',
		        onPageClick: function(event, page) {
		            if (page != ${ page }) 
		            {
		                $('#limit').val(limit);
		                $('#page').val(page);
		                $('#link').val("${ products[0].link }");
		                if('${ category }'!="Tất cả")
		                {
		                	$('#categoryId').val();
		                	$('#typeId').val();
		                }
		                //$('#sortName').val("");//${model.sortName}
		                //$('#sortBy').val("desc");
		                $('#formSubmit').submit(); 
		            }
		        }
		    });
		    function addProduct(id) {
				//var url = '/addCart?id='+id+'&quantity=' + $('.inputQuantity'+id).val() + '&size=' + document.getElementById('pSize'+id).innerText

				$.ajax({
					url: '/api/cart',
					type: 'POST',
					contentType: "application/json; charset=utf-8",
					data: JSON.stringify({
						quantity:$('.inputQuantity'+id).val(),
						productId:id
					}),
					success: function (data) {
						if (data.message == 'Vui lòng đăng nhập') {
							location.replace('./login')
						}
						else { 
							const Toast = Swal.mixin({
								toast: true,
								position: 'top-end',
								showConfirmButton: false,
								timer: 3000
							})
							Toast.fire({
								type: "success",
								title: 'Đã Thêm vào Giỏ Hàng ♥'
							})
							if (data.message != 'Sản phẩm tồn tại') {
								var str = document.getElementById('cartHeader').innerText
								str = parseInt(str) + 1
								document.getElementById('cartHeader').innerText = str
							}
						} 
					}
				})
			}
		    </script>
            <%@include file="/WEB-INF/common/client/footer.jsp" %>
                <%@include file="/WEB-INF/common/client/plugin.jsp" %>
    </body>

    </html>