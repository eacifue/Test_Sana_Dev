using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using apiSAnaTest.Models;

namespace apiSAnaTest.Data
{
    public class ApplicationDbContext : DbContext
    {
          public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }        
        
        public DbSet<Product> Product { get; set; }       
        public DbSet<Category> Category { get; set; }     
        public DbSet<Customer> Customer { get; set; } 
         public DbSet<Order> Order { get; set; } 
        
    }
}