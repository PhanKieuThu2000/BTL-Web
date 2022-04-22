<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thoitrangnam.aspx.cs" Inherits="BTL.Thoitrangnam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Thoitrangnam.css" type="text/css" rel="stylesheet" runat="server"/>
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet"/>
    <style>
       
    </style>
<script language="javascript">
    function tghclick(abc) {
        var x = document.getElementById(abc.id);
        var img = x.parentNode.childNodes[0].getAttribute("src");
        var name = x.parentNode.childNodes[1].innerHTML;
        var price = x.parentNode.childNodes[2].firstChild.innerHTML;
        var listcart = document.getElementById("list-cart");
        var itemscart = listcart.children;
        if (itemscart.length > 0 && check(img)) {
            for (var i = 0; i < itemscart.length; i++) {
                if (itemscart[i].childNodes[0].firstChild.getAttribute("src") != img) {
                    continue;
                }
                else {
                    var s = itemscart[i].childNodes[2].firstChild.value;
                    s++;
                    itemscart[i].childNodes[2].firstChild.value = s;
                }
            }
        }
        else {
            listcart.innerHTML += " <div class='list-cart-items'>" +
                "<span class='tensp'><img src='" + img + "' class='anhsp-cart' /><span >" + name + "</span> </span>" +

                "<span class='giasp' name='giatien'>" + price + "</span>" +
                "<span class='sl'>" +
                "<input type='number' min='1' value='1' class='slsp'  onchange='updatetongtien()' />" +
                "<button class='xoa' onclick='xoasp(this)'>Xóa</button>" +
                "</span>" +
                "</div>";
        }



        var giohang = document.getElementById("dialog-giohang");
        giohang.style.display = "block";
        updatetongtien();
    }
    function dongx() {
        var dialog = document.getElementById("dialog-giohang");
        dialog.style.display = "none";

    }
    function xoasp(abc1) {
        var a = document.getElementById("list-cart");

        a.removeChild(abc1.parentNode.parentNode);
        updatetongtien();

    }
    function updatetongtien() {
        var b = document.getElementsByName("giatien");
        var t = 0;

        for (var i = 0; i < b.length; i++) {
            var c = b[i].innerHTML.replace(".", "");
            t += parseInt(c) * parseInt(b[i].nextSibling.firstChild.value);
        }
        var sum = document.getElementById("sum");
        sum.innerHTML = "Tổng: " + t;

    }
    function check(s) {
        var check = false;
        var listcart = document.getElementById("list-cart");
        var itemscart = listcart.children;
        for (var i = 0; i < itemscart.length; i++) {
            if (itemscart[i].childNodes[0].firstChild.getAttribute("src") == s) {
                check = true;
            }
        }
        return check;
    }
    function oke(thu) {
        
        alert("Cảm ơn bạn đã thanh toán");
        
        
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

</script>
</head>
<body>
        <div class="headerMid">
        <div class="headerMid-logo">
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
                        <button class="btn-Logup">Đăng xuất</button>
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
    
    <img src="Assets/Images/thoitrangnam.png"  class="bannerttnam"/>
        
        <div class="contents-menu">
        <div class="contents-menu-left">
            <p><b>Nam</b></p>
            <p><b>Sản phẩm mới</b></p>
            <p><b>Danh mục sản phẩm</b></p>
            <p>Áo phông</p>
             <p>Áo polo</p>
             <p>Áo nỉ chui đầu</p>
             <p>Áo len</p>
             <p>Áo sơ mi</p>
             <p>Áo khoác</p>
             <p>Quần jeams</p>
             <p>Quần kaki</p>
             <p>Quần shorts</p>
             <p>Quần vải</p>
             <p>Đồ mặc nhà</p>
             <p>Quần áo thể thao</p>
             <p>Áo mặc trong</p>
             <p>Phụ kiện</p>
            <p><b>Sản phẩm đặc biệt</b></p>
            <p>Áo khoác gió</p>
            <p>Len lông dê</p>
            <p><b>Hướng dẫn chọn size</b></p>
            </div>
            
        <div class="contents-menu-right">
            <img src="Assets/Images/bannerthoitrangnam.jpg" class="bttn"/>
            <div class="contents-menu-right-under">
                <div id="anh" runat="server">
                    
                
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
                <br />Email: kieuthu20820@gmail.com
                <br />Email: quanglong122@gamil.com
                 <p id="p3">Đăng kí nhận tin</p>
                <input id="txtEmails" type="text" placeholder="Email của bạn" />
                <button id="btnDks">Đăng kí</button>
            </div>
        </div>
    </div>
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>
    <div id="dialog-giohang">
        <div class="gh">
          <p class="g">Giỏ hàng</p>
            <button class="x" onclick="dongx()"><i class="fas fa-times"></i></button>
            
        </div>
        <hr style="clear:both;" />
        <div class="list">
            <div class="list-item">
               <span class="tensp">Sản phẩm</span>
                <span class="giasp">Giá</span>
                <span class="sl">Số lượng</span>
            </div>
            <div id="list-cart">
                </div>
            </div>
        <div class="add">
            <p id="sum">Tổng:</p>
            
        </div>
        <div class="footer-cart">
           
            <button class="dong">Đóng</button>
            <button class="thanhtoan" onclick="oke()">Thanh toán</button>
        </div>
            </div>
    

</body>
</html>
