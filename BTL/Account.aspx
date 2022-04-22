<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="BTL.Account" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Account.css" type="text/css" rel="stylesheet" runat="server" />
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script language="javascript">

        function cartClick() {
            var cart = document.getElementById("cart-home");
            if (cart.style.display == "none") {
                cart.style.display = "block";
            }
            else {
                cart.style.display = "none";
            }
        }
        function AccountClick() {
            var cart = document.getElementById("accounts");
            if (cart.style.display == "none") {
                cart.style.display = "block";
            }
            else {
                cart.style.display = "none";
            }
        }
        function myFunction() {
            var s = window.location.href;
            var list = document.getElementById("cartlistItems");
            if (s.includes("#")) {
                Swal.fire({
                    width: '30%',
                    position: 'top-end',
                    icon: 'success',
                    title: list.lastChild.innerHTML,
                    showCancelButton: true,
                    showConfirmButton: true,
                    confirmButtonText:
                        '<i class="fa fa-thumbs-up"></i> <a href="Cart.aspx" style="text-decoration:none; color:white;">Xem giỏ hàng!</a>',
                    cancelButtonText:
                        'Tiếp tục mua hàng',
                })
            }
        }
        function SizeColor(obj) {
            var dialog = document.getElementById("dialog");
            dialog.style.display = "block";
            dialog.className = obj.id;
        }
        function addToCart() {
            var dialog = document.getElementById("dialog");
            var id = dialog.className.replace("btnAddToCartx", "");
            var color = document.querySelector('input[name=radioColor]:checked').value;
            var size = document.querySelector('input[name=radioSize]:checked').value;
            window.location.href = "Home.aspx?id=" + id + "&color=" + color + "&size=" + size;
        }
        function closeDialog() {
            var dialog = document.getElementById("dialog");
            dialog.style.display = "none";
        }
        function ht(obj) {
            var x = document.getElementById(obj.id);
            x.innerHTML = "<i class='fas fa-heart' aria-hidden='true' style='color:hotpink;'></i>";
        }
        function showDetail(obj) {
            window.location.href = "Detail.aspx?id=" + obj.parentNode.id;
        }
        function delItems(obj) {
            window.location.href = "Home.aspx?clear=" + obj.id.replace("Clear", "");
        }

        function signin() {

            check();
        }
        function check() {
            //var email = document.getElementById("txtLoginEmail");
            var pass = document.getElementById("txtLoginPass");

            var phone = document.getElementById("txtLoginPhone")

            var sdt = document.getElementById("txtSignUpPhone")
            if (phone.value.length  >= 11 && pass.value.length <= 6) {
               alert("Vui lòng nhập đúng định dạng tài khoản, mật khẩu. \n(Số điện thoại, Mật khẩu lớn hơn 8 kí tự)");               
            }
          else {
                //alert("đăng nhập thành công");
                //window.location.href = "Account.aspx?email=" + sdt.value + "&password=" + pass.value;
                window.location.href = "Account.aspx?&phone=" + phone.value + "&password=" + pass.value;

            }
        //    if (email.value.length <= 11 && pass.value.length <= 6) {
        //        document.getElementById('error_b').innerHTML = 'Tài khoản hoặc mật khẩu không đúng định dạng';
        //        status = false;
        //    }
        //    else {
        //        window.location.href = "Account.aspx?email=" + email.value + "&password=" + pass.value;
        //        document.getElementById('error_b').innerHTML = "";
        //    }

        }

        function validateEmail(email) {
            var re = /\S+@\S+\.\S+/;
            return re.test(email);
        }
        function validatePhone(phone) {
            var re = /((09|03|07|08|05)+([0-9]{8})\b)/g;
            return re.test(phone);
        }
        function signup() {
            var email = document.getElementById("txtSignUpEmail");
            var pass = document.getElementById("txtSignUpPass");
            var firstname = document.getElementById("txtSignUpFN");
            var lastname = document.getElementById("txtSignUpLN");
            var phone = document.getElementById("txtSignUpPhone")
            //if (!validateEmail(email.value) && pass.value.length <= 6 && validatePhone(phone.value) <= 8 ){
            //    alert("Vui lòng nhập đúng định dạng tài khoản, mật khẩu. \n(Tài khoản email, Mật khẩu lớn hơn 8 kí tự)");
            //    validateEmail(email.value)
            //}
            //if (validatePhone(phone.value) <= 8) {
            //    alert("Vui lòng nhập đúng định dạng tài khoản, mật khẩu. \n(Tài khoản email, Mật khẩu lớn hơn 8 kí tự)");
            //    //validateEmail(email.value)
            //}
            //else {
            //    alert("Đăng kí thành công");
            //     window.location.href = "Account.aspx?emailSu=" + email.value + "&passwordSu=" + pass.value + "&fnSu=" + firstname.value + "&lnSu=" + lastname.value + "&phoneSu=" +phone.value;
                
            //}
            // cách ra


            //if (email.value.length <= 11 /*&& pass.value.length <= 6 &&*/ /*phone.value.length <= 8*/) {
            //    document.getElementById('error1').innerHTML = 'Tài khoản hoặc mật khẩu không đúng định dạng';
            //   /* document.getElementById('error2').innerHTML = 'Tài khoản hoặc mật khẩu không đúng định dạng';*/
            //    status = false;
            //if (firstname.value === "") {
            //    document.getElementById('error').innerHTML = 'Chưa nhập họ';
            //    /*status = false;*/
            //    /*return false;*/

            //}
            //if (lastname.value === "") {
            //    document.getElementById('error1').innerHTML = 'Chưa nhập tên';
            //   /* return false;*/
            //}
            //else {
                window.location.href = "Account.aspx?emailSu=" + email.value + "&passwordSu=" + pass.value + "&fnSu=" + firstname.value + "&lnSu=" + lastname.value + "&phoneSu=" + phone.value;
                document.getElementById('error_c').innerHTML = "";
            //}

        }
        function signout() {
            window.location.href = "Account.aspx?so=1";
        }
    </script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css' />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>

    <script>

