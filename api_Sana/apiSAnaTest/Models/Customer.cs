using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Models
{
    public class Customer
    {
        public int CustomerID { get; set; }
        public required string FirstName { get; set; }     
        public required string LastName { get; set; }     
        public required string Email { get; set; }  
    }
}