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
			
			<main>
  <section class="container">
      <!-- Slider -->
      <div class="fr-slider-wrap">
          <div class="fr-slider">
              <ul class="slides">
                  <li>
                    <div style="width: 1140px;
                      height: 400px;
                      background-image: linear-gradient(5deg,rgba(133, 133, 136, 0.25),rgb(255, 255, 255,0.0000001)),
                      url(template/client/images/copy_21860360.png);">
                      </div>
                    <div class="fr-slider-cont">
                      <div class="fr-slider-cont" style="left: 0%;">
                          <h3>S???N PH???M M???I</h3>
                          <p>Th????ng xuy??n ra m???t nh???ng s???n ph???m m???i mang l???i tr???i nghi???m m???i m???<br>?????m b???o gi?? c??? h???p l?? v?? ch???t l?????ng t???t nh???t cho kh??ch h??ng</p>
                          <p class="fr-slider-more-wrap">
                              <a class="fr-slider-more" href="product">Mua S???m Ngay</a>
                          </p>
                      </div>
                      </div>
                  </li>
                  <li>
                    <div style="width: 1140px;
                      height: 400px;
                      background-image: linear-gradient(5deg,rgba(133, 133, 136, 0.25),rgb(255, 255, 255,0.0000001)),
                      url(template/client/images/copy_21860360.png);"></div>
                    <div class="fr-slider-cont">
                      <div class="fr-slider-cont" style="left: 0%;">
                          <h3>D???N ?????U XU H?????NG</h3>
                          <p>Ch??ng t??i cam k???t c???p nh???p nh???ng m???u th???i trang hot nh???t trong n?????c v?? th??? gi???i.<br>Ph?? h???p v???i m???i l???a tu???i, v??n h??a v?? phong t???c c???a Vi???t Nam</p>
                          <p class="fr-slider-more-wrap">
                              <a class="fr-slider-more" href="product">Mua S???m Ngay</a>
                          </p>
                      </div>
                      </div>
                  </li>
              </ul>
          </div>
      </div>
      <div class="fr-pop-wrap">
        <h3 class="component-ttl" ><span>C?? th??? b???n s??? th??ch</span></h3>
        
        </div>
      <div class="fr-pop-tab-cont">
        <div class="flexslider prod-items fr-pop-tab">
            <ul class="slides">
            	<c:forEach var="product" items="${ popularInAllProducts }">
                      <li class="prod-i">
                          <div class="prod-i-top">
                              <a href="product?id=${ product.id }" class="prod-i-img"><!-- NO SPACE --><img src="/template/images_upload/product_images/${product.getImage()[0]}" alt="${ product.getName() }"></a>
                              <p class="prod-i-info">
                                  <a onclick="growing()" style="cursor: pointer;" class="prod-i-favorites"><span>Y??u Th??ch</span><i class="fa fa-heart"></i></a>
                                  <a href="product?id=${ product.id }" style="cursor: pointer;" class="prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                                  <a onclick="growing()" class="prod-i-compare" style="cursor: pointer;"><span>So S??nh</span><i class="fa fa-bar-chart"></i></a>
                              </p>
                              <p class="prod-i-addwrap">
                                  <a href="product?id=${ product.id }" style="cursor: pointer;" class="prod-i-add">Xem chi thi???t</a>
                              </p>
                          </div>
                          <h3>
                              <a href="product?id=${ product.id }"> ${ product.name }</a>
                          </h3>
                          <p class="prod-i-price">
                          <b>${ product.getPrice() }???</b>
                      </p>
                          <div class="prod-i-skuwrapcolor">
                            <b>L?????t mua:${ product.purchases } </b>???
                          </div>
                      </li>
          		</c:forEach>
            </ul>
        </div>
    </div><!-- .fr-pop-tab-cont -->
      <!-- Popular Products -->
      <div class="fr-pop-wrap">
          <h3 class="component-ttl" ><span>S???N PH???M PH??? BI???N</span></h3>
          <ul class="fr-pop-tabs sections-show">
              <li><a data-frpoptab-num="1" data-frpoptab="#frpoptab-tab-1" href="#" class="active">T???t c???</a></li>
              	<c:forEach var="category" items="${ categorys }" varStatus="i">
              		<li><a data-frpoptab-num="${ i.index+2 }" data-frpoptab="#frpoptab-tab-${ i.index+2 }" href="#">${ category.getName() }</a></li>
              	</c:forEach>
              	<c:forEach var="type" items="${ types }" varStatus="i" >
              		<li><a data-frpoptab-num="${ i.index+categorys.size()+2 }" data-frpoptab="#frpoptab-tab-${ i.index+categorys.size()+2 }" href="#">${ type.getName() }</a></li>
              	</c:forEach>
          </ul>

          <div class="fr-pop-tab-cont">
              <p data-frpoptab-num="1" class="fr-pop-tab-mob active" data-frpoptab="#frpoptab-tab-1">T???t c???</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-1">
                  <ul class="slides">
                  	<c:forEach var="product" items="${popularInAllProducts}">
                      <li class="prod-i">
                          <div class="prod-i-top">
                              <a href="product?id=${ product.id }" class="prod-i-img"><!-- NO SPACE --><img src="/template/images_upload/product_images/${ product.getImage()[0] }" alt="${ product.getName() }"><!-- NO SPACE --></a>
                              <p class="prod-i-info">
                                  <a style="cursor: pointer;" onclick="growing()" class="prod-i-favorites"><span>Y??u Th??ch</span><i class="fa fa-heart"></i></a>
                                  <a href="product?id=${ product.id }" class="prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                                  <a style="cursor: pointer;" onclick="growing()" class="prod-i-compare"><span>So S??nh</span><i class="fa fa-bar-chart"></i></a>
                              </p>
                              <p class="prod-i-addwrap">
                                  <a href="product?id=${ product.id }" class="prod-i-add">Xem chi thi???t</a>
                              </p>
                          </div>
                          <h3>
                              <a href="product?id=${ product.id }">${ product.getName() }</a>
                          </h3>
                          <p class="prod-i-price">
                              <b>${ product.getPrice() }???</b>
                          </p>
                          <div class="prod-i-skuwrapcolor">
                            <b>L?????t mua:${ product.getPurchases() } </b>???
                          </div>
                      	</li>
                      </c:forEach>
                  </ul>
              </div>
			<c:forEach var="listProduct" items="${ productByCategory }" varStatus="i">
              <p data-frpoptab-num="${ i.index+2 }" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-${ i.index+2 }">${ categorys.get(i.index).getName() }</p>
              
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-${ i.index+2 }">
                <ul class="slides">
                   <c:forEach var="p" items="${ productByCategory.get(i.index) }">
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id=${ product.id }" class="prod-i-img"><!-- NO SPACE --><img src="/template/images_upload/product_images/${ p.getImage()[0] }" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="growing()" class="prod-i-favorites"><span>Y??u Th??ch</span><i class="fa fa-heart"></i></a>
                              <a href="product?id=${ product.id }" class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="growing()" class="prod-i-compare"><span>So S??nh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=${ product.id }" class="prod-i-add">Xem chi thi???t</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=${ product.id }">${ p.getName() }</a>
                      </h3>
                      <p class="prod-i-price">
                          <b>${p.getPrice() }???</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>L?????t mua: ${p.getPurchases() }</b>
                      </div>
                  </li>
                </c:forEach>
              </ul>
              </div>
              </c:forEach>
			<c:forEach var="listProduct" items="${ productByType }" varStatus="i">
              <p data-frpoptab-num="${ i.index+categorys.size()+2 }" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-${ i.index+categorys.size()+2 }">${ types.get(i.index).getName() }</p>
              
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-${ i.index+categorys.size()+2 }">
                <ul class="slides">
                   <c:forEach var="p" items="${ productByType.get(i.index) }">
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id=${ product.id }" class="prod-i-img"><!-- NO SPACE --><img src="/template/images_upload/product_images/${ p.getImage()[0] }" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="growing()" class="prod-i-favorites"><span>Y??u Th??ch</span><i class="fa fa-heart"></i></a>
                              <a href="product?id=${ product.id }" class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="growing()" class="prod-i-compare"><span>So S??nh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=${ product.id }" class="prod-i-add">Xem chi thi???t</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=${ product.id }">${ p.getName() }</a>
                      </h3>
                      <p class="prod-i-price">
                          <b>${p.getPrice() }???</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>L?????t mua: ${p.getPurchases() }</b>
                      </div>
                  </li>
                </c:forEach>
              </ul>
              </div>
              </c:forEach>
              
          </div><!-- .fr-pop-tab-cont -->
      </div><!-- .fr-pop-wrap -->
      <div class="fr-pop-wrap">
        <h3 class="component-ttl" ><span>S???N PH???M M???I NH???T</span></h3>
        
        </div>
      <div class="fr-pop-tab-cont">
        <div class="flexslider prod-items fr-pop-tab">
            <ul class="slides">
            	<c:forEach var="product" items="${ lastestProducts }">
	                <li class="prod-i">
	                    <div class="prod-i-top">
	                        <div class="prod-sticker">
	                            <p class="prod-sticker-1">NEW</p>
	                        </div>
	                        <a style="cursor: pointer;" href="product?id=${ product.id }" class="prod-i-img"><!-- NO SPACE --><img src="/template/images_upload/product_images/${product.getImage()[0] }" alt="${ product.getName() }"><!-- NO SPACE --></a>
	                        <p class="prod-i-info">
	                            <a style="cursor: pointer;" onclick="growing()" class="prod-i-favorites"><span>Y??u Th??ch</span><i class="fa fa-heart"></i></a>
	                            <a href="product?id=${ product.id }" class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
	                            <a style="cursor: pointer;" class="prod-i-compare" onclick="growing()"><span>So S??nh</span><i class="fa fa-bar-chart"></i></a>
	                        </p>
	                        <p class="prod-i-addwrap">
	                            <a href="product?id=${ product.id }" class="prod-i-add">Xem chi thi???t</a>
	                        </p>
	                    </div>
	                    <h3>
	                        <a href="product?id=${ product.id }">${ product.getName() }</a>
	                    </h3>
	                    <p class="prod-i-price">
	                        <b>${ product.getPrice() }???</b>
	                    </p>
	                    <div class="prod-i-skuwrapcolor">
	                      <b>L?????t mua: ${ product.getPurchases() }</b>
	                    </div>
	                </li>
                </c:forEach>
            </ul>
        </div>
    </div>

   

    


  </section>
</main>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
		<%@include file="/WEB-INF/common/client/footer.jsp" %>
   		<%@include file="/WEB-INF/common/client/plugin.jsp" %>
    </body>
</html>