
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header - start -->
<header class="header">
    <!-- Topbar - start -->
    <div class="header_top">
        <div class="container">
            <ul class="contactinfo nav nav-pills">
                <li>
                    <i class='fa fa-phone'></i> 0942299805
                </li>
                <li>
                    <i class="fa fa-envelope"></i> stuneed.shop@gmail.com
                </li>
            </ul>
            <!-- Social links -->
            <ul class="social-icons nav navbar-nav">
                <li>
                    <a href="http://facebook.com" rel="nofollow" target="_blank">
                        <i class="fa fa-facebook"></i>
                    </a>
                </li>
                <li>
                    <a href="http://google.com" rel="nofollow" target="_blank">
                        <i class="fa fa-google-plus"></i>
                    </a>
                </li>
                <li>
                    <a href="http://instagram.com" rel="nofollow" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- Topbar - end -->

    <!-- Logo, Shop-menu - start -->
    <div class="header-middle">
        <div class="container header-middle-cont">
            <div class="toplogo">
                <a href="/home">
                    <img src="template/client/images/logo.png" alt="Stuneed - Something you need">
                </a>
            </div>
            <div class="shop-menu">
                <ul>
                    <li>
                        <a onclick="Dontlogin()" style="cursor: pointer;">
                            <i class="fa fa-heart"></i>
                            <span class="shop-menu-ttl">Danh sách yêu thích</span>
                            <span id="topbar-favorites"></span>
                        </a>
                    </li>
                    <li>
                        <a onclick="Dontlogin()" style="cursor: pointer;">
                            <i class="fa fa-bar-chart"></i>
                            <span class="shop-menu-ttl">So sánh</span> 
                        </a>
                    </li>
                    <li class="topauth">
                        <a href="passingGuests">
                            <i class="fa fa-user"></i>
                            <span class="shop-menu-ttl">
                                Thông tin khách hàng
                            </span>
                        </a>


                    </li>

                    <li>
                        <div class="h-cart">
                            <a href="cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span class="shop-menu-ttl">Giỏ Hàng</span>
                                (<b id="cartHeader">length</b>)
                            </a>
                        </div>
                    </li>
                    <li class="topauth">
                        <a href="login">
                            <span class="shop-menu-ttl">Đăng nhập / Đăng kí</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Logo, Shop-menu - end -->

    <!-- Topmenu - start -->
    <div class="header-bottom">
        <div class="container">
            <nav class="topmenu">
                <!-- Catalog menu - start -->
                <div class="topcatalog">
                    <a class="topcatalog-btn" href="#"><span>Tất cả</span> danh mục</a>
                    <ul class="topcatalog-list">
                        <li>
                            <a href="women-dress">
                                Thời Trang Nữ
                            </a>
                            <i class="fa fa-angle-right"></i>
                            <ul>
                                <li>
                                    <a href="women-dress">
                                        Đầm và Váy
                                    </a>
                                </li>
                                <li>
                                    <a href="women-shirt">
                                        Áo
                                    </a>
                                </li>
                                <li>
                                    <a href="women-trouser">
                                        Quần
                                    </a>
                                </li>
                            </ul> 
                        </li>
                        <li>
                            <a href="men-shirt">
                                Thời Trang Nam
                            </a>
                            <i class="fa fa-angle-right"></i>
                            <ul>
                                <li>
                                    <a href="men-trouser">
                                        Quần
                                    </a>
                                </li>
                                <li>
                                    <a href="men-shirt">
                                        Áo
                                    </a>
                                </li>
                                <li>
                                    <a href="women-cap">
                                        Mũ
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- Catalog menu - end -->

                <!-- Main menu - start -->
                <button type="button" class="mainmenu-btn">Menu</button>

                <ul class="mainmenu">
                    <li>
                        <a href="/home" class="active">
                            Trang chủ
                        </a>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="women-dress">
                            Thời Trang Nữ <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="women-dress">
                                    Đầm và Váy
                                </a>
                            </li>
                            <li>
                                <a href="women-trouser">
                                    Quần
                                </a>
                            </li>
                            <li>
                                <a href="women-shirt">
                                    Áo
                                </a>
                            </li>
                            <!-- <li>
                                <a href="catalog-gallery-2">
                                    Catalog Gallery - Style 2
                                </a>
                            </li>
                            <li>
                                <a href="catalog-table">
                                    Catalog Table
                                </a>
                            </li> -->
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="men-shirt">
                            Thời Trang Nam <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="men-trouser">
                                    Quần 
                                </a>
                            </li>
                            <li>
                                <a href="men-shirt">
                                    Áo
                                </a>
                            </li>
                            <li>
                                <a href="men-cap">
                                    Mũ
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- <li class="menu-item-has-children">
                        <a href="blog">
                            Blog <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="blog">
                                    Blog - Style 1
                                </a>
                            </li>
                            <li>
                                <a href="blog-2">
                                    Blog - Style 2
                                </a>
                            </li>
                            <li>
                                <a href="post">
                                    Single Post
                                </a>
                            </li>
                        </ul>
                    </li> -->
                    
                </ul>
                <!-- Main menu - end -->

                <!-- Search - start -->
                <div class="topsearch">
                    <a id="topsearch-btn" class="topsearch-btn" href="#"><i class="fa fa-search"></i></a>
                    <div class="topsearch-form">
                        <input onkeypress="return runScript(event)" id="ipSearch" type="text" placeholder="Tìm kiếm Sản Phẩm">
                        <button id="search" onclick="search()" type="submit"><i class="fa fa-search"></i></button>
                    </div>
                </div>
                <!-- Search - end -->
            </nav>
        </div>
    </div>
    <!-- Topmenu - end -->
</header>
<!-- Header - end -->
<script>
    function search(){
        var temp = $('#ipSearch').val()
        location.replace(('./search?page=1&word='+temp))
    }
    function runScript(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                search()
            }
        }
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
</script>