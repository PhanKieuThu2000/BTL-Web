using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string so = Request.QueryString["so"];
            if (so != null && int.Parse(so) == 1)
            {
                Session["account"] = "";
                *//*Response.Redirect("Account.aspx");
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

            // Dang nhap
            //string email = Request.QueryString["email"];
            string phone = Request.QueryString["phone"];
            string pass = Request.QueryString["password"];
            List<Accounts> accs = (List<Accounts>)Application["Accounts"];
            foreach (Accounts ac in accs)
            {
                if (ac.phone == phone && ac.password == pass)
                {
                    Session["account"] = ac.firtName + " " + ac.lastName;
                    Response.Redirect("Home.aspx");
                }
            }




            //Dang ky
            string emailSu = Request.QueryString["emailSu"];
            string passSu = Request.QueryString["passwordSu"];


            string phoneNumberSu = Request.QueryString["phoneSu"];


            string fnSu = Request.QueryString["fnSu"];
            string lnSu = Request.QueryString["lnSu"];
            if(emailSu != null)
            {
                accs.Add(new Accounts(fnSu, lnSu, emailSu, phoneNumberSu, passSu));
                Session["account"] = fnSu +" "+ lnSu;
                Response.Redirect("Home.aspx");
            }
        }
    }
}