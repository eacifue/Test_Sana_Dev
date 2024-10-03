using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Dtos
{
    public class OrderDto
    {
        public int CustomerID { get; set; }
        public decimal TotalAmount { get; set; }
        public List<OrderProductDto> Products { get; set; }
    }
    public class OrderProductDto
    {
        public int ProductID { get; set; }
        public int Quantity { get; set; }
    }
}