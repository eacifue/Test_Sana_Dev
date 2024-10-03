using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Models
{
    public class Order
    {
        public int OrderID { get; set; }  
        public int CustumerID { get; set; }     
        public DateTime OrderDate { get; set; }  
        public decimal TotalAmount { get; set; }           
    }
}