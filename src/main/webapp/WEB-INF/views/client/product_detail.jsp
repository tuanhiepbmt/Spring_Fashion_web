<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>

					<!-- Main Content - start -->
					<main>
						<section class="container">
							<ul class="b-crumbs">
								<li>
									<a href="home">
										Trang chủ
									</a>
								</li>
								<li>
									<a href="product?link=&categoryId=${ product.category.id }&typeId=${ product.type.id }">
										${ product.getCategory().getName() }
									</a>
								</li>
								<li>
									<a href="product?link=&categoryId=${ product.category.id }&typeId=${ product.type.id }">
										${ product.getType().getName() }
									</a>
								</li>
								<li>
									<span>
										${ product.getName() }
									</span>
								</li>
							</ul>
							<h1 class="main-ttl"><span>
									${ product.getName() }
								</span></h1>
							<!-- Single Product - start -->
							<div class="prod-wrap">

								<!-- Product Images -->
								<div class="prod-slider-wrap">
									<div class="prod-slider">
										<ul class="prod-slider-car">
											<c:forEach var="img" items="${ product.getImage() }">
												<li>
													<img src="/template/images_upload/product_images/${ img }" alt="${ product.getName() }">
												</li>
											</c:forEach>
										</ul>
									</div>
									<div class="prod-thumbs">
										<ul class="prod-thumbs-car">
											<c:forEach var="img" items="${ product.getImage() }" varStatus="i">
													<li>
														<a data-slide-index='${ i.index }' href="#">
															<img src="/template/images_upload/product_images/${ img }" alt="">
														</a>
													</li>
													</c:forEach>
										</ul>
									</div>
								</div>

								<!-- Product Description/Info -->
								<div class="prod-cont">
									<div class="prod-cont-txt">
										Stuneed tự hào là shop thời trang Hàng đầu Việt Nam, Sản phẩm được mọi lứa tuổi săn đón, Luôn cập nhập và ra mắt những mấu thời trang hot nhất
										.Hợp xu thế của Việt Nam và Thế giới
									</div>
									<p class="prod-actions">
													 <a onclick="growing()" style="cursor: pointer;margin-top: -1px;" id="love" class="loveClass"><i id="products._id" style="color:palevioletred;cursor: pointer;" class="fa fa-heart"></i>yêu thích</a>
												<!--<a onclick="love(` products._id %>`)" style="cursor: pointer;margin-top: -1px;" id="love" class="loveClass"><i style="cursor: pointer;" id="products._id %>" class="fa fa-heart"></i>yêu thích</a>
											<a onclick="Dontlogin()" style="cursor: pointer;margin-top: -1px;" id="love" class="loveClass"><i style="cursor: pointer;" id="products._id" class="fa fa-heart"></i>yêu thích</a> -->
											
													<a onclick="growing()" id="compare" class="prod-compare"><i id="compareproducts._id %>" style="color:#272727;cursor: pointer;" class="fa fa-bar-chart"></i> So sánh</a>
												<!-- <a onclick="compare(`products._id`)" id="compare" class="prod-compare"><i id="compareproducts._id %>" style="cursor: pointer;" class="fa fa-bar-chart"></i> So sánh</a>
												<a onclick="Dontlogin()" id="compare" class="prod-compare"><i id="compareproducts._id %" style="cursor: pointer;" class="fa fa-bar-chart"></i> So sánh</a> -->
										

									</p>
									<div class="prodlist-i-skuwrap" style="display: flex;">
										<div class="prodlist-i-skuitem" style="margin-left:27px;margin-right: 108px;">
											<p class="prodlist-i-skuttl">Clothes sizes</p>
											<div class="offer-props-select">
												<p id="pSize">XS</p>
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
											<span style="font-size: 24px;">
												<b>
													${ product.getPrice() }₫
												</b>
											</span>
										</div>
									</div>
									<div class="prod-info" style="display: flex;justify-content: space-evenly;">
										<p class="prod-qnt">
											<input class='inputQuantity' value="1" type="text">
											<a onclick="prodPlus()" class="prod-plus"><i class="fa fa-angle-up"></i></a>
											<a onclick="prodMinus()" class="prod-minus"><i class="fa fa-angle-down"></i></a>
										</p>
										<p class="prod-addwrap">
											<button style="border-radius:0;width: 218px;" onclick="addCart(`products._id`,$('.inputQuantity').val(),document.getElementById('pSize').innerText)"
												class="prod-add">Thêm vào giỏ hàng</button>
										</p>
									</div>
									<ul class="prod-i-props">
										<li><b>Một cửa hàng thời trang online uy tín dành cho các tín đồ yêu thích thời
												trang, đó chính là Stuneed. </b></li>
										<li> <b> Tại đây, những bộ đồ theo xu hướng hot nhất, mới nhất sẽ được update
												liên tục với chất lượng cao nhất.</b></li>

										<li><b> Hình ảnh trên fanpage của Stuneed, 100% là hình tự chụp nên các Bạn có
												thể an tâm khi mua sắm online.</b></li>
										<li><b>Liên hệ: </b>
										<li><i> Fanpage: https://www.facebook.com/Stuneed.vn </i>
										<li><i> SĐT: 093.831.8768</i>
										<li><i> Cửa hàng: 01 Lê Duẩn, BMT, ĐắkLắk</i>

										</li>
									</ul>
									<ul>
										<li><b>Chất liệu </b>
											${ product.getMaterial() }
										</li>
										<li><b>Sản phẩm có sẵn </b>
											${ product.getStock() }
										</li>
										<li><b>Lượt mua </b> 
											${ product.getPurchases() }
										</li>

										<li><a href="#" class="prod-showprops">Xem thêm</a></li>
									</ul>
								</div>

								<!-- Product Tabs -->
								<div class="prod-tabs-wrap">
									<ul class="prod-tabs">
										<li><a data-prodtab-num="1" class="active" href="#"
												data-prodtab="#prod-tab-1">Mô tả</a></li>
										<li><a data-prodtab-num="2" id="prod-props" href="#"
												data-prodtab="#prod-tab-2">Chi tiết sản phẩm</a>
										</li>
										<li><a data-prodtab-num="5" href="#" data-prodtab="#prod-tab-5">Bình Luận (<b id="reviewCount">comment.length</b>)</a></li>
									</ul>
									<div class="prod-tab-cont">

										<p data-prodtab-num="1" class="prod-tab-mob active" data-prodtab="#prod-tab-1">
											Mô tả</p>
										<div class="prod-tab stylization" id="prod-tab-1">
												<p>
													${ product.getDescription() }
												</p>

										</div>
										<p data-prodtab-num="2" class="prod-tab-mob" data-prodtab="#prod-tab-2">Features
										</p>
										<div class="prod-tab prod-props" id="prod-tab-2">
											<table>
												<tbody>
													<tr>
														<td>Chất Liệu</td>
														<td>
															${ product.getMaterial().getName() }
														</td>
													</tr>
													<tr>
														<td>Loại</td>
														<td>
															${ product.getType().getName() }
														</td>
													</tr>
													<tr>
														<td>Phong cách</td>
														<td>
															${ product.getTags()[0] }
														</td>
													</tr>
													<tr>
														<td>Quốc gia sản xuất</td>
														<td>
															${ product.getOrigin().getName() }
														</td>
													</tr>
													<tr>
														<td>Sản phẩm có sẵn</td>
														<td>
															${ product.getStock() }
														</td>
													</tr>
													<tr>
														<td>Lượt mua</td>
														<td>
															${ product.getPurchases() }
														</td>
													</tr>
												</tbody>
											</table>
										</div>

										
										<div class="prod-tab" id="prod-tab-5">
											<div class="prod-comment-form" style="margin: 0;max-width: none;">
												<h3 style="text-align: left;">Bình Luận</h3>
													<textarea id="ipReview" style="min-height: 88px;height: 88px;" placeholder="Bình Luận Công Khai"></textarea>
														<div class="prod-rating-review">
															<input style="width:175x;margin-left: 47px" onclick="comment()" type="submit" value="Bình Luận">
														</div>
														<div class="rate" style="color: #2e83ce;float: right;margin-top: 16px;margin-right: 35px;">
															<input id="ipStar" type="submit" value="5" style="display: none;">
															<i class="fa fa-star" style="font-size: 20px;" title="1"></i>
															<i style="font-size: 20px;" class="fa fa-star" title="2"></i>
															<i style="font-size: 20px;" class="fa fa-star" title="3"></i>
															<i class="fa fa-star" style="font-size: 20px;" title="4"></i>
															<i style="font-size: 20px;" class="fa fa-star" title="5"></i>
														</div>
											</div>
											<ul class="reviews-list" id="commentUl">
												<li id="licomment._id %>" class="reviews-i existimg" style="min-height:100px">
													<div class="reviews-i-img" style="width: 60px;height: 60px;">
														<img style="border-radius: 100%;width: 60px;height: 60px;object-fit: cover" src="/template/client/images/logo.png" alt="Averill Sidony">
													</div>
													<div class="reviews-i-cont">
														<h3>comment.name</h3>
														<i style="position: absolute;top: 7px;right: 25px;">comment.date</i>
														<div style="color: #2e83ce;margin-bottom: 10px;">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<i onclick="growing()" class="fa fa-trash" style="position: absolute;top: 11px;right: 2px;cursor: pointer;"></i>
														<p style="font-size: 17px;">comment.content</p>
													</div>
													
												</li>
											</ul>
										</div>
									</div>
								</div>

							</div>
							<!-- Single Product - end -->

							<!-- Related Products - start -->
							<div class="prod-related">
								<h2><span>Các Sản Phẩm Khác</span></h2>
								<ul class="slides">
									<c:forEach var="product" items="${ otherProducts }">
										<li class="prod-rel-wrap">
													<div class="prod-rel">
														<a href="product?id=${ product.id }"
															class="prod-rel-img">
															<img src="/template/images_upload/product_images/${ product.image[0] }"
																alt="${ product.name }">
														</a>
														<div class="prod-rel-cont">
															<h3><a href="product?id=${ product.id }">
																	${ product.name }
																</a></h3>
															<p class="prod-rel-price">
																<b>
																	${ product.price }
																</b>
															</p>
															
															<div class="prod-rel-actions">
																		<a onclick="growing()" id="loveGYi %>" title="Yêu thích"
																	class="prod-rel-favorites"><i style="color: palevioletred;cursor: pointer;" id="productItem._id %>"
																		class="fa fa-heart"></i></a>
																	<!-- <a onclick="love(`productItem._id %>`)" id="loveGYi" title="Yêu thích"
																	class="prod-rel-favorites"><i style="cursor: pointer;" id="productItem._id %>"
																		class="fa fa-heart"></i></a>
																		<a onclick="Dontlogin()" id="loveGYi %>" title="Yêu thích"
																	class="prod-rel-favorites"><i style="cursor: pointer;" id="productItem._id %>"
																		class="fa fa-heart"></i></a> -->
																 <a onclick="growing()" title="So sánh" class="prod-rel-compare"><i id="compareproductItem._id %>"
																		style="color:#272727;cursor: pointer;" class="fa fa-bar-chart"></i></a>
																<!--<a onclick="compare(`productItem._id %>`)" title="So sánh" class="prod-rel-compare"><i id="compareproductItem._id %>"
																	class="fa fa-bar-chart" style="cursor: pointer;"></i></a>
																		<a onclick="Dontlogin()" title="So sánh" class="prod-rel-compare"><i id="compareproductItem._id %>"
																	class="fa fa-bar-chart" style="cursor: pointer;"></i></a>-->
																<p class="prod-i-addwrap"> 
																	<a onclick="growing()" title="Giỏ hàng" class="prod-i-add"><i
																		style="color:#272727;cursor: pointer;" id="cartproductItem._id %>" class="fa fa-shopping-cart"></i></a>
																	<!-- <a onclick="addCart(`productItem._id %>`)" title="Giỏ hàng" class="prod-i-add"><i
																		style="cursor: pointer;" id="cartproductItem._id %>" class="fa fa-shopping-cart"></i></a> -->
																</p>
															</div>
														</div>
													</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							</section>
					</main>
					<!-- Main Content - end -->
					<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
					<script>
						
					</script>
					<script>
						function removeReview(id) {
							$.ajax({
								url: '/removeReview?id='+id,
								type: 'DELETE',
								success: function (data) {
									if(data='Thành công')
									{
										const Toast = Swal.mixin({
										toast: true,
										position: 'top-end',
										showConfirmButton: false,
										timer: 3000
										})
										Toast.fire({
											type: "success",
											title: 'Xóa Bình Luận Thành Công!'
										})	
										document.getElementById('li'+id).remove()
										var str=document.getElementById('reviewCount').innerText
										str=parseInt(str)-1
										document.getElementById('reviewCount').innerText=str
									}
									else
									{
										const Toast = Swal.mixin({
										toast: true,
										position: 'top-end',
										showConfirmButton: false,
										timer: 3000
										})
										Toast.fire({
											type: "warning",
											title: 'Bình Luận Này Đã Được Xóa!'
										})
									}
								}
							})
						}
						function comment() {
							if(document.getElementById('ipReview').value=='')
							{
								const Toast = Swal.mixin({
									toast: true,
									position: 'top-end',
									showConfirmButton: false,
									timer: 3000
								})
								Toast.fire({
										type: "warning",
										title: 'Bình luận không được để trống'
								})
								return
							}
							$.ajax({
								url: '/comment',
								type: 'PUT',
								data: {
									id:products._id ,
									star:document.getElementById('ipStar').value,
									comment:document.getElementById('ipReview').value
								},
								success: function (data) {
									const Toast = Swal.mixin({
										toast: true,
										position: 'top-end',
										showConfirmButton: false,
										timer: 3000
									})
									if (data == 'Vui lòng đăng nhập') {
										Toast.fire({
											type: "warning",
											title: 'Vui lòng đăng nhập để Bình luận'
										})
									}
									if (data.message == 'Thành công') {
										var star=''
										for (let index = 0; index < document.getElementById('ipStar').value; index++) {
											star=star+'<i class="fa fa-star"></i>'
										} 
										var comment=document.getElementById('commentUl').innerHTML
										document.getElementById('commentUl').innerHTML=`<li id="li`+ data.id +`" class="reviews-i existimg" style="min-height:100px">
													<div class="reviews-i-img" style="width: 60px;height: 60px;">
														<img style="border-radius: 100%;width: 60px;height: 60px;object-fit: cover" src="client/images/uploadAvatar/user.avatar %>" alt="Averill Sidony">
													</div>
													<div class="reviews-i-cont">
														<h3>user.name %></h3>
														<i style="position: absolute;top: 7px;right: 25px;">dateTime %></i>
														<div style="color: #2e83ce;margin-bottom: 10px;">
															`+star+`
														</div>
														<i onclick="removeReview('`+ data.id +`')" class="fa fa-trash" style="position: absolute;top: 11px;right: 2px;cursor: pointer;"></i>
														<p style="font-size: 17px;">`+document.getElementById('ipReview').value+`</p>
													</div>
													
												</li>`+comment
												
										document.getElementById('ipReview').value=''
										var str=document.getElementById('reviewCount').innerText
										str=parseInt(str)+1
										document.getElementById('reviewCount').innerText=str
									}
								}
							})
						}
							function love(id){
								var url = '/addWishlist?id='+id
							$.ajax({
								url: url,
								type: 'PUT',
								data: {
								},
								success: function (data) {
									if (data == 'Vui lòng đăng nhập') {
										location.replace('./login')
									}
									const Toast = Swal.mixin({
										toast: true,
										position: 'top-end',
										showConfirmButton: false,
										timer: 3000
									})
									if (data == 'Sản phẩm tồn tại') {
										$.ajax({
											url: '/removeWishlist?id='+id,
											type: 'DELETE',
											data: {
											}
										})
										var str=document.getElementById('wishlistHeader').innerText
										str=parseInt(str)-1
										document.getElementById('wishlistHeader').innerText=str
										
										document.getElementById(id).style.color='#cacaca'
									}else if(data == 'Đã thêm'){
										Toast.fire({
											type: "success",
											title: 'Đã Thích ♥'
										})
										var str=document.getElementById('wishlistHeader').innerText
										str=parseInt(str)+1
										document.getElementById('wishlistHeader').innerText=str
										document.getElementById(id).style.color='palevioletred'
									}
								}
							})
							}
					</script>
					<script>
						function Dontlogin(){
							const Toast = Swal.mixin({
							toast: true,
							position: 'top-end',
							showConfirmButton: false,
							timer: 3000
							})
							Toast.fire({
								type: "warning",
								title: 'Bạn cần đăng nhập để sử dụng chức năng này'
							})
						}
						function compare(id) {
							var url = '/addCompare?id='+id
							$.ajax({
								url: url,
								type: 'PUT',
								data: {
								},
								success: function (data) {
									if (data == 'Vui lòng đăng nhập') {
										location.replace('./login')
									}
										const Toast = Swal.mixin({
											toast: true,
											position: 'top-end',
											showConfirmButton: false,
											timer: 3000
										})
										if (data == 'Sản phẩm tồn tại') {
											Toast.fire({
												type: "warning",
												title: 'Đã xóa khỏi So sánh'
											})
											$.ajax({
												url: '/removeCompare?id='+id,
												type: 'DELETE',
												data: {
												}
											})
											
											document.getElementById('compare'+id).style.color='#cacaca'
										}else if (data == 'So sánh đầy') {
											Toast.fire({
												type: "warning",
												title: 'So sánh đầy'
											})
										}else if(data == 'Đã thêm'){
											Toast.fire({
												type: "success",
												title: 'Đã Thêm vào So sánh'
											})
											var str = document.getElementById('compareHeader').innerText
											str = parseInt(str) + 1
											document.getElementById('compareHeader').innerText = str
											document.getElementById('compare'+id).style.color='#272727'
										}
								}
							})
						}
						function prodMinus(){
							var quantity=$('.inputQuantity').val()
							if(quantity<=10&&quantity>1)
							{
								$('.inputQuantity').val(--quantity)
							}
						}
						function prodPlus(){
							var quantity=$('.inputQuantity').val()
							if(quantity<10&&quantity>=1)
							{
								$('.inputQuantity').val(++quantity)
							}
						}
						function addCart(id,quantity,size) {
							if(!size && !quantity){
								size='S'
								quantity=1
							}
							var url= '/addCart?id='+id+'&quantity='+quantity+'&size='+size
							$.ajax({
								url: url,
								type: 'PUT',
								data: {
								},
								success: function (data) {
									if (data.mess == 'Vui lòng đăng nhập') {
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
										try {
											document.getElementById('cart'+id).style.color='#272727'
										} catch (error) {

										}
										if(data.mess!='Sản phẩm tồn tại'){
											var str=document.getElementById('cartHeader').innerText
											str=parseInt(str)+1
											document.getElementById('cartHeader').innerText=str
										}
									}
								}
							})
						}
						$(function() {
							$(".rate i").css('cursor', 'pointer');
							$(".rate i").click(function() {
							$(this).add($(this).prevAll("i")).removeClass("fa-star-o").addClass("fa-star");
							$(this).nextAll("i").removeClass("fa-star").addClass("fa-star-o");
							$($(this).parent().parent().find("input")[1]).val($(this).parent().find(".fa-star").length)
  });
});
					</script>
			
		<%@include file="/WEB-INF/common/client/footer.jsp" %>
   		<%@include file="/WEB-INF/common/client/plugin.jsp" %>
    </body>
</html>