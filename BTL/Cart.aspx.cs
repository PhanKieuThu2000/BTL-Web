using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Cart1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
       {
          List<Cart> c = (List<Cart>)Application["cart"];
            gv1.DataSource = c;
            gv1.DataBind();
            int tongtien = 0;
            foreach (Cart x in c)
            {
                tongtien += int.Parse(chuanhoa(x.price));
            }
            txtTongtien.InnerHtml = "" + tongtien;
            getThongtin();
            
        }
       private String chuanhoa(string gia)
       {
           return gia.Replace(".", "");
       }
        private void getThongtin()
        {
            string ten = Request.QueryString["ten"];
            string sdt = Request.QueryString["sdt"];
            string dc = Request.QueryString["dc"];
            if(ten!=null && sdt!=null && dc!=null)
            {
                tenS.InnerHtml = "Tên: " + ten;
                sdtS.InnerHtml = "Số điện thoại: " + sdt;
                dcS.InnerHtml = "Địa chỉ: " + dc;
            }    
        }
    }
}