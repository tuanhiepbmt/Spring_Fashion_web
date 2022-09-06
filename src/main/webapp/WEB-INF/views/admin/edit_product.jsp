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
                                        <h4 class="card-title">Thêm sản phẩm</h4>
                                        <p class="card-title-desc">Điền đầy đủ các thông tin dưới đây</p>
                                    <form id="formAdd" action="/api/product" method="post" enctype="multipart/form-data">
                                        <div class="mb-3 row">    
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="id">Mã sản phẩm</label>
                                                    <input disabled name="id" type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label for="name">Tên sản phẩm</label>
                                                    <input type="text" class="form-control" id="productName" name="name">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">    
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="categoryId">Danh mục</label>
                                                    <select class="form-control select2" id="productCategory" name="categoryId">
                                                        <c:forEach var="category" items="${ categorys }">
                                                        	<option value="${ category.getId() }">${ category.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="typeId">Loại</label>
                                                    <select class="form-control select2" id="productType" name="typeId">
                                                        <c:forEach var="type" items="${ types }">
                                                        	<option value="${ type.getId() }">${ type.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="materialId">Chất liệu</label>
                                                    <select class="form-control select2" id="productMaterial" name="materialId">
                                                        <c:forEach var="material" items="${ materials }">
                                                        	<option value="${ material.getId() }">${ material.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="originId">Xuất xứ</label>
                                                    <select class="form-control select2" id="productOrigin" name="originId">
                                                        <c:forEach var="origin" items="${ origins }">
                                                        	<option value="${ origin.getId() }">${ origin.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">    
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="size">Size</label>
                                                    <input type="text" class="form-control" id="size" name="size">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="tags">Thẻ</label>
                                                    <input type="text" class="form-control" id="productTags" name="tags">
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="mb-3 row">    
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="price">Giá</label>
                                                    <input type="text" class="form-control" id="productPrice" name="price">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="stock">Số lượng</label>
                                                    <input type="text" class="form-control" id="productStock" name="stock">
                                                </div>
                                            </div>
                                        </div> 
                                        <div class="mb-3 row">    
                                            <div class="form-group">
                                                <label for="shortDescription">Mô tả Ngắn</label>
                                                <textarea minlength="5" rows="10 type="text" class="form-control" id="shortDescription" name="shortDescription"></textarea>
                                            </div>
                                        </div> 
                                        <div class="mb-3 row">    
                                            <div class="form-group">
                                                <label for="description">Mô tả</label>
                                                <textarea minlength="5" rows="10 type="text" class="form-control" id="description" name="description"></textarea>
                                            </div>
                                        </div> 
                                        <div class="mb-3 row">    
                                            <div class="form-group">
                                                <label for="productImage">Ảnh đính kèm</label>
                                                <input type="file" multiple class="form-control" id="productImage" name="imageFile">
                                            </div>
                                        </div> 
                                            <button onclick="update()" id="add-btn" class="btn btn-primary" >Thêm sản phẩm</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- container-fluid -->
                    </div>
            <!-- End Page-content -->

            <%@include file="/WEB-INF/common/admin/footer.jsp" %>

        </div>

    </div>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
     <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <!-- JAVASCRIPT -->
    <%@include file="/WEB-INF/common/admin/plugin.jsp" %>

</body>

<script>
    function update() {
            const form = document.querySelector("#formAdd");
            // $('#formUpdate').submit()
                    let data = new FormData(form);
                    axios({
                        method: "post",
                        url: "/api/product",
                        data: data,
                    })
                        .then((data) => {
                            const Toast = Swal.mixin({
                                toast: true,
                                position: 'top-end',
                                showConfirmButton: false,
                                timer: 3000
                            })
                            if(data!=null)
                            {
                                Swal.fire(
                                    '',
                                    'Thêm thành công.',
                                    'success',
                                    'success'
                                )
                            }
                            else
                            {
                            	Swal.fire(
                                        '',
                                        'Thất bại.',
                                        'error',
                                        'error'
                                    )
                            }
                        })
                        .catch((err) => {
                            throw err;
                        });
        }
</script>
</html>