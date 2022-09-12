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
                                    	<c:if test="${ empty product }">
                                        	<h1 style="font-size: 30px" class="card-title">Thêm sản phẩm</h1>
                                        </c:if>
                                    	<c:if test="${ not empty product }">
                                        	<h1 style="font-size: 30px" class="card-title">Chỉnh sửa sản phẩm</h1>
                                        </c:if>
                                        <p class="card-title-desc">Điền đầy đủ các thông tin dưới đây</p>
                                    <form id="formAdd" action="/api/product" method="post" enctype="multipart/form-data">
                                        <div class="mb-3 row">    
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="id">Mã sản phẩm</label>
                                                    <input <c:if test="${ not empty product }">value="${ product.getId() }"</c:if> disabled name="id" type="text" class="form-control">
                                                    <c:if test="${ not empty product }"><input value="${ product.getId() }" name="id" type="hidden" class="form-control"></c:if>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <label for="name">Tên sản phẩm</label>
                                                    <input <c:if test="${ not empty product }">value="${ product.getName() }"</c:if> type="text" class="form-control" id="productName" name="name">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">    
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="categoryId">Danh mục</label>
                                                    <select class="form-control select2" id="productCategory" name="categoryId">
                                                        <c:forEach var="category" items="${ categorys }">
                                                        	<option <c:if test="${ not empty product && product.getCategory().getName().equals(category.getName()) }">selected</c:if> value="${ category.getId() }">${ category.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="typeId">Loại</label>
                                                    <select class="form-control select2" id="productType" name="typeId">
                                                        <c:forEach var="type" items="${ types }">
                                                        	<option <c:if test="${ not empty product && product.getType().getName().equals(type.getName()) }">selected</c:if> value="${ type.getId() }">${ type.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="materialId">Chất liệu</label>
                                                    <select class="form-control select2" id="productMaterial" name="materialId">
                                                        <c:forEach var="material" items="${ materials }">
                                                        	<option <c:if test="${ not empty product && product.getMaterials().get(0).getName().equals(material.getName()) }">selected</c:if> value="${ material.getId() }">${ material.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="originId">Xuất xứ</label>
                                                    <select class="form-control select2" id="productOrigin" name="originId">
                                                        <c:forEach var="origin" items="${ origins }">
                                                        	<option <c:if test="${ not empty product && product.getOrigins().get(0).getName().equals(origin.getName()) }">selected</c:if> value="${ origin.getId() }">${ origin.getName() }</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">    
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="size">Size</label>
                                                    <input <c:if test="${ not empty product }">value="${ product.sizeToString() }"</c:if> type="text" class="form-control" id="size" name="size">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="tags">Thẻ</label>
                                                    <input <c:if test="${ not empty product }">value="${ product.getTags()[0] }"</c:if> type="text" class="form-control" id="productTags" name="tags">
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="mb-3 row">    
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="price">Giá</label>
                                                    <input <c:if test="${ not empty product }">value="${ product.getPrice() }"</c:if> type="text" class="form-control" id="productPrice" name="price">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="stock">Số lượng</label>
                                                    <input <c:if test="${ not empty product }">value="${ product.getStock() }"</c:if> type="text" class="form-control" id="productStock" name="stock">
                                                </div>
                                            </div>
                                        </div> 
                                        <div class="mb-3 row">    
                                            <div class="form-group">
                                                <label for="shortDescription">Mô tả Ngắn</label>
                                                <textarea minlength="5" rows="5" type="text" class="form-control" id="shortDescription" name="shortDescription"><c:if test="${ not empty product }">${ product.getShortDescription() }</c:if></textarea>
                                            </div>
                                        </div> 
                                        <div class="mb-3 row">    
                                            <div class="form-group">
                                                <label for="description">Mô tả</label>
                                                <textarea minlength="5" rows="10" type="text" class="form-control" id="description" name="description"><c:if test="${ not empty product }">${ product.getDescription() }</c:if></textarea>
                                            </div>
                                        </div> 
                                        <div class="mb-3 row">    
                                            <div class="form-group">
                                                <label for="productImage">Ảnh đính kèm</label>
                                                <input type="file" multiple class="form-control" id="productImage" name="imageFile">
                                            </div>
                                        </div> 
                                         	<c:if test="${ not empty product }">
                                            	<button onclick="update()" id="add-btn" class="btn btn-primary" >Lưu sản phẩm</button>
                                            </c:if>
                                         	<c:if test="${ empty product }">
                                            	<button onclick="add()" id="add-btn" class="btn btn-primary" >Thêm sản phẩm</button>
                                            </c:if>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

            <%@include file="/WEB-INF/common/admin/footer.jsp" %>

        </div>

    </div>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
     <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <!-- JAVASCRIPT -->
    <%@include file="/WEB-INF/common/admin/plugin.jsp" %>

</body>
<c:if test="${ empty product }">
	<script>
	    function add() {
	            const form = document.querySelector("#formAdd");
	            form.addEventListener("submit", (e) => {
	                e.preventDefault();
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
	                                location.reload()
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
	            })
	        }
	</script>
</c:if><c:if test="${ not empty product }">
	<script>
	    function update() {
	            const form = document.querySelector("#formAdd");
	            form.addEventListener("submit", (e) => {
	                e.preventDefault();
	                    let data = new FormData(form);
	                    axios({
	                        method: "put",
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
	                                    'Lưu thành công.',
	                                    'success',
	                                    'success'
	                                )
	                                 location.reload()
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
	            })
	        }
	</script>
</c:if>
</html>