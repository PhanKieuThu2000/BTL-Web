using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Phukien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Products> phukien1 = (List<Products>)Application["products"];
            foreach (Products phukienthoitrang in phukien1)
            {
                if (phukienthoitrang.type == "phukien")
                {
                    rightunder.InnerHtml += "<div class='sp-items'>" +
                    "<img src = " + phukienthoitrang.img + " class='anh'/>" +
                    "<p class='ten'>" + phukienthoitrang.name + "</p>" +
                    "<p class='gia'><u>" + phukienthoitrang.price + "</u></p>" +
                    "<button id='" + phukienthoitrang.id + "'class='them' onclick='tgh(this)'>Thêm giỏ hàng</button>" +
                    "<button class='tim'> <i class='far fa-heart' aria-hidden='true'></i></button>" +
                "</div>";

                }

            }
        }
    }
}