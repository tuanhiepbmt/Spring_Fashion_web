
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
                        <a onclick="growing()" style="cursor: pointer;">
                            <i class="fa fa-heart"></i>
                            <span class="shop-menu-ttl">Danh sách yêu thích</span>
                            <span id="topbar-favorites"></span>
                        </a>
                    </li>
                    <li>
                        <a onclick="growing()" style="cursor: pointer;">
                            <i class="fa fa-bar-chart"></i>
                            <span class="shop-menu-ttl">So sánh</span> 
                        </a>
                    </li>
                    <li class="topauth">
                    	
	                        <a  onclick="growing()" href="#">
	                            <i class="fa fa-user"></i>
	                            <span class="shop-menu-ttl">
	                               <c:if test="${ empty user }"> Thông tin khách hàng </c:if>
	                               ${ user.getName() }
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
                    	<c:if test="${ empty user }">
	                        <a href="login">
	                            <span class="shop-menu-ttl">Đăng nhập / Đăng kí</span>
	                        </a>
	                    </c:if>
                    	<c:if test="${ not empty user }">
	                        <a href="logout">
	                            <span class="shop-menu-ttl">Đăng xuất</span>
	                        </a>
	                    </c:if>
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
                    <a class="topcatalog-btn" href="product"><span>Tất cả</span> danh mục</a>
                    <ul class="topcatalog-list">
                        <c:forEach var="list" items="${ listTypeInCategory }" varStatus="i">
	                        <li>
	                            <a href="product?link=&categoryId=${ categorys[i.index].id }&typeId=${ list[0].id }">
	                                ${ categorys.get(i.index).getName() }
	                            </a>
	                            <i class="fa fa-angle-right"></i>
	                            <ul>
	                            	<c:forEach var="listType" items="${ list }">
		                                <li>
		                                    <a href="product?link=&categoryId=${ categorys[i.index].id }&typeId=${ listType.id }">
		                                        ${ listType.getName() }
		                                    </a>
		                                </li>
		                        	</c:forEach>
	                            </ul> 
	                        </li>
                        </c:forEach>
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
                    <c:forEach var="list" items="${ listTypeInCategory }" varStatus="i">
	                    <li class="menu-item-has-children">
	                        <a href="product?link=&categoryId=${ categorys[i.index].id }&typeId=${ list[0].id }">
	                            ${ categorys.get(i.index).getName() } <i class="fa fa-angle-down"></i>
	                        </a>
	                        <ul class="sub-menu">
	                        	<c:forEach var="listType" items="${ list }">
		                            <li>
		                                <a href="product?link=&categoryId=${ categorys[i.index].id }&typeId=${ listType.id }">
		                                    ${ listType.getName() }
		                                </a>
		                            </li>
		                        </c:forEach>
	                        </ul>
	                    </li>
	                </c:forEach>
                </ul>
                <!-- Main menu - end -->

                <!-- Search - start -->
                <div class="topsearch">
                    <a id="topsearch-btn" class="topsearch-btn" href="#"><i class="fa fa-search"></i></a>
                    <div class="topsearch-form">
                        <input onkeypress="return runScript(event)" id="ipSearch" type="text" placeholder="Tìm kiếm Sản Phẩm">
                        <button id="search" onclick="growing()" type="submit"><i class="fa fa-search"></i></button>
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