</script>
    <style>
    </style>
</head>
<body onload="myFunction()">
    <div class="headerMid">
        <div class="headerMid-logo" id="logo">
            <img src="Assets/Images/logoweb2.png" />
        </div>
        <div class="headerMid-menu-left">
            <ul class="headerMid-menu-left_list">
                <li class="headerMid-menu-left_list_items">
                    <a href="Home.aspx">Trang chủ</a>
                </li>
                <li class="headerMid-menu-left_list_items">
                    <a href="Thoitrangnam.aspx">Thời trang nam</a>
                </li>
                <li class="headerMid-menu-left_list_items">
                    <a href="Thoitrangnu.aspx">Thời trang nữ</a>
                </li>
                <li class="headerMid-menu-left_list_items">
                    <a href="Phukien.aspx">Phụ kiện</a>
                </li>
                <li class="headerMid-menu-left_list_items">Tin tức
                </li>
                <li class="headerMid-menu-left_list_items">Giới thiệu
                </li>

            </ul>


        </div>
        <div class="headerMid-menu-right">
            <div class="search_box">
                <div class="search_form">
                    <input type="text"
                        class="input_search" name="" id="" placeholder="Search..." />
                    <button class="btn_search"><i class="fas fa-search"></i></button>
                </div>
            </div>
            <div class="list-icon">
                <i class="far fa-heart" aria-hidden="true"></i>
                <i class="far fa-user" onclick="AccountClick()"></i>
                <div id="accounts" class="accounts">
                    <div id="f1" runat="server">
                        <a id="tt-login" href="Account.aspx?method=1">Đăng nhập</a>
                        <br />
                        <a id="tt-signup" href="Account.aspx?method=1">Đăng kí</a>
                    </div>
                    <div id="f2" runat="server">
                        Tài khoản: <a id="accLogin" href="Account.aspx?method=0" runat="server">abc</a>
                        <br />
                        <button class="btn-Logup" onclick="signout()">Đăng xuất</button>
                    </div>
                </div>
                <i class="fas fa-shopping-bag" onclick="cartClick();"></i>
                <p id="numberItems" class="number-items" runat="server"></p>
                <div class="cart" id="cart-home">
                    <h5>Sản phẩm đã chọn</h5>
                    <div id="cartlistItems" runat="server">
                    </div>
                    <div class="cart-container-button" id="cartIconButton" runat="server">
                        <div id="allMoney" runat="server"></div>
                        <button id="btnPay" onclick="document.location.href='Cart.aspx';" runat="server">Thanh Toán</button>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="content">
        <h2 id="itemPath" runat="server">Trang chủ/Tài khoản</h2>
        <div class="form">
            <div class="form-login">
                <h2 class="form-tt">Đăng Nhập</h2>
                <p class="form-child-tt">Nếu bạn đã có tài khoản, hãy đăng nhập để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn!</p>
