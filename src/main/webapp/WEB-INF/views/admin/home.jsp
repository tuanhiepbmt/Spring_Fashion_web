<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="/template/assets/images/favicon.ico">

    <title>Something you need</title>
    <!-- jvectormap -->
    <link href="/template/assets/libs/jqvmap/jqvmap.min.css" rel="stylesheet" />

    <!-- Bootstrap Css -->
    <link href="/template/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="/template/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="/template/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body data-sidebar="dark">

    <!-- Begin page -->
    <div id="layout-wrapper">

        <%@include file="/WEB-INF/common/admin/header.jsp" %>
        <%@include file="/WEB-INF/common/admin/sidebar.jsp" %>
        <!-- Left Sidebar End -->

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0">STUNNED</h4>

                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-xl-3 col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex text-muted">
                                        <div class="flex-shrink-0 me-3 align-self-center">
                                            <div id="radialchart-1" class="apex-charts" dir="ltr"></div>
                                        </div>
                                        <div class="flex-grow-1 overflow-hidden">
                                            <p class="mb-1">Khách hàng</p>
                                            <h5 class="mb-3">1.5k</h5>
                                            <p class="text-truncate mb-0"><span class="text-success me-2"> 0.02% <i
                                                        class="ri-arrow-right-up-line align-bottom ms-1"></i></span> So với hôm qua</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card-body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="flex-shrink-0 me-3 align-self-center">
                                            <div id="radialchart-2" class="apex-charts" dir="ltr"></div>
                                        </div>
                                        <div class="flex-grow-1 overflow-hidden">
                                            <p class="mb-1">Lượt xem sản phẩm</p>
                                            <h5 class="mb-3">50</h5>
                                            <p class="text-truncate mb-0"><span class="text-success me-2"> 1.7% <i
                                                        class="ri-arrow-right-up-line align-bottom ms-1"></i></span> So với hôm qua</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card-body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex text-muted">
                                        <div class="flex-shrink-0 me-3 align-self-center">
                                            <div id="radialchart-3" class="apex-charts" dir="ltr"></div>
                                        </div>
                                        <div class="flex-grow-1 overflow-hidden">
                                            <p class="mb-1">Lượt mua hàng</p>
                                            <h5 class="mb-3">24.03 %</h5>
                                            <p class="text-truncate mb-0"><span class="text-danger me-2"> 0.01% <i
                                                        class="ri-arrow-right-down-line align-bottom ms-1"></i></span> So với hôm qua</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card-body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->

                        <div class="col-xl-3 col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex text-muted">
                                        <div class="flex-shrink-0  me-3 align-self-center">
                                            <div class="avatar-sm">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="ri-group-line"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flex-grow-1 overflow-hidden">
                                            <p class="mb-1">Sản phẩm mới</p>
                                            <h5 class="mb-3">10</h5>
                                            <p class="text-truncate mb-0"><span class="text-success me-2"> 0.01% <i
                                                        class="ri-arrow-right-up-line align-bottom ms-1"></i></span> So với hôm qua</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end card-body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <%@include file="/WEB-INF/common/admin/footer.jsp" %>

        </div>
        <!-- end main content-->

    </div>

    <!-- JAVASCRIPT -->
    <%@include file="/WEB-INF/common/admin/plugin.jsp" %>

    <!-- apexcharts js -->
    <script src="/template/assets/libs/apexcharts/apexcharts.min.js"></script>

    <!-- jquery.vectormap map -->
    <script src="/template/assets/libs/jqvmap/jquery.vmap.min.js"></script>
    <script src="/template/assets/libs/jqvmap/maps/jquery.vmap.usa.js"></script>

    <script src="/template/assets/js/pages/dashboard.init.js"></script>

    <script src="/template/assets/js/app.js"></script>

</body>

</html>