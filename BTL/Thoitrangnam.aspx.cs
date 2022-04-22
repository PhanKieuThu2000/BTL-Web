using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Thoitrangnam : System.Web.UI.Page
    {
        private const string V = "<p class='tenanh'>";

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Products> thoitrang = (List<Products>)Application["products"];
            foreach (Products thoitrangnam in thoitrang)
            {
                if (thoitrangnam.type == "nam")
                {
                    anh.InnerHtml += "<div class='anh-items'>"+
                    "<img src = " + thoitrangnam.img + " class='anh1'/>" +
                    "<p class='ten'>" + thoitrangnam.name + "</p>" +
                    "<p class='gia'><u>" + thoitrangnam.price + "</u></p>" +
                    "<button id='"+thoitrangnam.id+"'onclick='tghclick(this)' class='tgh'>Thêm vào giỏ</button>" +
                    "<button class='tim'><i class='far fa-heart' aria-hidden='true'></i></button>" +
                "</div>";
                }

            }
        }
    }
}