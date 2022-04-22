using System;
using System.Collections.Generic;

namespace BTL
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["products"] = new List<Products>();
            List<Products> arrProduct = new List<Products>();

            List<Products> arrLiked = new List<Products>();
            Application.Add("arrLiked", arrLiked);

            //Nam
            arrProduct.Add(new Products() { id = "1", img = "Assets/Images/nam/nam1.jpg", name = "ÁO THUN NAM TRẮNG ĐƠN GIẢN", price = "99.000", oldprice="150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "nam" });
            arrProduct.Add(new Products() { id = "2", img = "Assets/Images/nam/nam2.jpg", name = "ÁO THUN NAM LONDON", price = "149.000", oldprice="200.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "nam" });
            arrProduct.Add(new Products() { id = "3", img = "Assets/Images/nam/nam3.jpg", name = "ÁO THUN NAM PHỐI CHỮ M", price = "200.000", oldprice = "300.000", detail = "Thun Cá sấu Cotton cao cấp, Dày mịn.", type = "nam" });
            arrProduct.Add(new Products() { id = "4", img = "Assets/Images/nam/nam4.jpg", name = "ÁO SƠ MI ĐŨI TAY DÀI MANGO", price = "210.000", oldprice="250.000", detail = "Vải Đũi Cotton cao cấp, Mịn mát.", type = "nam" });
            arrProduct.Add(new Products() { id = "5", img = "Assets/Images/nam/nam5.jpg", name = "ÁO SƠ MI ĐŨI NGẮN TAY MANGO", price = "169.000", oldprice="210.000", detail = "Vải Đũi Cotton cao cấp, Mịn mát", type = "nam" });
            arrProduct.Add(new Products() { id = "6", img = "Assets/Images/nam/nam6.jpg", name = "ÁO SƠ MI NAM CÔNG SỞ REPLAY", price = "300.000", oldprice="320.000", detail = "Kate Ford Cao cấp, Dày mịn Thoáng mát.", type = "nam" });
            arrProduct.Add(new Products() { id = "7", img = "Assets/Images/nam/nam7.jpg", name = "QUẦN THUN NAM", price = "100.000", oldprice="150.000", detail = "Kaki wash cao cấp Dày mịn, Thoáng mát.", type = "nam" });
            arrProduct.Add(new Products() { id = "8", img = "Assets/Images/nam/nam8.jpg", name = "QUẦN SHORT KAKI PEGASUS", price = "90.000", oldprice="120.000", detail = "Kaki wash cao cấp Dày mịn, Thoáng mát.", type = "nam" });
            arrProduct.Add(new Products() { id = "9", img = "Assets/Images/nam/nam9.jpg", name = "QUẦN JOGGER NAM ZARA MAN", price = "210.000", oldprice="250.000", detail = "Vải Bố cào cao cấp co giãn, Dày mịn", type = "nam" });

            //Nữ
            arrProduct.Add(new Products() { id = "20", img = "Assets/Images/nu/nu1.jpg", name = "ÁO KIỂU NỮ TAY PHỒNG DÀI", price = "100.000", oldprice="120.000", detail = "Chất vải mịn màng, thoáng mát", type = "nu" });
            arrProduct.Add(new Products() { id = "21", img = "Assets/Images/nu/nu2.jpg", name = "ÁO KIỂU NHÚN NGỰC NỮ", price = "160.000", oldprice="200.000", detail = "Vải ren cao cấp, mịn mát.", type = "nu" });
            arrProduct.Add(new Products() { id = "22", img = "Assets/Images/nu/nu3.jpg", name = "ÁO CROPTOP ĐƠN GIẢN CÓ KHÓA KÉO", price = "175.000", oldprice="225.000", detail = "Vải cao cấp, mềm mại", type = "nu" });
            arrProduct.Add(new Products() { id = "23", img = "Assets/Images/nu/nu4.jpg", name = "ÁO NHUNG NỮ", price = "200.000", oldprice="220.000", detail = "Vải cotton thoáng mát vào dịp hè", type = "nu" });
            arrProduct.Add(new Products() { id = "24", img = "Assets/Images/nu/nu5.jpg", name = "ĐẦM PITERPAN PHỐI MÀU XANH", price = "300.000", oldprice="400.000", detail = "Kiểu dáng nữ tính, dịu dàng", type = "nu" });
            arrProduct.Add(new Products() { id = "25", img = "Assets/Images/nu/nu6.jpg", name = "ĐẦM HOA VÀNG XẺ TÀ", price = "390.000", oldprice="450.000", detail = "Váy hoa xinh xắn, đáng yêu", type = "nu" });
            arrProduct.Add(new Products() { id = "26", img = "Assets/Images/nu/nu7.jpg", name = "SET ÁO THUN VÀ QUẦN SUÔNG", price = "210.000", oldprice="300.000", detail = "Thun cá sấu cao cấp, thoải mái", type = "nu" });
            arrProduct.Add(new Products() { id = "27", img = "Assets/Images/nu/nu8.jpg", name = "QUẦN JEAN NỮ", price = "140.000", oldprice="200.000", detail = "Jean wash cao cấp Dày mịn, Thoáng mát.", type = "nu" });
            arrProduct.Add(new Products() { id = "28", img = "Assets/Images/nu/nu9.jpg", name = "QUẦN ĐÙI ỐNG RỘNG KÈM DÂY CỘT NƠ", price = "90.000", oldprice="150.000", detail = "Vải Bố cào cao cấp co giãn, Dày mịn", type = "nu" });
            arrProduct.Add(new Products() { id = "29", img = "Assets/Images/nu/nu10.jpg", name = "QUẦN SHORT NỮ", price = "85.000", oldprice="120.000", detail = "Quần short nữ có thắt lưng", type = "nu" });
            arrProduct.Add(new Products() { id = "30", img = "Assets/Images/nu/nu11.jpg", name = "QUẦN LEGGING", price = "220.000", oldprice="300.000", detail = "Vải co giãn, đàn hồi tốt", type = "nu" });
            arrProduct.Add(new Products() { id = "31", img = "Assets/Images/nu/nu12.jpg", name = "QUẦN CARO NỮ", price = "210.000", oldprice="150.000", detail = "Tôn dáng, chất vải thoáng khí", type = "nu" });
            //Phụ kiện
            arrProduct.Add(new Products() { id = "40", img = "Assets/Images/phukien/phukien1.jpg", name = "TÚI XÁCH NỮ CAO CẤP", price = "650.000", oldprice="1.000.000", detail = "Kiểu dáng sang trọng, quý phái.", type = "phukien" });
            arrProduct.Add(new Products() { id = "41", img = "Assets/Images/phukien/phukien2.jpg", name = "TÚI TOLE CÔNG SỞ", price = "620.000", oldprice="800.000", detail = "Chất vải không thấm nước", type = "phukien" });
            arrProduct.Add(new Products() { id = "42", img = "Assets/Images/phukien/phukien3.jpg", name = "TÚI JUST STAR THỜI TRANG", price = "590.000", oldprice="710.000", detail = "Thời thượng, nhỏ gọn", type = "phukien" });
            arrProduct.Add(new Products() { id = "43", img = "Assets/Images/phukien/phukien4.jpg", name = "TÚI DẠ TWEET CAO CẤP", price = "460.000", oldprice="520.000", detail = "Nhỏ gọn, đáng yêu", type = "phukien" });
            arrProduct.Add(new Products() { id = "44", img = "Assets/Images/phukien/phukien5.jpg", name = "VÍ CẦM TAY NỮ HÀN QUỐC", price = "710.000", oldprice="850.000", detail = "", type = "phukien" });
            arrProduct.Add(new Products() { id = "45", img = "Assets/Images/phukien/phukien6.jpg", name = "VÍ FOR YOU", price = "490.000", oldprice="610.000", detail = "", type = "phukien" });
            arrProduct.Add(new Products() { id = "46", img = "Assets/Images/phukien/phukien7.jpg", name = "NÓN CÓI THÊU HOA", price = "70.000", oldprice="120.000", detail = "Nhỏ gọn, đáng yêu", type = "phukien" });
            arrProduct.Add(new Products() { id = "47", img = "Assets/Images/phukien/phukien8.jpg", name = "NÓN CÓI BUỘC DÂY REN", price = "80.000", oldprice="220.000", detail = "Nhỏ gọn, đáng yêu", type = "phukien" });
            arrProduct.Add(new Products() { id = "48", img = "Assets/Images/phukien/phukien9.jpg", name = "NÓN CHỤP ĐÈN", price = "75.000", oldprice="123.000", detail = "Chống nắng, tiện lợi", type = "phukien" });
            arrProduct.Add(new Products() { id = "49", img = "Assets/Images/phukien/phukien10.jpg", name = "ĐỒNG HỒ CAO CẤP TWENTYSEVEN", price = "650.000", oldprice="720.000", detail = "Sang trọng, lịch lãm", type = "phukien" });
            arrProduct.Add(new Products() { id = "50", img = "Assets/Images/phukien/phukien11.jpg", name = "ĐỒNG HỒ ĐÔNG TRIỀU", price = "500.000", oldprice="650.000", detail = "Sang trọng, lịch lãm", type = "phukien" });
            arrProduct.Add(new Products() { id = "51", img = "Assets/Images/phukien/phukien12.jpg", name = "ĐỒNG HỒ TISSOT", price = "900.000", oldprice="1.100.000", detail = "Tiện lợi, đầy cá tính", type = "phukien" });
            Application["products"] = arrProduct;

            Application["cart"] = new List<Cart>();

            List<Accounts> arrAccounts = new List<Accounts>();
            arrAccounts.Add(new Accounts() { firtName="Đỗ", lastName="Linh", email="admin1@gmail.com", phone="0131223425", password="admin1"});
            arrAccounts.Add(new Accounts() { firtName = "Kiều", lastName = "Thu", email = "admin2@gmail.com", phone = "2131242425", password = "admin2" });
            arrAccounts.Add(new Accounts() { firtName = "Nguyễn", lastName = "Long", email = "admin3@gmail.com", phone = "0923423425", password = "admin3" });
            Application.Add("Accounts", arrAccounts);
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["account"] = "";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["cart"] = new List<Cart>();
            Session["account"] = "";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}