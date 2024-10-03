using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Models
{
    public class Product
    {
        public int ProductID { get; set; }
        public required string ProductName { get; set; }
        public decimal Price { get; set; }  
        public required string Description { get; set; }
        public int Stock { get; set; }
        public int CategoryID { get; set; }     
    }
}