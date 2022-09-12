<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
			
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
                    <!-- Main Content - start -->
                    <main>
                    
                        <section class="container stylization maincont">


                            <ul class="b-crumbs">
                                <li>
                                    <a href="home" style="font: inherit;">
                                        Trang chủ
                                    </a>
                                </li>
                                <li>
                                    <span>Giỏ Hàng</span>
                                </li>
                            </ul>
                            <h1 class="main-ttl"><span>Giỏ Hàng</span></h1>
                            <!-- Cart Items - start -->
                            <form action="#">

                                <div class="cart-items-wrap">
                                    <table class="cart-items">
                                        <thead>
                                            <tr>
                                                <td class="cart-image">Hình ảnh</td>
                                                <td class="cart-ttl">Sản phẩm</td>
                                                <td class="cart-price">Giá</td>
                                                <td class="cart-quantity">Số lượng</td>
                                                <td class="cart-summ">Tổng tiền</td>
                                                <td class="cart-del">&nbsp;</td>
                                            </tr>
                                        </thead>
                                        <tbody id='removeAll'>
                                        <c:set var="i" value="0"/>
                                        
                                        <c:forEach var="product" items="${ products }">
                                                    <tr id="product${ i }">
                                                        <input style="display: none;" type="text" id="${ i }" value="${ product.id }">
                                                        <td class="cart-image">
                                                            <a href="product?id=${ product.id }">
                                                                <img src="/template/images_upload/product_images/${ product.image[0] }"
                                                                    alt="${ product.name }">
                                                            </a>
                                                        </td>
                                                        <td class="cart-ttl">
                                                            <a href="product?id=${ product.id }">
                                                                ${ product.name }
                                                            </a>
                                                            <p id="pSize${ i }">
                                                                ${ product.sizeToString() }
                                                            </p>
                                                        </td>
                                                        <td class="cart-price">
                                                            <b id="totalProduct${ i }">
                                                                ${product.price}
                                                            </b>
                                                        </td>
                                                        <td class="cart-quantity">
                                                            <p class="cart-qnt">
                                                                <input onclick="update()" id="ip${ i }" aria-label="quantity" max=10
                                                                    min=0 class="inputQuantity${ i }"
                                                                    value="${ product.quantity }" type="number">
                                                                <a class="is-form plus"></a>
                                                                <a class="is-form minus"></a>
                                                            </p>
                                                        </td>
                                                        <td class="cart-summ">
                                                            <b id="totalOneProduct${ i }">
                                                            	<fmt:setLocale value="en_US"/>
                                                            	<c:set var = "balance" value = "120000.2309" />
                                                            	${Integer.parseInt(product.price) * Integer.parseInt(product.quantity)}
                                                            </b>
                                                        </td>
                                                        <td class="cart-del">
                                                            <a style="cursor: pointer;" id="remove${ i }" class="cart-remove"></a>
                                                        </td>
                                                    </tr>
                                                <c:set var="i" value="${ i+1 }"/>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <ul class="cart-total">

                                    <li class="cart-summ">Tổng: <p id="total" >
                                        <c:set var="sum" value="0"/>
                                        <c:forEach var="product" items="${products}">
                                        	<c:set var="sum" value="${ sum+ product.price*product.quantity}"/>
                                        </c:forEach>
                                        <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${sum}" />
                                        </p></li>
                                </ul>
                                
                                <div class="cart-submit">
                                    <a onclick="payment()" <c:if test="${ empty products }">style='pointer-events: none;cursor: default;'</c:if> class="cart-submit-btn">Đặt Hàng</a>
                                    <a onclick="removeCart()" <c:if test="${ empty products }">style='pointer-events: none;cursor: default;'</c:if> class="cart-clear">Xóa giỏ hàng</a>
                                </div>
                            </form>
                            <!-- Cart Items - end -->

                        </section>
                    </main>
                    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
                    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
                    <!-- Main Content - end -->
                    <script>
                        function payment() {
                                var products=[]
                                for (let index = 0; index < i; index++) {
                                    if($('#ip'+index).val()!=undefined&&$('#'+index).val()!=undefined)
                                    products=products.concat({id:$('#'+index).val(),quantity:$('#ip'+index).val(),size:document.getElementById('pSize'+index).innerText})
                                }
                                axios({
                                    method: 'put',
                                    url: '/order',
                                    data: {
                                        products:products,
                                    },
                                })
                                .then(data=>{
                                    data=data.data
                                    const Toast = Swal.mixin({
                                        toast: true,
                                        position: 'top-end',
                                        showConfirmButton: false,
                                        timer: 3000
                                    })
                                    if(data=='Giỏ hàng trống!')
                                    {
                                        Toast.fire({
                                            type: "warning",
                                            title: 'Giỏ Hàng Trống'
                                        })
                                    }else if(data=='Guest Bạn cập nhập đủ thông tin bao gồm Tên, Số điện thoại, Địa chỉ')
                                    {
                                        Toast.fire({
                                            type: "warning",
                                            title: 'Bạn cập nhập đủ thông tin bao gồm Tên, Số điện thoại, Địa chỉ'
                                        })
                                        setTimeout(
                                            () => {
                                                location.replace('./passingGuests')
                                            },
                                            1 * 1000
                                        );
                                    }else if(data=='Bạn cập nhập đủ thông tin bao gồm Tên, Số điện thoại, Địa chỉ')
                                    {
                                        Toast.fire({
                                            type: "warning",
                                            title: data
                                        })
                                        setTimeout(
                                            () => {
                                                location.replace('./account')
                                            },
                                            1 * 1000
                                        );
                                    }else if(data=='Thành công')
                                    { 
                                        Swal.fire(
                                            '',
                                            'Đặt Hàng Thành Công',
                                            'success'
                                        )
                                        $.ajax({
                                            url:'/removeCart',
                                            type:'DELETE',
                                            success:function(data){
                                                if(data=='Thành công')
                                                {
                                                    document.getElementById('cartHeader').innerText=0
                                                    document.getElementById('removeAll').remove()
                                                    document.getElementById('total').innerHTML='0'
                                                }
                                            }
                                        })
                                    }else {
                                        Toast.fire({
                                            type: "success",
                                            title: data
                                        })
                                    }
                                })
                            
                        
                        }
                        function updateTotalOneProduct() {
                            // var total=  document.getElementById('price').val()
                            for (let index = 0; index < ${i}; index++) {
                                try {
                                var str=document.getElementById('totalProduct'+index).innerText
                                str= str.replace(/,/g,'');
                                var total=  parseInt(str)
                                var sl= parseInt(document.getElementById('ip'+index).value)
                                document.getElementById('totalOneProduct'+index).innerHTML=(total*sl).toLocaleString("en")
                                } catch (error) {
                                    
                                }
                            }
                        }
                        function updateTotal() {
                            // var total=  document.getElementById('price').val()
                            var sum=0
                            for (let index = 0; index < ${i}; index++) {
                                try {
                                var str=document.getElementById('totalOneProduct'+index).innerText
                                str= str.replace(/,/g,'');
                                var total=  parseInt(str)
                                sum=sum+total
                                } catch (error) {
                                    continue 
                                }
                            }
                            document.getElementById('total').innerHTML=sum.toLocaleString("en")
                        }
                    </script>
                    <script>
                        $('input.inputQuantity').each(function () {
                            var $this = $(this),
                                qty = $this.parent().find('.is-form'),
                                min = Number($this.attr('min')),
                                max = Number($this.attr('max'))
                            if (min == 0) {
                                var d = 0
                            } else d = min
                            $(qty).on('click', function () {
                                if ($(this).hasClass('minus')) {
                                    if (d > min) d += -1
                                } else if ($(this).hasClass('plus')) {
                                    var x = Number($this.val()) + 1
                                    if (x <= max) d += 1
                                }
                                $this.attr('value', d).val(d)
                            })
                        })
                        function update(){
                            updateTotalOneProduct()
                            updateTotal()
                        }
                        function removeCart(){
                            document.getElementById('removeAll').remove()
                            document.getElementById('total').innerHTML='0'
                            $.ajax({
                                url:'/removeCart',
                                type:'DELETE',
                            })
                            document.getElementById('cartHeader').innerText=0
                        }
                        
                    
                    
                    </script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
		<%@include file="/WEB-INF/common/client/footer.jsp" %>
   		<%@include file="/WEB-INF/common/client/plugin.jsp" %>
    </body>
</html>