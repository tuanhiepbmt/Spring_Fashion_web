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
											
                                            <h4 class="card-title"><c:if test="${ not empty users }">Tất cả tài khoản</c:if>
                                            <c:if test="${ empty users }">Tất cả sản phẩm</c:if></h4>
                                            <div class="table-rep-plugin">
                                                <div class="table-responsive mb-0" data-pattern="priority-columns">
                                                    <table id="tech-companies-1" class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                            	<c:if test="${ empty users }">
	                                                                <th>Mã sản phẩm</th>
	                                                                <th data-priority="1">Ảnh sản phẩm</th>
	                                                                <th data-priority="1">Tên sản phẩm</th>
	                                                                <th data-priority="3">Danh mục</th>
	                                                                <th data-priority="1">Loại</th>
	                                                                <th data-priority="3">Chất liệu</th>
	                                                                <th data-priority="3">Size</th>
	                                                                <th data-priority="1">Giá</th>
	                                                                <th data-priority="1">Số lượng kho</th>
	                                                                <th data-priority="3">Xuất xứ</th>
	                                                                <th data-priority="1">Lượt mua</th>
	                                                                <th data-priority="3">Ngày thêm</th>
                                                                </c:if>
                                                                <c:if test="${ not empty users }">
                                                                	<th>id</th>
			                                                        <th data-priority="3">Ảnh</th>
			                                                        <th data-priority="1">Email</th>
	                                                                <th data-priority="3">Họ và Tên</th>
			                                                        <th data-priority="3">Ngày sinh</th>
			                                                        <th data-priority="1">Địa chỉ</th>
			                                                        <th data-priority="3">Số điện thoại</th>
			                                                        <th data-priority="3">Giới tính</th>
			                                                        <th data-priority="3">Quyền</th>
			                                                        <th data-priority="3">Trạng thái</th>
                                                                </c:if>
                                                            </tr>
                                                        </thead>
                                                        <c:if test="${ empty users }">
	                                                        <c:forEach var="product" items="${ products }">
	                                                            <tr>
	                                                                <td>
	                                                                    ${ product.getId() }
	                                                                </td>
	                                                                <c:if test="${ product.getImage()[0].indexOf('http')!=-1 }">
	                                                                    <td><img style="max-width: 100px" class="card-img img-fluid" src="${ product.getImage()[0] }" alt="Card image"></td>
	                                                                </c:if>
	                                                                <c:if test="${ product.getImage()[0].indexOf('http')==-1 }">
	                                                                    <td style="max-width: 100px"><img class="card-img img-fluid" src="/template/images_upload/product_images/${ product.getImage()[0] }" alt="Card image"></td>
	                                                                </c:if>
	                                                                            <td>
	                                                                                ${ product.getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getCategory().getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getType().getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getMaterial().getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getSize()[0] }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getPrice() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getStock() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getOrigin().getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getPurchases() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ product.getCreatedDate() }
	                                                                            </td>
	                                                                            <td>
	                                                                                <input class="btn btn-primary" type="button" value="Sửa" onclick="handleUpdateProduct('${product.getId()}')">
	                                                                            </td>
	                                                            </tr>
	                                                            </c:forEach>
                                                            </c:if>
                                                            <c:if test="${ not empty users }">
	                                                            <c:forEach var="user" items="${ users }">
	                                                            	<tr>
		                                                                <td>
		                                                                    ${ user.getId() }
		                                                                </td>
		                                                                <c:if test="${ user.getAvatar().indexOf('http')!=-1 }">
		                                                                    <td><img style="max-width: 100px" class="card-img img-fluid" src="${ user.getAvatar() }" alt="Card image"></td>
		                                                                </c:if>
		                                                                <c:if test="${ user.getAvatar().indexOf('http')==-1 }">
		                                                                    <td style="max-width: 100px"><img class="card-img img-fluid" src="/template/images_upload/product_images/${ user.getAvatar() }" alt="Card image"></td>
		                                                                </c:if>
	                                                                            <td>
	                                                                                ${ user.getEmail() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ user.getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ user.getDateOfBirth() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ user.getAddress() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ user.getPhoneNumber() }
	                                                                            </td>
	                                                                            <td>
	                                                                                <c:if test="${ user.getSex()==0 }">Nữ</c:if>
	                                                                                <c:if test="${ user.getSex()==1 }">Nam</c:if>
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ user.getRole().getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                                ${ user.getStatus().getName() }
	                                                                            </td>
	                                                                            <td>
	                                                                            <c:if test="${ empty users }">
	                                                                                <input class="btn btn-primary" type="button" value="Sửa" onclick="handleUpdateProduct('${product.getId()}')">
	                                                                            </c:if>
	                                                                            <c:if test="${ not empty users }">
	                                                                            	<input class="btn btn-primary" type="button" value="Sửa" onclick="handleUpdateUser('${user.getId()}')">
	                                                                            </c:if>
	                                                                            </td>
	                                                            	</tr>
	                                                            </c:forEach>
                                                            </c:if>
                                                    </table>
                                                    <c:if test="${ empty users }">
	                                                    <script>
	                                                        function handleUpdateProduct(value) {
	                                                            $(location).attr('href', '/admin/product?link=edit&id=' + value);
	                                                        }
	                                                    </script>
                                                    </c:if>
                                                    <c:if test="${ not empty users }">
	                                                    <script>
	                                                        function handleUpdateUser(value) {
	                                                            //$(location).attr('href', '/admin/user?link=edit&id=' + value);
	                                                            const Toast = Swal.mixin({
									                                toast: true,
									                                position: 'top-end',
									                                showConfirmButton: false,
									                                timer: 3000
									                            })
									                            Toast.fire({
																	type: "warning",
																	title: 'Tính năng đang phát triển'
																})
	                                                        }
	                                                    </script>
                                                    </c:if>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                        <!-- container-fluid -->
                    </div>
                    <form id="formSubmit" action=<c:if test="${ not empty users }">'/admin/user'</c:if>
                    	<c:if test="${ empty users }">'/admin/product'</c:if> method="get">
                    	<input type="hidden" name="limit" value="" id="limit">
                    	<input type="hidden" name="link" value="" id="link">
                    	<input type="hidden" name="page" value="" id="page">
                    </form>
            		<!-- End Page-content -->
					<div class="pagination-area pb-45 text-center">
					        <div class="container">
					            <div class="row">
					                <div class="col-xl-12">
					                    <div class="single-wrap d-flex justify-content-center">    
					    					<ul class="pagination" id="pagination"></ul>
					                    </div>
					                </div>
					            </div>
					        </div>
					</div>
            <%@include file="/WEB-INF/common/admin/footer.jsp" %>

        </div>

    </div>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
     <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <!-- JAVASCRIPT -->
    <%@include file="/WEB-INF/common/admin/plugin.jsp" %>
	<script type="text/javascript" src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
	
	<script type="text/javascript">
	    var limit = 1;
	    $('#pagination').twbsPagination({
	        totalPages: ${ totalPage },
	        visiblePages: 3,
	        startPage: ${ page },
	        next: 'Next',
	        prev: 'Prev',
	        onPageClick: function(event, page) {
	            if (page != ${ page }) 
	            {
	                $('#limit').val(limit);
	                $('#page').val(page);
	                $('#link').val("list");
	                //$('#sortName').val("");//${model.sortName}
	                //$('#sortBy').val("desc");
	                $('#formSubmit').submit(); 
	            }
	        }
	    });
    </script>
</body>

</html>