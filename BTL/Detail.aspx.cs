using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string so = Request.QueryString["so"];
            if (so != null && int.Parse(so) == 1)
            {
                Session["account"] = "";
                Response.Redirect("Account.aspx");
            }*/
            string acc = (string)Session["account"];
            if (acc.Trim().Length > 0)
            {
                f1.Visible = false;
                accLogin.InnerHtml = acc;
            }
            else
            {
                f1.Visible = true;
                f2.Visible = false;
            }

            List<Products> s = (List<Products>)Application["products"];
            List<Cart> c = (List<Cart>)Application["cart"];
            if (c.Count != 0)
            {
                numberItems.Attributes["style"] = "display:block";
                numberItems.InnerHtml = c.Count.ToString();
                getCart(c);
                allMoney.InnerText = "Tổng tiền: " + getAllMoney(c);
            }
            else
            {
                cartlistItems.InnerText = "Trống";
                btnPay.Attributes["style"] = "display:none;";
            }
            getItem(s, Request.QueryString["id"]);
            AddCartItem(s,c);
            
        }
        public void getCart(List<Cart> s)
        {
            foreach (Cart x in s)
            {
                cartlistItems.InnerHtml += "<div class='items-cart-icon' >" +
                        "<img class='items-img-cart' src='" + x.img + "'/>" +
                        "<div class='items-content-cart'>" +
                            "<span class='items-name-cart'>" + x.name + "</span>" +
                            "<br />" +
                             "<p class='items-number-cart'>Số lượng: " + x.number + "<br />" + x.color + "<br />Size: " + x.size + "</p>" +
                        "</div>" +
                        "<div class='items-price-cart' >" +
                            "<span class='items-price-cart1'>" + x.price + "</span>" +
                            "<br /><span class='btn-clear-items-cart' onclick='delItems(this)' id='Clear" + x.id + "'>Xóa</span>" +
                        "</div>" +
                    "</div>";
            }
        }
        public string getAllMoney(List<Cart> c)
        {
            int s = 0;
            foreach (Cart x in c)
            {
                string k = x.price.Replace(".", string.Empty);
                s += int.Parse(k) * int.Parse(x.number);
            }
            return s.ToString();
        }
        public void getItem(List<Products> s, string x)
        {
            foreach(Products z in s)
            {
                if(z.id.Equals(x))
                {
                    itemNameMain.InnerHtml = z.name;
                    itemImgMain.Attributes["src"] = z.img;
                    itemPriceMain.InnerHtml = z.price;
                    itemDetailMain.InnerHtml = z.detail;
                    idItems.ID = z.id;
                    setDetailImage(z.img);
                    if(z.type=="nam")
                    {
                        itemPath.InnerText = "Trang chủ/ Thời trang nam/ " + z.name;
                    }
                    if (z.type == "nu")
                    {
                        itemPath.InnerText = "Trang chủ/ Thời trang nữ/ " + z.name;
                    }
                    if (z.type == "phukien")
                    {
                        itemPath.InnerText = "Trang chủ/ Phụ kiện/ " + z.name;
                    }
                }    
            }
        }
        public void setDetailImage(string s)
        {
            int i = 0;
            while(i<5)
            {
                imgDetail1.InnerHtml += "<img class='Img1' src='"+s+"'/>";
                i++;
            }
        }
        public void AddCartItem(List<Products> s, List<Cart> c)
        {
            string id = Request.QueryString["id"];
            string color = Request.QueryString["color"];
            string size = Request.QueryString["size"];
            if (color!=null && size != null)
            {
                foreach (Products x in s)
                {
                    if (int.Parse(x.id) == int.Parse(id))
                    {
                        c.Add(new Cart(x.id, x.img, x.name, "1", x.price, size, color));
                    }
                }
                Response.Redirect("Detail.aspx?id="+ id);
            }
        }
        public void clearItems()
        {
            string s = Request.QueryString["clear"];
            List<Cart> arr = (List<Cart>)Application["cart"];
            if (s != null)
            {
                foreach (Cart x in arr)
                {
                    if (x.id == s)
                    {
                        arr.Remove(x);
                    }
                    Response.Redirect("Detail.aspx");
                }
            }

        }
    }
}