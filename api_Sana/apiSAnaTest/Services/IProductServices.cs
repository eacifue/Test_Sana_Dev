using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Models;

namespace apiSAnaTest.Services
{
    public interface IProductServices
    {
        Task<IEnumerable<Product>> GetAllProductsAsync();
        Task<Product> GetProductByIdAsync(int id);
        Task<Int32> CountAllProductsAsync();
    }
}