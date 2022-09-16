<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <h4 class="card-title">Tất cả đơn hàng</h4>
        
                                        <div class="table-responsive">
                                            <table class="table table-editable table-nowrap align-middle table-edits">
                                                <thead>
                                                    <tr>
                                                        <th>Mã đơn hàng</th>
                                                        <th>Khách hàng</th>
                                                        <th>Ngày đặt hàng</th>
                                                        <th>Sản phẩm</th>
                                                        <th>Trạng thái</th>
                                                        <th>Xác nhận</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="order" items="${ orders }" varStatus="i">
                                                            <tr id="${ order.id }">
                                                                <td>${ order.id }</td>
                                                                <td>${ order.user.email }</td>
                                                                <td>${ order.createdDate }</td>
                                                                <td>${ order.orderItems.size() } Sản phẩm</td>
                                                                <td style="display: flex;">
                                                                    <div class="alert ${ order.status.id != 1 ? 'alert-success' : 'alert-warning' }" role="alert" style="padding: .25rem 0.75rem; margin: .25rem auto !important;">
                                                                        ${ order.status.name }
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <button id="myBtn${ i.index }" onclick="myBtn(${ i.index })" type="button" class="btn btn-primary waves-effect waves-light" style="margin: 0 auto !important;">
                                                                        Chi tiết <i class="ri-arrow-right-line align-middle ms-2"></i> 
                                                                    </button>
                                                                    <div id="myModal${ i.index }" class="modal" style="background-color: rgba(0,0,0,0.3)">

                                                                        <!-- Modal content -->
                                                                        <div class="modal-content"  style="position: absolute;top: 64px;left: 425px;; width: 50%;height: 82%;background-color: blanchedalmond;">
                                                                          <span class="close${ i.index }" onclick="spanBtn(${ i.index })">&times;</span>
                                                                          <h2 style="text-align: center;font-size: 33px;">ĐƠN HÀNG ${ order.product.length } SẢN PHẨM</h2>
                                                                          <div style="margin-left: 206px;width: 339px;font-style: italic;margin-top: 10px;">
                                                                            <h5 style="font-size: 16px;">Tên Khách Hàng: <span style="float: right;">${ order.user.email }</span></h5>
                                                                            <h5 style="font-size: 16px;">Ngày Đặt Hàng: <span style="float: right;">${ order.createdDate }</span></h5>
                                                                            <h5 style="font-size: 16px;">Trạng Thái: <span style="float: right;">${ order.status.name }</span></h5>
                                                                            <c:if test="${ order.status.id==3 }">
                                                                            <h5 style="font-size: 16px;">Ngày Mua: <span style="float: right;">${ order.createdDate }</span></h5>
                                                                            </c:if>
                                                                            <c:if test="${ order.status.id==1 }">
                                                                            <button onclick="confirmOder(${ order.id })" style="margin-left: 90px;margin-bottom: 20px;background-color: #0bb197;">Xác nhận đang giao hàng</button>
                                                                            </c:if>
                                                                            <c:if test="${ order.status.id==2 }">
                                                                            <button onclick="confirmBought(${ order.id })" style="margin-left: 90px;margin-bottom: 20px;background-color: #0bb197;">Xác nhận đã giao hàng</button>
                                                                            </c:if>
                                                                        </div>
                                                                          <div style="max-width:1000px;
                                                                          max-height:500px;
                                                                          overflow-x:hidden;
                                                                          overflow-y:auto;">
                                                                            <c:forEach var="orderItem" items="${ order.orderItems }">
                                                                            <div style="display: flex;
                                                                            width: 310px;
                                                                            margin-top: 10px;margin-left: 50px;">
                                                                                    <a class="prodlist-i-img" href="product?id=${ orderItem.product.id }"><img style="height:150px;position:relative;" src="/template/images_upload/product_images/${ orderItem.product.image[0] }" alt=""></a>
                                                                                <div style="margin-left: 50px;">
                                                                                    <h6 style="font-weight:bold;margin: 10px 0 9px 0px;text-align: center;font-size: 20px;"></h6>
                                                                                    <ul class="prodlist-i-props2" style="width: 200px;">
                                                                                        <li style="min-width:169%"><span style="font-weight: 550;font-size: 18px;" class="prodlist-i-propttl"><span>Số Lượng</span></span> <span style="float: right;margin-bottom: 0px;" class="prodlist-i-propval">${ orderItem.quantity }</span></li>
                                                                                        <li style="min-width:169%"><span style="font-weight: 550;font-size: 18px;" class="prodlist-i-propttl"><span>Size</span></span> <span style="float: right;margin-bottom: 0px;" class="prodlist-i-propval">S, X, XL</span></li>
                                                                                        <li style="min-width:169%"><span style="font-weight: 550;font-size: 18px;" class="prodlist-i-propttl"><span>Giá</span></span> <span style="float: right;margin-bottom: 0px;" class="prodlist-i-propval">${ orderItem.product.price }</span></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                            </c:forEach>
                                                                        </div>
                                                                        </div>
                                                                      
                                                                      </div>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                </tbody>
                                                </table>
                                                <script>
                                                    function handleUpdateProduct(value) {
                                                        $(location).attr('href', '/order-detail/' + value);
                                                    }
                                                </script>
                                        </div>
        
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
                
            </div>
            <!-- end main content-->
            
        </div>
        <!-- END layout-wrapper -->
 
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script>
            function confirmOder(id) {
                const swalWithBootstrapButtons = Swal.mixin({
                        customClass: {
                            confirmButton: 'btn btn-success',
                            cancelButton: 'btn btn-danger'
                        },
                        buttonsStyling: false
                        })
                swalWithBootstrapButtons.fire({
                        title: 'Bạn có chắc chắn không?',
                        text: "Xác nhận đơn hàng",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Đồng ý',
                        cancelButtonText: 'Hủy bỏ',
                        reverseButtons: true
                        }).then((result) => {
                        if (result.isConfirmed) {
                            $.ajax({
                                    url:'/admin/confirmOder',
                                    type:'PUT',
                                    data: {
                                        _id:id
                                    },
                                    success:function(data){
                                        if(data=='Xác nhận thành công!')
                                        {
                                            swalWithBootstrapButtons.fire(
                                            'Xác nhận!',
                                            data,
                                            'success'
                                            ).then(data=>{
                                                location.reload()
                                            })
                                        }
                                    }
                                })
                        } else 
                         {
                            
                        }
                        })
            }
            function confirmBought(id) {
                const swalWithBootstrapButtons = Swal.mixin({
                        customClass: {
                            confirmButton: 'btn btn-success',
                            cancelButton: 'btn btn-danger'
                        },
                        buttonsStyling: false
                        })
                swalWithBootstrapButtons.fire({
                        title: 'Bạn có chắc chắn không?',
                        text: "Xác nhận đơn hàng",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Đồng ý',
                        cancelButtonText: 'Hủy bỏ',
                        reverseButtons: true
                        }).then((result) => {
                        if (result.isConfirmed) {
                            $.ajax({
                                    url:'/admin/confirmBought',
                                    type:'PUT',
                                    data: {
                                        _id:id
                                    },
                                    success:function(data){
                                        if(data=='Xác nhận thành công!')
                                        {
                                            swalWithBootstrapButtons.fire(
                                            'Xác nhận!',
                                            data,
                                            'success'
                                            )
                                            .then(data=>{
                                                location.reload()
                                            })
                                        }
                                    }
                                })
                        } else 
                         {
                            
                        }
                        })
            }
            function myBtn(index)
            {
                var modal = document.getElementById("myModal"+index);
                modal.style.display = "block";
            }
            function spanBtn(index)
            {
                var modal = document.getElementById("myModal"+index);
                modal.style.display = "none";
            }
            var modalClass=document.getElementsByClassName('modal')
            window.onclick = function(event) {
                modalClass.forEach(modalClass => {
                    if (event.target == modalClass) {
                        modalClass.style.display = "none";
                    }
                });
            }
            </script>
            <%@include file="/WEB-INF/common/admin/footer.jsp" %>



	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
     <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <%@include file="/WEB-INF/common/admin/plugin.jsp" %> 
</body>

</html>