<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="BTL.Search" %>

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
            var idLiked = obj.id.replace('ClearLiked','');
            window.location.href = "Home.aspx?idLiked=" + idLiked + "&stt=0";
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
//        function delItems(obj) {(không hiển thị tb) (Xóa sp)
        //    window.location.href = "Home.aspx?clear=" + obj.id.replace("Clear", "");
       
           <%--  confirm("Có muốn xóa sản phẩm không!");
            
            window.location.href = "Home.aspx?clear=" + obj.id.replace("Clear", "");
        }--%>
       <%-- function signout() { (đăng xuất chuyển sang trang tk)
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
                    class="input_search" name="" id="txtSearch" placeholder="Search..." />
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
           <h1 id="resultContent" runat="server">Kết quả tìm kiếm '...' </h1>
            <div id="listSearched" runat="server" class="product-container1-list" />
        </div>
</body>
</html>
