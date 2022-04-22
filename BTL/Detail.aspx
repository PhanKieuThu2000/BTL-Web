<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BTL.Detail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Detail.css" type="text/css" rel="stylesheet" runat="server"/>
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet"/>
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
        function addToCart(obj) {
            var id = obj.id;
            var color = document.querySelector('input[name=radioColor]:checked').value;
            var size = document.querySelector('input[name=radioSize]:checked').value;
            window.location.href = "Detail.aspx?id=" + id + "&color=" + color + "&size=" + size;
        }
        function signout() {
            window.location.href = "Account.aspx?so=1";
        }
    </script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
    
    <script>
        
    </script>
    <style>

    </style>
</head>
<body>
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
                    class="input_search" name="" id=""placeholder="Search..."/>
                  <button class="btn_search" ><i class="fas fa-search"></i></button>
                </div>           
            </div>
            <div class="list-icon">
                <i class="far fa-heart" aria-hidden="true"></i>
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
   <div class="content-detail-1">
       <div class="tt-detail">
            <div class="tt-detail-l">
                   <h2 id="itemPath" runat="server"></h2>
               </div>
               <div class="tt-detail-r">
                <i class="fab fa-facebook"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-skype"></i>
                <i class="fab fa-instagram"></i>
               </div>
       </div>
       <div class="container-item-detail">
            <div class="item-detail-l">
                <div class="img-detail" id="imgDetail1" runat="server">
                      
                   </div>
                   <img id="itemImgMain" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                    
               </div>
               <div class="item-detail-r">
                     <h1 id="itemNameMain" runat="server">ÁO nam 5</h1>
                     <p id="itemPriceMain" runat="server">1.500.000</p>
                     <p id="itemDetailMain" runat="server">jkfhasjkl,a,fssssssssss,f;âfkaksfjjjjkksssssssssssssssssssssssssssssssdfjhuiashfuihiuhrihfdsinfksnfijhsadfuihiasdfnjkashfidhasidfhjahfduiahuiwhurifashdfuiahurehwjfbweaueuafbjdsabffwuEHFUAHFUAUHEWUSSS</p>
                     <div class="detail-select">
                         <div class="container-btn-detail">
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
                     </div>
                   
                   <div class="btn-detail-r">
                       <button class="btnATC"  id="idItems" runat="server" onclick="addToCart(this)">Thêm vào giỏ</button>
                       <br />
                       <button class="btnATW">Thêm vào yêu thích</button>
                   </div>
                    
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
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>
</body>
</html>
