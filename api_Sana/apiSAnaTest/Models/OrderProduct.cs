using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Models
{
    public class OrderProduct
    {
        public int OrderID { get; set; }  
        public int ProductID { get; set; }  
        public int Quantity { get; set; } 
    }
}