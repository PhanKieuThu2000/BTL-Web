using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Home : System.Web.UI.Page
    {
        List<Products> s = new List<Products>();
        List<Products> np = new List<Products>();
        List<Products> hsp = new List<Products>();
        List<Products> hbp1 = new List<Products>();
        List<Products> hbp2 = new List<Products>();
        List<Products> hbp3 = new List<Products>();
      

        protected void Page_Load(object sender, EventArgs e)
        {
            s = (List<Products>)Application["products"];
            string so = Request.QueryString["so"];
            if (so!=null && int.Parse(so) == 1)
            {
                Session["account"] = "";
                Response.Redirect("Account.aspx");
            }
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
            
           
            
            product1.InnerHtml = "";
            foreach (Products x in s)
            {
                int tmp = int.Parse(x.id);
                if (tmp < 45)
                {
                    if (tmp % 3 == 0)
                    { hsp.Add(x); }
                }
                if (tmp < 44)
                {
                    if (tmp % 2 == 0 && tmp % 3 != 0)
                    { np.Add(x); }
                }
                string tmp2 = x.type;
                if(tmp2.Equals("nu"))
                {
                    if (tmp % 4 == 0)
                    {
                        hbp1.Add(x);
                    }    
                }
                if (tmp2.Equals("nam"))
                {
                    if (tmp % 3 == 0)
                    {
                        hbp2.Add(x);
                    }
                }
                if (tmp2.Equals("phukien"))
                {
                    if (tmp % 4 == 0)
                    {
                        hbp3.Add(x);
                    }
                }
            }

            foreach (Products z in hsp)
            {
                product1.InnerHtml += "<div class='product-container1-list-items' id=" + z.id + ">" +
                   "<img class='product-items-img' src='" + z.img + "' onclick='showDetail(this)'/>" +
                   "<a id = 'product-items-name' onclick='showDetail(this)'>" + z.name + " </a>" +
                   "<div id='container-price'>" +
                   "<span id = 'product-items-oldprice' ><strike>" + z.oldprice + "</strike></span>" +
                   "<span id = 'product-items-price'> " + z.price + " </span>" +
                   "</div>" +
                   "<div class='container-button-items'>" +
                   "<button class='btnAddToCart' id='btnAddToCartx" + z.id +"' runat='server' onclick='SizeColor(this)'>Thêm vào giỏ</button>" +
                   "<button class = 'btnAddToWhis' id = 'btnAddToWhis" + z.id + "' onclick='return ht(this)' ><i class='far fa-heart' aria-hidden='true'></i></button>" +
                   "</div>" +
                   "</div>";
            }
            //ShowNewItems(np);
             foreach (Products x1 in hbp1)
            {
                listtopwm.InnerHtml+= "<div class='listtop-items' id='"+x1.id+"'>"+
                                      "<img src='" +x1.img+ "' onclick='showDetail(this)'/></a>" +
                                      "<div class='listtop-content'>"+
                                      "<p class='listop-name' onclick='showDetail(this)'>" + x1.name+"</p>"+
                                      "<p class='listop-detail'>"+x1.detail+"</p>"+
                                      "<p class='listop-price'>"+x1.price+"</p>" +
                                      "</div>"+
                                      "</div>";
            }
            foreach (Products x2 in hbp2)
            {
                listtopm.InnerHtml += "<div class='listtop-items' id='" + x2.id + "'>" +
                                      "<img src='" + x2.img + "' onclick='showDetail(this)'/></a>" +
                                      "<div class='listtop-content'>" +
                                      "<p class='listop-name' onclick='showDetail(this)'>" + x2.name + "</p>" +
                                      "<p class='listop-detail'>" + x2.detail + "</p>" +
                                      "<p class='listop-price'>" + x2.price + "</p>" +
                                      "</div>" +
                                      "</div>";
            }
            foreach (Products x3 in hbp3)
            {
                listtops.InnerHtml += "<div class='listtop-items' id='" + x3.id + "'>" +
                                      "<img src='" + x3.img + "' onclick='showDetail(this)'/>" +
                                      "<div class='listtop-content'>" +
                                      "<p class='listop-name' onclick='showDetail(this)'>" + x3.name + "</p>" +
                                      "<p class='listop-detail'>" + x3.detail + "</p>" +
                                      "<p class='listop-price'>" + x3.price + "</p>" +
                                      "</div>" +
                                      "</div>";
            }

            List<Cart> c = AddCartItem(s);

            if (c.Count != 0)
            {
                numberItems.Attributes["style"] = "display:block";
                numberItems.InnerHtml = c.Count.ToString();
                getCart(c);
            }
            else
            {
                cartlistItems.InnerText = "Trống";
                btnPay.Attributes["style"] = "display:none;";
            }
            /*allMoney.InnerText = "Tổng tiền: " + getAllMoney(c);*/
            clearItems();
            LikedItems();
            getLiked((List<Products>)Application["arrLiked"]);
            Filter();
            
        }
        public List<Cart> AddCartItem(List<Products> s)
        {
            string id = Request.QueryString["id"];
            string color = Request.QueryString["color"];
            string size = Request.QueryString["size"];
            List<Cart> c = (List<Cart>)Application["cart"];
            if (id != null)
            {
                foreach (Products x in s)
                {
                    if (int.Parse(x.id) == int.Parse(id))
                    {
                        c.Add(new Cart(x.id, x.img, x.name, "1", x.price, size, color));
                    }
                }
                Response.Redirect("Home.aspx#" + id);
            }
            return c;
        }

        public void getLiked(List<Products> s)
        {
            foreach (Products x in s)
            {
                heartlistItems.InnerHtml += "<div class='items-cart-icon' id='liked" + x.id + "'  >" +
                        "<img class='items-img-cart' src='" + x.img + "' onclick='viewLikedItems(this)'/>" +
                        "<div class='items-content-cart'>" +
                            "<span class='items-name-cart'>" + x.name + "</span>" +
                            "<br />" +

                        "</div>" +
                        "<div class='items-price-cart' >" +
                            "<span class='items-price-cart1'>" + x.price + "</span>" +
                            "<br /><span class='btn-clear-items-cart' onclick='delLikedItems(this)' id='ClearLiked" + x.id + "'>Xóa</span>" +
                        "</div>" +
                    "</div>";
            }
        }

        public void getCart(List<Cart> s)
        {
            foreach (Cart x in s)
            {
                cartlistItems.InnerHtml += "<div class='items-cart-icon' id='buy" + x.id + "' >" +
                        "<img class='items-img-cart' src='" + x.img + "' onclick='viewbuyItems(this)'/>" +
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
        public void clearItems()
        {
            
            List<Cart> arr = (List<Cart>)Application["cart"];
            if(Request.QueryString["clear"]!= null)
            {
                string s = Request.QueryString["clear"];
                arr.RemoveAll(p => p.id == s);
                Response.Redirect("Home.aspx");
            }    
            
        }
        public void LikedItems()
        {
            List<Products> arrLiked = (List<Products>)Application["arrLiked"];
            List<Products> allItem = (List<Products>)Application["products"];
            int idLiked = Convert.ToInt32(Request.QueryString["idLiked"]);
            int stt = Convert.ToInt32(Request.QueryString["stt"]);
            if (stt == 1)
            {
                arrLiked.Add(allItem.Find((p) => Convert.ToInt32(p.id) == idLiked));
            }
            else
            {
                arrLiked.Remove(allItem.Find((p) => Convert.ToInt32(p.id) == idLiked));
            }
        }

        public void Filter()
        {
           
            if (Request.QueryString["filter"] != null)
            {
                /*int type = int.Parse(Request.QueryString["filter"]);
                if (type == 1)
                {
                    filter.SelectedIndex = 1;
                    //Sắp xếp giá tăng dần
                    np.Sort((p1, p2) =>
                    {
                        var price1 = int.Parse(p1.price.Replace(".", ""));
                        var price2 = int.Parse(p2.price.Replace(".", ""));
                        if (price1 > price2)
                        {
                            return 1;
                        }
                        else if (price1 < price2)
                        {
                            return -1;
                        }
                        return 0;
                    });
                    ShowNewItems(np);

                }
                else if (type == 2)
                {
                    filter.SelectedIndex = 2;
                    //Sắp xếp giá giảm dần
                    np.Sort((p1, p2) =>
                    {
                        var price1 = int.Parse(p1.price.Replace(".", ""));
                        var price2 = int.Parse(p2.price.Replace(".", ""));
                        if (price1 < price2)
                        {
                            return 1;
                        }
                        else if (price1 > price2)
                        {
                            return -1;
                        }
                        return 0;
                    });
                    ShowNewItems(np);

                }
                else
                {
                    filter.SelectedIndex = 0;
                    np = new List<Products>();
                    foreach (Products x in s)
                    {
                        int tmp = int.Parse(x.id);
                        if (tmp < 44)
                        {
                            if (tmp % 2 == 0 && tmp % 3 != 0)
                            { np.Add(x); }
                        }
                    }
                    ShowNewItems(np);
                }*/
            }
            else
            {
                ShowNewItems(np);
            }
        }
        public void ShowNewItems(List<Products> np)
        {
            foreach (Products y in np)
            {
                product2.InnerHtml += "<div class='product-container1-list-items' id=" + y.id + ">" +
                    "<img class='product-items-img' src='" + y.img + "' onclick='showDetail(this)'/></a>" +
                    "<a id = 'product-items-name2' onclick='showDetail(this)'> " + y.name + " </a>" +
                    "<div id='container-price'>" +
                    "<span id = 'product-items-price2'> " + y.price + " </span>" +
                    "</div>" +
                    "<div class='container-button-items'>" +
                    "<button class='btnAddToCart' id='btnAddToCartx" + y.id + "' runat='server' onclick='SizeColor(this)'>Thêm vào giỏ</button>" +
                   "<button class = 'btnAddToWhis' id = 'btnAddToWhis" + y.id + "' onclick='return ht(this)' ><i class='far fa-heart' aria-hidden='true'></i></button>" +
                    "</div>" +
                    "</div>";
            }
        }
    }
    
}