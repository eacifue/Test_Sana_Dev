using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Models
{
    public class Category
    {
        public int CategoryID { get; set; }  
        public required string CategoryName { get; set; }      
    }
}