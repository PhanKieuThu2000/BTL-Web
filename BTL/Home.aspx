<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Home.css" type="text/css" rel="stylesheet" runat="server"/>
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet"/>
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
        function viewLikedItems(obj) {
            window.location.href = "Detail.aspx?id=" + obj.parentElement.id.replace('liked', '');
        }
        function viewbuyItems(obj) {
            window.location.href = "Detail.aspx?id=" + obj.parentElement.id.replace('buy', '');
        }
        function likeClick() {
            var like = document.getElementById("heart-home");
            if (like.style.display == "none") {
                like.style.display = "block";
            }
            else {
                like.style.display = "none";
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
        
        function delLikedItems(obj) {
            //var idLiked = obj.id.replace('ClearLiked','');
            //window.location.href = "Home.aspx?idLiked=" + idLiked + "&stt=0";
        }
        function ht(obj) {
            var x = document.getElementById(obj.id);
            x.innerHTML = "<i class='fas fa-heart' aria-hidden='true' style='color:hotpink;'></i>";
            var idLiked = x.parentElement.parentElement.id;
            window.location.href = "Home.aspx?idLiked=" + idLiked + "&stt=1";
        }
        function showDetail(obj) {
            window.location.href = "Detail.aspx?id=" + obj.parentNode.id;
        }
        function search() {
            var keyword = document.getElementById('txtSearch').value;
            window.location.href = "Search.aspx?keyword=" + keyword;
        }
        function filter() {
            var filter = document.getElementById('filter').selectedIndex;
            window.location.href = "Home.aspx?filter=" + filter;
        }
        function delItems(obj) {
            
            window.location.href = "Home.aspx?clear=" + obj.id.replace("Clear", "");
            
        }
       <%-- function signout() { 
           alert("Đăng xuất thành công")
            window.location.href = "Account.aspx?so=1";
        }--%>
    </script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
    
    <script>
        
    </script>
    <style>

    </style>
</head>
<body onload="myFunction()">
    <div class="headerMid">
        <div class="headerMid-logo" id="logo">
            <img src="Assets/Images/logoweb2.png"/>
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
                <li class="headerMid-menu-left_list_items">
                    Tin tức
                </li>
                <li class="headerMid-menu-left_list_items">
                    Giới thiệu
                </li>
                
            </ul>
        </div>
        <div class="headerMid-menu-right">
            <div class="search_box">
                <div class="search_form">
                    <input type="text"
                    class="input_search" name="" id="txtSearch" placeholder="Search..."/>
                  <button class="btn_search" onclick="search()"><i class="fas fa-search"></i></button>
                </div>           
            </div>
            <div class="list-icon">
                <i class="far fa-heart" onclick="likeClick();" aria-hidden="true"></i>
                <div class="heart" id="heart-home">
                    <h5>Sản phẩm đã thích</h5>
                    <div id="heartlistItems" runat="server">
                        
                    </div>
                    
                </div>
                <i class="far fa-user" onclick="AccountClick()"></i>
                <div id="accounts" class="accounts">
                   <div id ="f1" runat="server">
                        <a id="tt-login" href="Account.aspx?method=0">Đăng nhập</a>
                        <br />
                        <a id="tt-signup" href="Account.aspx?method=1">Đăng kí</a>
                   </div>
                    <div id ="f2" runat="server">
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
            <div class="banner">
                <img class="banner-img1" src="Assets/Images/banner11.png"/>
                <div class="content-banner">
                    <span id="tt1">Chào hè cùng T-store</span>
                    <br/>
                    <br/>
                    <br/>
                    <span id="tt2">GIẢM GIÁ KỊCH SÀN</span>
                    <br/>
                    <span id="tt3">HÀNG NGÀN QUÀ TẶNG</span>
                    <br/>
                    <input type="button" value="MUA NGAY!" id="btnShopNow"/>
                </div>
                <img class="banner-img2" src="Assets/Images/banner2.png"/>       
            </div>
            <div class="service">
               <div class="itemservice">
                   <i class="fas fa-shipping-fast"></i>
                   <div class="itemservice-content">
                       Giao hàng tốc độ
                       <div class="itemservice-content_child">Thời gian giao hàng chỉ trong 1 ngày</div>
                    </div>
               </div>
               <div class="itemservice">
                <i class="fas fa-money-bill-alt    "></i>
                <div class="itemservice-content">
                    Thanh toán an toàn
                    <div class="itemservice-content_child">Hỗ trợ thanh toán trên nhiều nền tảng</div>
                 </div>
               </div>
               <div class="itemservice">
                <i class="fab fa-servicestack"></i>
                <div class="itemservice-content">
                    Dịch vụ chất lượng
                    <div class="itemservice-content_child">Giao dịch dễ dàng với dịch vụ tốt nhất</div>
                 </div>
               </div>
            </div>
            <div class="menu-image">
                <div class="menu-image-left">
                   <p><i>SALE OFF UPTO 50%!</i></p>
                   <input type="button" value="Xem chi tiết!" id="btnWatchNow"/>
                </div>
                <div class="menu-image-right">
                        <div class="menu-image-right-0">
                            THỜI TRANG NỮ
                        </div>
                        <div class="menu-image-right-1">
                            THỜI TRANG NAM
                        </div>
                </div>
            </div>
            <div class="product-container1">
                 <h1><i>Siêu giảm giá!</i></h1>
                <hr />
                <div id="product1" class="product-container1-list" runat="server">
                </div>
                <input type="button" value="Xem Thêm" id="btnShowMore1" runat="server"/>
            </div>
            <div class="product-container2">
                 <h1>Hàng mới về</h1>
                <hr />
                   <%-- <span style="margin-left:30px;">Bộ lọc: </span>
                    <span>
                <select id="filter" onchange="filter()" runat="server">
                    <option>Tất cả</option>
                    <option>Giá tăng dần</option>
                    <option>Giá giảm dần</option>
                </select>
                    </span>--%>
                <div id="product2" class="product-container1-list" runat="server">
                </div>
                <input type="button" value="Xem Thêm" id="btnShowMore2"/>
            </div
            <div class="product-container3">
                 <h1>Top bán chạy</h1>
                <hr />
                <div class="product3">
                     <div class="collumn" >
                         <h3><u>Thời trang nữ</u></h3>
                            <div class="listtop" id="listtopwm" runat="server">
                            
                            </div>
                     </div>
                    <div class="collumn" >
                        <h3><u>Thời trang nam</u></h3>
                        <div class="listtop" id="listtopm" runat="server">
                            
                        </div>
                    </div>
                    <div class="collumn ">
                        <h3><u>Phụ Kiện</u></h3>
                            <div class="listtop" id="listtops" runat="server">
                            
                            </div>
                    </div>
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
                <p><b>T-Store</b> tự hào là thương hiệu góp phần thay đổi diện mạo thời trang Việt Nam trên chặng đường hoà mình cùng dòng chảy thời trang thế giới. Những thiết kế từ <b>T-Store</b> luôn đơn giản nhưng tinh tế, kết hợp giữa sự thanh lịch của thời trang Pháp và nét đẹp truyền thống của người Á Đông.
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
                <br />Email: linhlee88999@gmail.com
                 <p id="p3">Đăng kí nhận tin</p>
                <input id="txtEmails" type="text" placeholder="Email của bạn" />
                <button id="btnDks">Đăng kí</button>
            </div>
        </div>
    </div>
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>
    <div class="dialog" id="dialog">
        <div class="dialog-head">
           <h3>Chọn size:</h3>
           <div class="container-btn-size">
                            <input type="radio" id="sizeS" name="radioSize" value="S" checked="checked"/>
                            <label for="sizeS">S</label>
                            <input type="radio" id="sizeM" name="radioSize" value="M" />
                            <label for="sizeM">M</label>
                            <input type="radio" id="sizeL" name="radioSize" value="L"/>
                            <label for="sizeL">L</label>
                            <input type="radio" id="sizeX" name="radioSize" value="X"/>
                            <label for="sizeX">X</label>
                            <input type="radio" id="sizeXL" name="radioSize" value="XL"/>
                            <label for="sizeXL">XL</label>
               </div>
            <h3>Chọn màu:</h3>
           <div class="container-btn-color">
                            <input type="radio" id="color1" name="radioColor" value="Màu Xám" checked="checked"/>
                            <label for="color1"></label>
                            <input type="radio" id="color2" name="radioColor" value="Màu Sữa" />
                            <label for="color2"></label>
                            <input type="radio" id="color3" name="radioColor" value="Màu Xanh" />
                            <label for="color3"></label>
                            <input type="radio" id="color4" name="radioColor" value="Màu Đen" />
                            <label for="color4"></label>
                           
            </div>
        </div>
        <div class="dialog-btn">
            <button class="btnATW">Thêm vào yêu thích</button>  <button class="btnATC" onclick="addToCart()">Thêm vào giỏ</button>
        </div>
        <button class="close-dialog" onclick="closeDialog()"><i class="fas fa-times"></i></button>
    </div>
</body>
</html>
