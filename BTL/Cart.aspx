<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BTL.Cart1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
 const { values } = require("./Assets/Icon/js/v4-shims");

        function showinfo() {
            var txtTen = document.getElementById("txtTen");
            var txtSdt = document.getElementById("txtSdt");
             var txtDc = document.getElementById("txtDc");
         if (txtDc.value == "" || txtSdt.value == "" || txtTen.value == "") { 
                alert("Vui lòng nhập đủ thông tin!");
            }
            else
            {
                window.location.href = "Cart.aspx?ten=" + txtTen.value + "&sdt=" + txtSdt.value + "&dc=" + txtDc.value;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:GridView ID="gv1" runat="server" /> 
            <br />
           <p>Tổng tiền: </p> <span id="txtTongtien" runat="server"></span>  
            <br />
            <label>Nhập tên khách hàng: </label><input type="text" id="txtTen"/>
            <br />
            <br />
            <label>Số điện thoại: </label><input type="text" id="txtSdt"/>
            <br />
            <br />
            <label>Địa chỉ: </label><input type="text" id="txtDc"/>
            <br />
            <br />
            <input type="button" value="Xác nhận" onclick="showinfo()"/>
           
            <h1>THÔNG TIN KHÁCH HÀNG</h1>
            <p id="tenS" runat="server"></p>
            <p id="sdtS" runat="server"></p>
            <p id="dcS" runat="server"></p>
        </div>
    </form>
</body>
</html>
