using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Accounts
    {
        public string firtName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string password { get; set; }

        public Accounts()
        {
        }

        public Accounts(string firtName, string lastName, string email, string phone, string password)
        {
            this.firtName = firtName;
            this.lastName = lastName;
            this.email = email;
            this.phone = phone;
            this.password = password;
        }
    }
}