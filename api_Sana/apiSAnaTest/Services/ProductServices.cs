using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Data;
using apiSAnaTest.Models;

namespace apiSAnaTest.Services
{
    public class ProductServices : IProductServices
    {
        private readonly IRepository<Product> _productRepository;
        public ProductServices(IRepository<Product> productRepository)
        {
            _productRepository = productRepository;
        }

        public async Task<IEnumerable<Product>> GetAllProductsAsync()
        {
            return await _productRepository.GetAllAsync();
        }

        public async Task<Product> GetProductByIdAsync(int id)
        {
            return await _productRepository.GetByIdAsync(id);
        }

        public async Task<int> CountAllProductsAsync() => await _productRepository.CountAllAsync();

    }
}