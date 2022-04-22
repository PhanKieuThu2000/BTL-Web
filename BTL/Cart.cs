using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Cart
    {   
        public string id { get; set; }
        public string img { get; set; }
        public string name { get; set; }
        public string number { get; set; }
        public string price { get; set; }
        public string size { get; set; }
        public string color { get; set; }
        public Cart()
        {
        }

        public Cart(string id, string img, string name, string number, string price, string size, string color)
        {
            this.id = id;
            this.img = img;
            this.name = name;
            this.number = number;
            this.price = price;
            this.size = size;
            this.color = color;
        }
    }
}