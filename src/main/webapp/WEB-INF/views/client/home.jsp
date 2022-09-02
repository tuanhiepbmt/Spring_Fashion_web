<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <link rel="icon" type="image/x-icon" href="/template/client/images/logo.png'/>">
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
        <%@include file="/WEB-INF/layout/client/header.jsp" %>
			
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
                          <h3>SẢN PHẨM Ngu</h3>
                          <p>Thương xuyên ra mắt những sản phẩm mới mang lại trải nghiệm mới mẻ<br>Đảm bảo giá cả hợp lí và chất lượng tốt nhất cho khách hàng</p>
                          <p class="fr-slider-more-wrap">
                              <a class="fr-slider-more" href="women-dress">Mua Sắm Ngay</a>
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
                          <h3>DẪN ĐẦU XU HƯỚNG</h3>
                          <p>Chúng tôi cam kết cập nhập những mẫu thời trang hot nhất trong nước và thế giới.<br>Phù hợp với mọi lứa tuổi, văn hóa và phong tục của Việt Nam</p>
                          <p class="fr-slider-more-wrap">
                              <a class="fr-slider-more" href="women-dress">Mua Sắm Ngay</a>
                          </p>
                      </div>
                      </div>
                  </li>
              </ul>
          </div>
      </div>
      <div class="fr-pop-wrap">
        <h3 class="component-ttl" ><span>Có thể bạn sẽ thích</span></h3>
        
        </div>
      <div class="fr-pop-tab-cont">
        <div class="flexslider prod-items fr-pop-tab">
            <ul class="slides">
               
                      <li class="prod-i">
                          <div class="prod-i-top">
                              <a href="product?id=product.id_product" class="prod-i-img"><!-- NO SPACE --><img src="product.productImage" alt="product.productName"></a>
                              <p class="prod-i-info">
                                  <a onclick="love(product.id_product)" style="cursor: pointer;" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                                  <a href="product?id=product.id_product" style="cursor: pointer;" class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                                  <a class="prod-i-compare" style="cursor: pointer;"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                              </p>
                              <p class="prod-i-addwrap">
                                  <a href="product?id=product.id_product" style="cursor: pointer;" class="prod-i-add">Xem chi thiết</a>
                              </p>
                          </div>
                          <h3>
                              <a href="product?id=product.id_product"> product.productName</a>
                          </h3>
                          <p class="prod-i-price">
                          <b>product.productPrice₫</b>
                      </p>
                      </li>
           
            </ul>
        </div>
    </div><!-- .fr-pop-tab-cont -->
      <!-- Popular Products -->
      <div class="fr-pop-wrap">
          <h3 class="component-ttl" ><span>SẢN PHẨM PHỔ BIẾN</span></h3>
          <ul class="fr-pop-tabs sections-show">
              <li><a data-frpoptab-num="1" data-frpoptab="#frpoptab-tab-1" href="#" class="active">Tất cả</a></li>
              <li><a data-frpoptab-num="2" data-frpoptab="#frpoptab-tab-2" href="#">Phụ nữ</a></li>
              <li><a data-frpoptab-num="3" data-frpoptab="#frpoptab-tab-3" href="#">Đàn ông</a></li>
              <li><a data-frpoptab-num="4" data-frpoptab="#frpoptab-tab-4" href="#">Đầm và Váy</a></li>
              <li><a data-frpoptab-num="5" data-frpoptab="#frpoptab-tab-5" href="#">Áo</a></li>
              <li><a data-frpoptab-num="6" data-frpoptab="#frpoptab-tab-6" href="#">Quần</a></li>
              <li><a data-frpoptab-num="7" data-frpoptab="#frpoptab-tab-7" href="#">Mũ</a></li>
          </ul>

          <div class="fr-pop-tab-cont">
              <p data-frpoptab-num="1" class="fr-pop-tab-mob active" data-frpoptab="#frpoptab-tab-1">Tất cả</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-1">
                  <ul class="slides">
                       
                       
                      <li class="prod-i">
                          <div class="prod-i-top">
                              <a href="product?id=products._id " class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0] %>" alt="products.productName "><!-- NO SPACE --></a>
                              <p class="prod-i-info">
                                  <a style="cursor: pointer;" onclick="love( products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                                  <a href="product?id= products._id" class="prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                                  <a style="cursor: pointer;" onclick="compare(products._id)" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                              </p>
                              <p class="prod-i-addwrap">
                                  <a href="product?id=products._id" class="prod-i-add">Xem chi thiết</a>
                              </p>
                          </div>
                          <h3>
                              <a href="product?id=products._id">products.productName</a>
                          </h3>
                          <p class="prod-i-price">
                              <b>products.productPrice₫</b>
                          </p>
                          <div class="prod-i-skuwrapcolor">
                            <b>Lượt mua:products.productPurchases </b>₫
                          </div>
                      </li>
                  </ul>
              </div>

              <p data-frpoptab-num="2" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-2">Phụ nữ</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-2">
                <ul class="slides">
                   
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id= products._id" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="love(products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                              <a href="product?id= products._id " class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="compare(products._id )" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=products._id %>" class="prod-i-add">Xem chi thiết</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=products._id %>">products.productName</a>
                      </h3>
                      <p class="prod-i-price">
                          <b> products.productPrice₫</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>Lượt mua:  products.productPurchases</b>₫
                      </div>
                  </li>
                
              </ul>
              </div>

              <p data-frpoptab-num="3" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-3">Đàn ông</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-2">
                <ul class="slides">
                   
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id= products._id" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="love(products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                              <a href="product?id= products._id " class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="compare(products._id )" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=products._id %>" class="prod-i-add">Xem chi thiết</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=products._id %>">products.productName</a>
                      </h3>
                      <p class="prod-i-price">
                          <b> products.productPrice₫</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>Lượt mua:  products.productPurchases</b>₫
                      </div>
                  </li>
                
              </ul>
              </div>

              <p data-frpoptab-num="4" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-4">Đầm và Váy</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-2">
                <ul class="slides">
                   
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id= products._id" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="love(products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                              <a href="product?id= products._id " class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="compare(products._id )" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=products._id %>" class="prod-i-add">Xem chi thiết</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=products._id %>">products.productName</a>
                      </h3>
                      <p class="prod-i-price">
                          <b> products.productPrice₫</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>Lượt mua:  products.productPurchases</b>₫
                      </div>
                  </li>
                
              </ul>
              </div>

              <p data-frpoptab-num="5" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-5">Áo</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-2">
                <ul class="slides">
                   
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id= products._id" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="love(products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                              <a href="product?id= products._id " class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="compare(products._id )" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=products._id %>" class="prod-i-add">Xem chi thiết</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=products._id %>">products.productName</a>
                      </h3>
                      <p class="prod-i-price">
                          <b> products.productPrice₫</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>Lượt mua:  products.productPurchases</b>₫
                      </div>
                  </li>
                
              </ul>
              </div>

              <p data-frpoptab-num="6" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-6">Quần</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-2">
                <ul class="slides">
                   
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id= products._id" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="love(products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                              <a href="product?id= products._id " class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="compare(products._id )" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=products._id %>" class="prod-i-add">Xem chi thiết</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=products._id %>">products.productName</a>
                      </h3>
                      <p class="prod-i-price">
                          <b> products.productPrice₫</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>Lượt mua:  products.productPurchases</b>₫
                      </div>
                  </li>
                
              </ul>
              </div>

              <p data-frpoptab-num="7" class="fr-pop-tab-mob" data-frpoptab="#frpoptab-tab-7">Mũ</p>
              <div class="flexslider prod-items fr-pop-tab" id="frpoptab-tab-2">
                <ul class="slides">
                   
                  <li class="prod-i">
                      <div class="prod-i-top">
                          <a href="product?id= products._id" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName %>"><!-- NO SPACE --></a>
                          <p class="prod-i-info">
                              <a style="cursor: pointer;" onclick="love(products._id)" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                              <a href="product?id= products._id " class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                              <a style="cursor: pointer;" onclick="compare(products._id )" class="prod-i-compare"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                          </p>
                          <p class="prod-i-addwrap">
                              <a href="product?id=products._id %>" class="prod-i-add">Xem chi thiết</a>
                          </p>
                      </div>
                      <h3>
                          <a href="product?id=products._id %>">products.productName</a>
                      </h3>
                      <p class="prod-i-price">
                          <b> products.productPrice₫</b>
                      </p>
                      <div class="prod-i-skuwrapcolor">
                        <b>Lượt mua:  products.productPurchases</b>₫
                      </div>
                  </li>
                
              </ul>
              </div>
          </div><!-- .fr-pop-tab-cont -->
      </div><!-- .fr-pop-wrap -->
      <div class="fr-pop-wrap">
        <h3 class="component-ttl" ><span>SẢN PHẨM MỚI NHẤT</span></h3>
        
        </div>
      <div class="fr-pop-tab-cont">
        <div class="flexslider prod-items fr-pop-tab">
            <ul class="slides">
                <li class="prod-i">
                    <div class="prod-i-top">
                        <div class="prod-sticker">
                            <p class="prod-sticker-1">NEW</p>
                        </div>
                        <a style="cursor: pointer;" href="product?id=products._id %>" class="prod-i-img"><!-- NO SPACE --><img src="products.productImage[0]" alt="products.productName"><!-- NO SPACE --></a>
                        <p class="prod-i-info">
                            <a style="cursor: pointer;" onclick="love()" class="prod-i-favorites"><span>Yêu Thích</span><i class="fa fa-heart"></i></a>
                            <a href="product?id=products._id %>" class="qview-btn prod-i-qview"><span>Xem</span><i class="fa fa-search"></i></a>
                            <a style="cursor: pointer;" class="prod-i-compare" onclick="compare()"><span>So Sánh</span><i class="fa fa-bar-chart"></i></a>
                        </p>
                        <p class="prod-i-addwrap">
                            <a href="product?id=products._id" class="prod-i-add">Xem chi thiết</a>
                        </p>
                    </div>
                    <h3>
                        <a href="product?id=products._id">products.productName</a>
                    </h3>
                    <p class="prod-i-price">
                        <b>products.productPrice₫</b>
                    </p>
                    <div class="prod-i-skuwrapcolor">
                      <b>Lượt mua: products.productPurchases</b>₫
                    </div>
                </li>
            </ul>
        </div>
    </div>

   

    


  </section>
</main>
			
		<%@include file="/WEB-INF/layout/client/footer.jsp" %>
   		<%@include file="/WEB-INF/layout/client/plugin.jsp" %>
    </body>
</html>