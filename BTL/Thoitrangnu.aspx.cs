using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Thoitrangnu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Products> thu = (List<Products>)Application["products"];
            foreach (Products kieuthu in thu)
            {
                if (kieuthu.type == "nu")
                {
                    thoitrangnusp.InnerHtml += "<div class='anh'>"+
                       "<img src = '"+kieuthu.img+"' class='anh1'/>"+
                       "<p class='tenao'>"+kieuthu.name+"</p>"+
                       "<p class='giaao'><u>"+kieuthu.price+"</u></p>"+
                   "<button id='"+kieuthu.id+"'onclick='themclick(this)'class='them'>Thêm vào giỏ</button>"+
                   "<button class='tim'><i class='far fa-heart' aria-hidden='true'></i></button>"+
               "</div>";        
             }
            }

        }
    }
}