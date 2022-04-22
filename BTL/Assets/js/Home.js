
function cartClick() {
    var cart = document.getElementById("cart-home");
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
function dialogSizeColor() {
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
function ht(obj) {
    alert(obj.id);
   /* var x = document.getElementById(obj.id);
    x.innerHTML = "<i class='fas fa-heart' aria-hidden='true'></i>";*/
}