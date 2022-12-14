 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
    <main>

        <section class="container stylization maincont">


            <ul class="b-crumbs">
                <li>
                    <a href="home">
                        Trang chủ
                    </a>
                </li>
                <li>
                    <a href="login">
                        <span>Đăng nhập</span>
                    </a>
                </li>
            </ul>
            <h1 class="main-ttl"><span>Đăng nhập / Đăng ký</span></h1>
            <div class="main-auth">
                <div class="cont">
                    <div id="dn" class="form sign-in">
                        <h2 style="margin-top: 87px;margin-bottom: 40px;margin-left: -99px;">Đăng Nhập</h2>
                        <form action="/j_spring_security_check" method="post">
                        <label>
                            <div style="display: flex;width:400px">
                                <input name="emailDn" class="emailDn" style="margin-left: -40px;text-align: left;width: 340px;"
                                    type="text" id="emailInputDn" onkeyup="checkDn()"
                                    onkeypress="return runScript(event)" placeholder="Email" />

                                <div id="z-emailDn"></div>
                            </div>
                            <div style="display: flex;width:400px">
                                <input name ="passwordDn" class="passwordDn" style="margin-left: -40px;text-align: left;width: 340px;"
                                    type="password" id="passwordInputDn" onkeyup="checkDn()"
                                    onkeypress="return runScript(event)" placeholder="Mật Khẩu" />
                                <i id="showIcon" class="fa fa-eye" onclick="showPass()" aria-hidden="false"
                                    style="display: none;cursor: pointer;font-size: 20px;background-color: rgb(255, 255, 255);color: rgb(65, 65, 65);position: absolute;z-index: 100;top:277px;right: 163px;z-index: 0;"></i>
                                <i id="uShowIcon" class="fa fa-eye-slash" onclick="uShowPass()" aria-hidden="false"
                                    style="display: none;cursor: pointer;font-size: 20px;background-color: rgb(255, 255, 255);color: rgb(65, 65, 65);position: absolute;z-index: 100;top:277px;right: 163px;z-index: 0;"></i>
                                <div id="z-passwordDn"></div>
                            </div>
                        </label>
                        <label>
                            <p id="perr">Tài khoản hoặc mật khẩu không đúng!</p>
                        </label>
                        <div class="forgot-pass">
                            <div class="container1">
                                <a onclick="forgotPass()" style="cursor: pointer;">Quên mật khẩu</a>
                            </div>
                        </div>

                        <button id="buttonDn" type="submit">Đăng nhập</button>
                        </form>
                        <div style="display: flex;margin-left: 121px;">
                            <div class="divOr1"></div>
                            <span class="divOr2">Hoặc</span>
                            <di class="divOr1">
                        </div>
                        <div style="margin-left: 178px;margin-top: 20px;">
                            <a href="https://wwww.facebook.com" target="_blank" class="px-2">
                                <img class="imgfbgg"
                                    src="https://www.dpreview.com/files/p/articles/4698742202/facebook.jpeg" alt="">
                            </a>
                            <a href="https://www.google.com" target="_blank" class="px-2">
                                <img class="imgfbgg"
                                    src="https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"
                                    alt="">
                            </a>
                            <a href="https://zalo.me/pc" target="_blank" class="px-2">
                                <img class="imgzalo"
                                    src="https://play-lh.googleusercontent.com/rFIOt4fDSCgJh_FkHU2qP8YiZUUhfVoKoNfQFbPEM-Wl8zuyuwn7vzkEx_XMh5B6FfO3"
                                    alt="">
                            </a>
                        </div>

                    </div>
                    <div id="enterEmail" class="forGotPassword">
                        <a style="position: absolute;right: 49px;top: 33px;cursor: pointer;" onclick="cancelEnter()"><i style="color: #313131;font-size:36px;" class="fa fa-times-circle"></i></a>
                        <h2 style="margin-top: 176px;margin-bottom: 40px;margin-left: -55px;">Nhập Email của bạn</h2>

                        <label>
                            <div style="display: flex;width:400px">
                                <input onkeypress="return runScriptEnterFg(event)" style="margin-left: -54px;text-align: left;width: 340px;" type="text"
                                    id="emailInputFg" placeholder="Email" />
                            </div>
                            <div id="errdivDkFg"></div>
                        </label>
                        <p id="perrFg1">Email này chưa được đăng kí</p>
                        <div id="errdivFg"></div>
                        <button style="margin-left: 138px;width: 341px;" onclick="enterMail()" type="button"
                            class="submit">Tiếp theo</button>
                        <div style="margin-top: -52px;display: none;height: 22px;" id="loadFg">
                            <div class="right-wrapper">
                                <div class="spinnerIconWrapper">
                                    <div class="spinnerIcon"></div>
                                </div>
                                <div class="finished-text"></div>
                            </div>
                        </div>
                    </div>
                    <div id="sendMailDn" class="forGotPassword">
                        <h2 style="margin-top: 148px;margin-bottom: 67px;margin-left: 21px;">Xác Thực Email của
                            Bạn</h2>
                        <label>
                            <span style="margin-left: 39px;">Mã xác thực</span>
                            <div style="width:350px;margin-bottom: 10px;">
                                <input style="width:300px" onkeypress="return runScriptSendFg(event)" type="text" id="otpFg" />
                                <div id="errdivAuthFg"></div>
                            </div>
                            <a onclick="sendAgainFg()"
                                style="text-decoration: none;margin-left: 38px;margin-top: 10px;cursor: pointer;">Gửi
                                Lại

                            </a>
                            <p style="margin-left: 38px;color: #a09c9c;font-style: italic;">(Vui lòng kiểm tra
                                mã trong email của bạn. Mã này gồm 6 số.)</p>
                        </label>
                        <div>
                            <button style="margin: 34px 207px 0;" onclick="authDnClick()" type="button"
                                class="submit">Xác Thực</button>
                            <button style="margin-top: 10px;margin: 10px 207px 0" onclick="cancelAuthClickFg()"
                                type="button" class="submit">Hủy Bỏ</button>
                        </div>
                    </div>
                    <div id="createPassFg" class="forGotPassword">
                        <h2 style="margin-top: 148px;margin-bottom: 67px;margin-left: -1px;">Tạo mật khẩu</h2>
                        <label>
                            <span>Mật Khẩu</span>
                            <div style="display: flex;width:400px">
                                <input onkeypress="return runScriptCreateFg(event)" style="width:265px;margin-left: -40px;text-align: center;width: 340px;"
                                    type="password" id="passwordCreateFg" onkeyup="checkCreateFg()" />
                                <div id="z-passwordCrFg"></div>
                            </div>
                        </label>
                        <label>
                            <span>Nhập lại mật khẩu</span>
                            <div style="display: flex;width:400px">
                                <input onkeypress="return runScriptCreateFg(event)" style="width:265px;margin-left: -40px;text-align: center;width: 340px;"
                                    type="password" id="passwordCreateAFg" onkeyup="checkCreateFg()" />
                                <div id="z-passwordCrAFg"></div>
                            </div>
                            <div id="errdivCreateFg" style="margin-left: 6px;"></div>
                        </label>
                        <div>
                            <button style="margin: 34px 195px 0;" onclick="createFg()" type="button" class="submit">Xác
                                Thực</button>
                            <button style="margin-top: 10px;margin: 10px 195px 0" onclick="cancelCreateClickFg()"
                                type="button" class="submit">Hủy Bỏ</button>
                        </div>

                        <!-- <button type="button" class="fb-btn">Join with <span>facebook</span></button> -->
                    </div>
                    <div class="sub-cont">
                        <div class="img">
                            <div class="img__text m--up">
                                <h2>Chào mừng</h2>
                                <p>Bạn đã có tài khoản rồi? Hãy cần đăng nhập, thư giãn và thoải mái mua sắm ở cửa Hàng
                                    chúng tôi</p>
                            </div>
                            <div class="img__text m--in">
                                <h2>Chào mừng</h2>
                                <p>Nếu bạn chưa có tài khoản, hãy đăng kí ngay để có những trải nghiệm tốt nhất</p>
                            </div>
                            <div class="cl img__btn">
                                <span class="m--up">Đăng kí</span>
                                <span class="m--in">Đăng nhập</span>
                            </div>
                        </div>
                        <div style='position: relative'>
                            <div id="dkid" class="dk form sign-up">
                                <h2 style="margin-top: 86px;margin-bottom: 40px;margin-left: -75px;">Tạo Tài Khoản</h2>
                                <label>
                                    <div style="display: flex;width:400px">
                                        <input onkeypress="return runScriptDk(event)" style="margin-left: -40px;text-align: left;width: 340px;" type="text"
                                            id="emailInputDk" placeholder="Email" />
                                    </div>
                                    <div id="errdivDk"></div>
                                </label>
                                <button style="margin-left: 120px;width: 341px;" onclick="dangKi()" type="button"
                                    class="submit">Đăng kí</button>
                                <div style="margin-top: -52px;display: none;height: 22px;" id="load">
                                    <div class="right-wrapper">
                                        <div class="spinnerIconWrapper">
                                            <div class="spinnerIcon"></div>
                                        </div>
                                        <div class="finished-text"></div>
                                    </div>
                                </div>
                                <div style="display: flex;margin-left: 121px;">
                                    <div class="divOr1"></div>
                                    <span class="divOr2">Hoặc</span>
                                    <di class="divOr1">
                                </div>
                                <div style="margin-left: 178px;margin-top: 20px;">
                                    <a href="https://wwww.facebook.com" target="_blank" class="px-2">
                                        <img class="imgfbgg"
                                            src="https://www.dpreview.com/files/p/articles/4698742202/facebook.jpeg"
                                            alt="">
                                    </a>
                                    <a href="https://www.google.com" target="_blank" class="px-2">
                                        <img class="imgfbgg"
                                            src="https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png"
                                            alt="">
                                    </a>
                                    <a href="https://zalo.me/pc" target="_blank" class="px-2">
                                        <img class="imgzalo"
                                            src="https://play-lh.googleusercontent.com/rFIOt4fDSCgJh_FkHU2qP8YiZUUhfVoKoNfQFbPEM-Wl8zuyuwn7vzkEx_XMh5B6FfO3"
                                            alt="">
                                    </a>
                                </div>
                                <div style="display: flex;margin-left: 121px;">
                                    <span class="haveAccount">Bạn đã có tài khoản <a style="cursor: pointer;"
                                            onclick="dn()">Đăng Nhập</a></span>
                                </div>
                                <div style="display: flex;margin-left: 121px;">
                                    <span class="haveAccount">Cảm ơn các bạn đã chọn website của chúng tôi, Hãy Đăng kí
                                        tài khoản để có trải nghiệm tốt nhât</span>
                                </div>
                            </div>
                            <div id="auth" class="authentication">
                                <h2 style="margin-top: 148px;margin-bottom: 67px;margin-left: 21px;">Xác Thực Email của
                                    Bạn</h2>
                                <label>
                                    <span style="margin-left: 39px;">Mã xác thực</span>
                                    <div style="width:350px;margin-bottom: 10px;">
                                        <input onkeypress="return runScriptOTPDk(event)" style="width:300px" type="text" id="authTick" />
                                        <div id="errdivAuth" style="margin-left: -43px;"></div>
                                    </div>
                                    <a onclick="sendAgain()" style="cursor:pointer;text-decoration: none;margin-left: 38px;margin-top: 10px;">Gửi Lại 
                                    </a>
                                    <p style="margin-left: 38px;color: #a09c9c;font-style: italic;">(Vui lòng kiểm tra
                                        mã trong email của bạn. Mã này gồm 6 số. Sau 60s sẽ hết hiệu lực vui lòng gửi lại)</p>
                                </label>
                                <div>
                                    <button style="margin: 34px 207px 0;" onclick="authenticationClick()" type="button"
                                        class="submit">Xác Thực</button>
                                    <button style="margin-top: 10px;margin: 10px 207px 0" onclick="cancelAuthClick()"
                                        type="button" class="submit">Hủy Bỏ</button>
                                </div>

                                <!-- <button type="button" class="fb-btn">Join with <span>facebook</span></button> -->
                            </div>
                            <div id="createPass" class="authentication">
                                <h2 style="margin-top: 148px;margin-bottom: 67px;margin-left: -1px;">Tạo mật khẩu</h2>
                                <label>
                                    <span>Mật Khẩu</span>
                                    <div style="display: flex;width:400px">
                                        <input onkeypress="return runScriptCreateDk(event)" style="width:265px;margin-left: -40px;text-align: center;width: 340px;"
                                            type="password" id="passwordCreate" onkeyup="checkCreate()" />
                                        <div id="z-passwordCr"></div>
                                    </div>
                                </label>
                                <label>
                                    <span>Nhập lại mật khẩu</span>
                                    <div style="display: flex;width:400px">
                                        <input onkeypress="return runScriptCreateDk(event)" style="width:265px;margin-left: -40px;text-align: center;width: 340px;"
                                            type="password" id="passwordCreateA" onkeyup="checkCreate()" />
                                        <div id="z-passwordCrA"></div>
                                    </div>
                                    <div id="errdivCreate"></div>
                                </label>
                                <div>
                                    <button style="margin: 34px 191px 0;" onclick="create()" type="button"
                                        class="submit">Xác Thực</button>
                                    <button style="margin-top: 10px;margin: 10px 191px 0" onclick="cancelCreateClick()"
                                        type="button" class="submit">Hủy Bỏ</button>
                                </div>

                                <!-- <button type="button" class="fb-btn">Join with <span>facebook</span></button> -->
                            </div>

                            <div id="update" class="authentication">
                                <h2 style="margin-top: 50px;margin-bottom: 40px;margin-left: -6px;">Cập Nhập Thông Tin
                                </h2>

                                <label>
                                    <span>Họ và Tên</span>
                                    <div style="display: flex;width:300px">
                                        <input onkeypress="return runScriptUpdateDk(event)" style="margin-left: -40px;text-align: center;width: 340px;" type="text"
                                            id="nameDk" />
                                    </div>

                                </label>
                                <label>
                                    <span>Số Điện Thoại</span>
                                    <div style="display: flex;width:300px">
                                        <input onkeypress="return runScriptUpdateDk(event)" style="margin-left: -40px;text-align: center;width: 340px;" id="phoneNumberDk"
                                            onKeyPress="return isNumberKey(event)" type="text" name="txtChar">
                                    </div>
                                </label>
                                <label>
                                    <span>Địa Chỉ</span>
                                    <div style="display: flex;width:300px">
                                        <input onkeypress="return runScriptUpdateDk(event)" style="margin-left: -40px;text-align: center;width: 340px;" type="text"
                                            id="addressDk" />
                                    </div>
                                </label>
                                <label>
                                    <span> Giới tính
                                    </span>
                                    <label>
                                        <div class="sex"
                                            style="width:300px;margin-left: -40px;text-align: left;width: 340px;">
                                            <input type="radio" value="Nữ" id="radio_2" name="sexDk" />
                                            <label id="nu" for="radio_2" class="radio"><span>Nữ</span></label>
                                            <input type="radio" value="Nam" id="radio_1" name="sexDk" />
                                            <label id="nam" for="radio_1" class="radio"><span>Nam</span></label>

                                        </div>
                                    </label>
                                </label>
                                <div class="date">
                                    <label>
                                        <span>Ngày sinh</span>
                                        <div style="display: flex;width:300px">
                                            <input onkeypress="return runScriptUpdateDk(event)" style="width:265px;margin-left: -40px;text-align: center;width: 340px;"
                                                type="date" style="cursor: pointer;" id="dateDk">
                                        </div>
                                    </label>
                                </div>
                                <div id="errdivUpdate"></div>
                                <div style="display: flex;margin: -22px 133px 0;width: 374px;">
                                    <button style="width: 156px;font-size: 15px;" onclick="updateClick()" type="button"
                                        class="submit">Cập Nhập</button>
                                    <button style="width: 156px;font-size: 15px;" onclick="cancelUpdateClick()"
                                        type="button" class="submit">Bỏ Qua</button>
                                </div>

                                <!-- <button type="button" class="fb-btn">Join with <span>facebook</span></button> -->
                            </div>
                        </div>


                    </div>

                </div>
            </div>
            </div>


            </div>
            </div>


        </section>
    </main>
    <!-- Main Content - end -->
    <script>
        function cancelAuthClick() {
            $.ajax({
                url: '/verify-email',
                type: 'POST',
                data: {
                    email: $('#emailInputDk').val(),
                    otp: 'false'
                }
            })
            
            var x = document.getElementById("dkid");
            var y = document.getElementById("auth");
            x.style.display = 'block';
            y.style.display = 'none';
        }
        function cancelCreateClickFg() {
            var x = document.getElementById("enterEmail");
            var y = document.getElementById("sendMailDn");
            var z = document.getElementById("createPassFg");
            var g = document.getElementById("dn");
            x.style.display = 'none';
            y.style.display = 'none';
            z.style.display = 'none';
            g.style.display = 'block';
        }
        function cancelAuthClickFg() {
            var x = document.getElementById("enterEmail");
            var y = document.getElementById("sendMailDn");
            var g = document.getElementById("dn");
            x.style.display = 'none';
            y.style.display = 'none';
            g.style.display = 'block';
        }
        function cancelEnter() {
            var x = document.getElementById("enterEmail");
            var g = document.getElementById("dn");
            x.style.display = 'none';
            g.style.display = 'block';
        }
        function cancelCreateClick() {
            $.ajax({
                url: '/verify-email',
                type: 'POST',
                data: {
                    email: $('#emailInputDk').val(),
                    otp: 'falseCreate'
                }
            })
            var x = document.getElementById("dkid");
            var y = document.getElementById("auth");
            var z = document.getElementById("createPass");
            x.style.display = 'block';
            y.style.display = 'none';
            z.style.display = 'none';
        }
        function cancelUpdateClick() {
            $.ajax({
                url: '/login',
                type: 'POST',
                data: {
                    email: $('#emailInputDk').val(),
                    password: $('#passwordCreate').val()
                },
                success: function (data) {
                    if (data.message != 'Sai tên đăng nhập hoặc mật khẩu') {
                        setCookie('token', data.token, 1)
                        Swal.fire(
                            '',
                            'Wellcome to Stuneed!',
                            'success'
                        ).then(function () {
                            location.replace("./home");
                        })
                    } else {
                        document.getElementById('errdivUpdate').innerHTML = '<p id="perrDk" >' + data.message + '</p>'
                    }
                }
            })
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script language='javascript'>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>

    <script>
        function sendAgainFg() {
            $.ajax({
                url: '/send-again',
                type: 'POST',
                data: {
                    email: $('#emailInputFg').val(),
                }
            })
            const Toast = Swal.mixin({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
											timer: 3000
										})
										Toast.fire({
											type: "success",
											title: 'Đã Gửi Lại Mã OTP'
										})
        }
        function sendAgain() {
            $.ajax({
                url: '/send-again',
                type: 'POST',
                data: {
                    email: $('#emailInputDk').val(),
                }
            })
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000
            })
            Toast.fire({
                type: "success",
                title: 'Đã Gửi Lại Mã OTP'
            })
        }
        function enterMail() {
            function validateEmail(email) {
                const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(email);
            }
            if (validateEmail($('#emailInputFg').val()) == false) {
                document.getElementById('perrFg1').style.display = 'none'
                document.getElementById('errdivFg').style.display = 'block'
                document.getElementById('errdivFg').innerHTML = '<p id="perrFg" >Email không hợp lệ</p>'
                return
            }
            document.getElementById('loadFg').style.display = 'block'
            $.ajax({
                url: '/send-otp-forgot',
                type: 'POST',
                data: {
                    email: $('#emailInputFg').val(),
                },
                success: function (data) {
                    if (data == 'Email chưa được đăng kí') {
                        document.getElementById('errdivFg').style.display = 'none'
                        document.getElementById('perrFg1').style.display = 'block'
                        document.getElementById('loadFg').style.display = 'none'
                    }
                    else if (data.message == 'Thành công') {
                        document.getElementById('sendMailDn').style.display = 'block'
                        document.getElementById('loadFg').style.display = 'none'
                    }
                    else {
                        document.getElementById('perrFg2').style.display = 'block'
                    }
                }
            })
        }
        function authDnClick() {
            $.ajax({
                url: '/verify-otp-forgot',
                type: 'POST',
                data: {
                    email: $('#emailInputFg').val(),
                    otp: $('#otpFg').val()
                },
                success: function (data) {
                    if (data == 'otp đúng')
                        document.getElementById('createPassFg').style.display = 'block'
                    else
                        document.getElementById('errdivAuthFg').innerHTML = '<p id="perrFg" style="margin-left:-62px">Mã xác thực không đúng</p>'
                }

            })
        }
        function cancelAuthDnClick() {

        }
        function forgotPass() {
            document.getElementById('enterEmail').style.display = 'block'
        }
        document.querySelector('.img__btn').addEventListener('click', function () {
            document.querySelector('.cont').classList.toggle('s--signup');
        });
        function createFg() {
            if ($('#passwordCreateFg').val().length < 6)
                return document.getElementById('errdivCreateFg').innerHTML = '<p id="perrDk" >Mật khẩu cần có ít nhất 6 kí tự</p>'
            if ($('#passwordCreateFg').val() == $('#passwordCreateAFg').val()) {
                $.ajax({
                    url: '/account/newPassword',
                    type: 'PUT',
                    data: {
                        email: $('#emailInputFg').val(),
                        password: $('#passwordCreateFg').val()
                    },
                    success: function (data) {
                        if (data.message == 'Thành Công') {
                            Swal.fire(
                                '',
                                'Chúc mừng bạn đã tìm lại được tài khoản',
                                'success'
                            ).then(function () {
                                location.reload();
                            })
                        }
                    }
                })
            } else
                document.getElementById('errdivCreateFg').innerHTML = '<p id="perrDk">Mật khẩu không khớp</p>'

        }
    </script>
    <script>
        function dn() {
            document.querySelector('.cont').classList.toggle('s--signup');
        }
    </script>

    

    <script>
        function dangKi() {
            function validateEmail(email) {
                const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(email);
            }
            if ($('#emailInputDk').val() == "")
                return document.getElementById('errdivDk').innerHTML = '<p id="perrDk" >Vui lòng nhập Email</p>'
            if (validateEmail($('#emailInputDk').val()) == false)
                return document.getElementById('errdivDk').innerHTML = '<p id="perrDk" >Email không hợp lệ</p>'

            document.getElementById('load').style.display = 'block'
            $.ajax({
                url: '/sendEMail',
                type: 'POST',
                data: {
                    email: $('#emailInputDk').val(),
                },
                success: function (data) {
                    if (data.message == 'Thành công') {
                        var x = document.getElementById("dkid");
                        var y = document.getElementById("auth");
                        x.style.display = 'none';
                        y.style.display = 'block';
                        document.getElementById('load').style.display = 'none'
                        setTimeout(
                            () => {
                                $.ajax({
                                    url: '/verify-email',
                                    type: 'POST',
                                    data: {
                                        email: $('#emailInputDk').val(),
                                        otp: 'false'
                                    }
                                })
                            },
                            6 * 10000
                        );
                    } else {
                        document.getElementById('errdivDk').innerHTML = '<p id="perrDk" >' + data.message + '</p>'
                        document.getElementById('load').style.display = 'none'
                    }
                }
            })

        }
        function create() {
            if ($('#passwordCreate').val().length < 6)
                return document.getElementById('errdivCreate').innerHTML = '<p id="perrDk" >Mật khẩu cần có ít nhất 6 kí tự</p>'
            if ($('#passwordCreate').val() == $('#passwordCreateA').val()) {
                $.ajax({
                    url: '/account/newPassword',
                    type: 'PUT',
                    data: {
                        email: $('#emailInputDk').val(),
                        password: $('#passwordCreate').val()
                    },
                    success: function (data) {
                        if (data.message == 'Thành Công') {
                            document.getElementById("update").style.display = 'block';
                            document.getElementById("createPass").style.display = 'none';
                        } else {
                            document.getElementById('errdivCreate').innerHTML = '<p id="perrDk" >' + data.message + '</p>'
                        }
                    }
                })
            }
            else
                document.getElementById('errdivCreate').innerHTML = '<p id="perrDk">Mật khẩu không khớp</p>'
        }
        function authenticationClick() {
            $.ajax({
                url: '/verify-email',
                type: 'POST',
                data: {
                    email: $('#emailInputDk').val(),
                    otp: $('#authTick').val()
                },
                success: function (data) {
                    if (data.message == 'Mã xác nhận đúng') {
                        document.getElementById("createPass").style.display = 'block';
                        document.getElementById("dkid").style.display = 'none';
                        document.getElementById("auth").style.display = 'none';
                    } else {
                        document.getElementById('errdivAuth').innerHTML = '<p id="perrDk" >' + data.message + ' hoặc Hết hiệu lực</p>'
                    }
                }
            })
        }
        function updateClick() {
            var check = document.getElementsByName('sexDk')
            var sexDk
            if (check[0].checked == true)
                sexDk = check[0].value
            else
                sexDk = check[1].value
            $.ajax({
                url: '/account/editProfile',
                type: 'PUT',
                data: {
                    name: $('#nameDk').val(),
                    email: $('#emailInputDk').val(),
                    date: $('#dateDk').val(),
                    address: $('#addressDk').val(),
                    phoneNumber: $('#phoneNumberDk').val(),
                    sex: sexDk,
                },
                success: function (data) {
                    if (data.message != 'Thành Công') {
                        alert(data)
                    } else {
                        $.ajax({
                            url: '/login',
                            type: 'POST',
                            data: {
                                email: $('#emailInputDk').val(),
                                password: $('#passwordCreate').val()
                            },
                            success: function (data) {
                                if (data.message != 'Sai tên đăng nhập hoặc mật khẩu') {
                                    setCookie('token', data.token, 1)
                                    Swal.fire(
                                        '',
                                        'Wellcome to Stuneed!',
                                        'success'
                                    ).then(function () {
                                        location.replace("./home");
                                    })
                                } else {
                                    document.getElementById('errdivUpdate').innerHTML = '<p id="perrDk" >' + data.message + '</p>'
                                }
                            }
                        })
                    }
                }
            })


        }
    </script>
    <script>
        function uShowPass() {
            document.getElementById("passwordInputDn").type = "password"
            document.getElementById("showIcon").style.display = 'block';
            document.getElementById("uShowIcon").style.display = 'none';
        }
        function showPass() {
            document.getElementById("passwordInputDn").type = "text"
            document.getElementById("showIcon").style.display = 'none';
            document.getElementById("uShowIcon").style.display = 'block';
        }
        function checkDn() {

            if (document.getElementById('passwordInputDn').value != '') {
                // document.getElementById('z-passwordDn').innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-xanh.png" alt="" title="ok">'
                document.getElementById("showIcon").style.display = 'block';
                document.getElementById("uShowIcon").style.display = 'none';
            }
            else {
                document.getElementById("showIcon").style.display = 'none';
                document.getElementById("uShowIcon").style.display = 'none';
                // document.getElementById('z-passwordDn').innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-do.png" alt="" title="Vui lòng nhập password!">'
            }

            function validateEmail(email) {
                const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(email);
            }
            if (document.getElementById('emailInputDn').value === '')
                document.getElementById('z-emailDn').innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-do.png" alt="" title="Vui lòng Nhập Email!">'
            else if (validateEmail(document.getElementById('emailInputDn').value) == false)
                document.getElementById('z-emailDn').innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-do.png" alt="" title="Email không hợp lệ!">'
            else
                document.getElementById('z-emailDn').innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-xanh.png" alt="" title="ok">'



        }
        function checkCreate() {
            var a = document.getElementById('passwordCreate')
            var b = document.getElementById('passwordCreateA')
            var a1 = document.getElementById('z-passwordCr')
            var b1 = document.getElementById('z-passwordCrA')
            if (a.value.length < 6)
                a1.innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-do.png" alt="" title="Password phải có ít nhất 6 kí tự">'
            else
                a1.innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-xanh.png" alt="" title="ok">'
            if (b.value != "") {
                if (a.value == b.value)
                    b1.innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-xanh.png" alt="" title="ok">'
                else
                    b1.innerHTML = '<img  style="height: 15px;width: 15px;margin:16px 0 0 15px" src="/template/client/images/tich-do.png" alt="" title="Mật khẩu không trùng khớp">'
            }

        }
        function runScript(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                dangNhap()
            }
        }
        function runScriptEnterFg(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                enterMail()
            }
        }
        function runScriptSendFg(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                authDnClick()
            }
        }
        function runScriptCreateFg(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                createFg()
            }
        }
        function runScriptDk(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                dangKi()
            }
        }
        function runScriptOTPDk(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                authenticationClick()
            }
        }
        function runScriptCreateDk(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                create()
            }
        }
        function runScriptUpdateDk(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                updateClick()
            }
        }
    </script>
    <%@include file="/WEB-INF/common/client/footer.jsp" %>
   		<%@include file="/WEB-INF/common/client/plugin.jsp" %>
    </body>
</html>