<%--                <label for="txtLoginUser" class="form-label">Email:</label>
                <br />
                <input type="text" id="txtLoginEmail" placeholder="Email" class="form-input" />--%>
                <label for="txtLoginUser" class="form-label">Phone:</label>
                <br />
                <input type="text" id="txtLoginPhone" placeholder="Phone" class="form-input" />
                <br />
                <br />
                <label for="txtLoginPass" class="form-label">Mật khẩu:</label>
                <br />
                <input type="text" id="txtLoginPass" placeholder="Mật khẩu" class="form-input" />
                <br />
                <p id="error_b" style="color:red"></p>
                <a class="form-link" href="#">Quên mật khẩu?</a>
                <br />
                <button class="form-btn" onclick="signin()">ĐĂNG NHẬP</button>
            </div>
            <div class="form-signup">
                <h2 class="form-tt">Đăng Ký</h2>
                <p class="form-child-tt">Hãy đăng ký ngay để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn từ chúng tôi!</p>
                <label for="txtSignUpFN" class="form-label">Họ:</label>
                
                <br />
                <input type="text" id="txtSignUpFN" placeholder="Họ" class="form-input" />
                <span id="error" style="color:red;"> </span>
                <br />
                <br />
                <label for="txtSignUpLN" class="form-label">Tên:</label>
                <br />
                <input type="text" id="txtSignUpLN" placeholder="Tên" class="form-input" />
                <span id="error1" style="color:red;"></span>
                <br />
                <br />
                <label for="txtSignUpEmail" class="form-label">Email:</label>
                <br />
                <input type="text" id="txtSignUpEmail" placeholder="Email" class="form-input" />
                <span id="error2" style="color:red;"> </span>
                <br />
                 <br />
                    <label for="txtSignUpPhone" class="form-label">Số điện thoại:</label>
                   <br />
                
                   <input type="number" min="0" step="1" id="txtSignUpPhone" placeholder="Số điện thoại" class="form-input" />
                <span id="error100"> error</span>
                   <br />
                <br />
                <label for="txtSignUpPass" class="form-label">Mật khẩu:</label>
                <br />
                <input type="text" id="txtSignUpPass" placeholder="Mật khẩu" class="form-input" />
                <span id="error3" style="color:red;"> </span>
                <br />
               <%-- <p id="error_c" style="color:red"></p>--%>
                <label for="idSubmitNew" class="form-child-tt">
                    <input type="checkbox" id="idSubmitNew" checked="checked" />
                    Đăng kí nhận tin</label>
                <br />
                <label for="idSubmitRule" class="form-child-tt">
                    <input type="checkbox" id="idSubmitRule" checked="checked" />
                    Đồng ý với các <a href="#">Điều khoản</a> của T-Store</label>
                <br />
                <button class="form-btn" onclick="signup()">ĐĂNG KÝ</button>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="footer1">
            <div class="footer1-pay">
                Hình thức thanh toán
                <div class="footer1-pay-list">
                    <i class="fab fa-cc-mastercard"></i>
                    <i class="fab fa-cc-visa"></i>
                    <i class="fab fa-cc-paypal"></i>
                    <i class="fab fa-cc-apple-pay"></i>
                </div>
            </div>
            <div class="footer1-support">
                Loại hình giao hàng
                <div class="footer1-pay-list">
                    <i class="fab fa-cc-amex"></i>
                    <i class="fab fa-fedex"></i>
                </div>
            </div>
        </div>
        <div class="footer2">
            <div class="footer2-about">
                <h2>Giới thiệu</h2>
                <p>
                    <b>T-Store</b> tự hào là thương hiệu góp phần thay đổi diện mạo thời trang Việt Nam trên chặng đường hoà mình cùng dòng chảy thời trang thế giới. Những thiết kế từ <b>T-Store</b> luôn đơn giản nhưng tinh tế, kết hợp giữa sự thanh lịch của thời trang Pháp và nét đẹp truyền thống của người Á Đông.
                    Đầu tư công sức cho việc thiết kế sản phẩm, chú trọng tới đường nét cắt may tinh xảo, lựa chọn những chất liệu cao cấp, các nhà thiết kế từ <b>T-Store</b> luôn tin rằng, một bộ trang phục dành cho phụ nữ Việt, không chỉ cần sang trọng, quyến rũ, mà còn phải vừa vặn và phù hợp với vóc dáng cơ thể đặc trưng của phụ nữ Châu Á.
                    <b>T-Store</b> hiện vận chuyển đến hơn 220 quốc gia và khu vực trên toàn thế giới. Các trang web Hoa Kỳ, Tây Ban Nha, Pháp, Nga, Đức, Ý, Úc và Trung Đông, <b>T-Store</b> vận chuyển từ một trong nhiều kho hàng có vị trí toàn cầu. <b>T-Store</b> tiếp tục phát triển mạnh vì có nhân viên sản xuất xuất sắc và cùng giá trị của chúng tôi. <b>T-Store</b> nhằm mục đích cung cấp các sản phẩm hợp thời trang có giá trị cao nhất đồng thời được chất lượng, giá trị và dịch vụ.
                </p>
                <p>Ký tên:</p>
                <p><i>Long-Linh-Thu</i></p>
            </div>
            <div class="footer2-menu">
                <h2>Danh mục</h2>
                <p><u>Trang chủ</u></p>
                <p><u>Thời trang nam</u></p>
                <p><u>Thời trang nữ</u></p>
                <p><u>Phụ kiện</u></p>
                <p><u>Tin tức</u></p>
                <p><u>Giới thiệu</u></p>
            </div>
            <div class="footer2-contact">
                <h2>Liên hệ</h2>
                <p id="p1">Mạng xã hội</p>
                <i class="fab fa-facebook"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-skype"></i>
                <i class="fab fa-instagram"></i>
                <p id="p2">Địa chỉ</p>
                <p>CN1: 90 Định Công, Hoàng Mai, Hà Nội</p>
                <p>CN2: 151 Nguyễn Hiền, Hai Bà Trưng, Hà Nội</p>
                SĐT: 0326838898
                <br />
                Email: linhlee88999@gmail.com
                 <p id="p3">Đăng kí nhận tin</p>
                <input id="txtEmails" type="text" placeholder="Email của bạn" />
                <button id="btnDks">Đăng kí</button>
            </div>
        </div>
    </div>
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>

</body>
</html>

