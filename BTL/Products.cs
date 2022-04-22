using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Products
    {
        public string id { get; set; }
        public string img { get; set; }
        public string name { get; set; }
        public string price { get; set; }
        public string oldprice { get; set; }
        public string detail { get; set; }
        public string type { get; set; }

        public Products()
        {
        }

        public Products(string id, string img, string name, string price, string oldprice, string detail, string type)
        {
            this.id = id;
            this.img = img;
            this.name = name;
            this.price = price;
            this.oldprice = oldprice;
            this.detail = detail;
            this.type = type;
        }
    }
}