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
                                        Trang ch???
                                    </a>
                                </li>
                                <li>
                                    <span>Gi??? H??ng</span>
                                </li>
                            </ul>
                            <h1 class="main-ttl"><span>Gi??? H??ng</span></h1>
                            <!-- Cart Items - start -->
                            <form action="#">

                                <div class="cart-items-wrap">
                                    <table class="cart-items">
                                        <thead>
                                            <tr>
                                                <td class="cart-image">H??nh ???nh</td>
                                                <td class="cart-ttl">S???n ph???m</td>
                                                <td class="cart-price">Gi??</td>
                                                <td class="cart-quantity">S??? l?????ng</td>
                                                <td class="cart-summ">T???ng ti???n</td>
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
                                                            <a style="cursor: pointer;" onclick='deleteItem(${ i },${ product.id })' id="delete${ i }" class="cart-remove"></a>
                                                        </td>
                                                    </tr>
                                                <c:set var="i" value="${ i+1 }"/>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <ul class="cart-total">

                                    <li class="cart-summ">T???ng: <p id="total" >
                                        <c:set var="sum" value="0"/>
                                        <c:forEach var="product" items="${products}">
                                        	<c:set var="sum" value="${ sum+ product.price*product.quantity}"/>
                                        </c:forEach>
                                        <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${sum}" />
                                        </p></li>
                                </ul>
                                
                                <div class="cart-submit">
                                    <a onclick="payment()" <c:if test="${ empty products }">style='pointer-events: none;cursor: default;'</c:if> class="cart-submit-btn">?????t H??ng</a>
                                    <a onclick="deleteCart()" <c:if test="${ empty products }">style='pointer-events: none;cursor: default;'</c:if> class="cart-clear">X??a gi??? h??ng</a>
                                </div>
                            </form>
                            <!-- Cart Items - end -->

                        </section>
                    </main>
                    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
                    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
                    <!-- Main Content - end -->
                    <script>
                    	function deleteItem(i,id)
                    	{
                    		$.ajax({
                                url:'/api/cart',
                                type:'DELETE',
                                contentType: "application/json; charset=utf-8",
            					data: JSON.stringify({
            						productId:id
            					}),
                                success:function(data){
                                    if(data.message=='X??a th??nh c??ng')
                                    {
                                    	document.getElementById('product'+i).remove()
                                    	update()
                                    }
                                }
                            })
                    	}
                        function payment() {
                                axios({
                                    method: 'post',
                                    url: '/api/order'
                                })
                                .then(data=>{
                                    const Toast = Swal.mixin({
                                        toast: true,
                                        position: 'top-end',
                                        showConfirmButton: false,
                                        timer: 3000
                                    })
                                        Swal.fire(
                                            '',
                                            '?????t H??ng Th??nh C??ng',
                                            'success'
                                        )
                                        deleteCart()
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
                        function deleteCart(){
                            $.ajax({
                                url:'/api/cart',
                                type:'DELETE',
                                contentType: "application/json; charset=utf-8",
                                success:function(data){
	                                if(data.message=='X??a th??nh c??ng')
	                                {
	                            		document.getElementById('removeAll').remove()
	                            		document.getElementById('total').innerHTML='0'
	                            		//document.getElementById('cartHeader').innerText=0
	                                	update()
	                                }
                            	}
                            })
                            
                        }
                        
                    
                    
                    </script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
		<%@include file="/WEB-INF/common/client/footer.jsp" %>
   		<%@include file="/WEB-INF/common/client/plugin.jsp" %>
    </body>
</html>