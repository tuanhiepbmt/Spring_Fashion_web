<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title">Menu</li>

                <li>
                    <a href="/admin/" class="waves-effect">
                        <i class="mdi mdi-home-variant-outline"></i>
                        <span>Trang chủ</span>
                    </a>
                </li>


                <li class="menu-title">Các thành phần</li>

                <li>
                    <a href="/admin/user?link=list&page=1&limit=1" class="waves-effect">
                        <i class="ri-file-user-fill"></i>
                        <span>Người dùng</span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <i class="ri-printer-line"></i>
                        <span class="badge rounded-pill bg-danger float-end">length</span>
                        <span>Đơn hàng</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/admin/orders">Tất cả đơn hàng</a></li>
                        <li><a href="/admin/order1">Chờ xác nhận<span class="badge rounded-pill bg-danger float-end">length</span></a></li>
                        <li><a href="/admin/order2">Đang giao hàng</a></li>
                        <li><a href="/admin/order3">Đã giao hàng</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class=" ri-store-fill"></i>
                        <span>Sản phẩm</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/admin/product?link=list&limit=1&page=1">Tất cả sản phẩm</a></li>
                        <li><a href="/admin/product?link=add">Thêm sản phẩm</a></li>
                    </ul>
                </li>


            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->