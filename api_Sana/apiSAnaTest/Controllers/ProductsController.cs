using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Services;
using Microsoft.AspNetCore.Mvc;
using apiSAnaTest.Models;

namespace apiSAnaTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : Controller
    {
         private readonly IProductServices _productService;

        public ProductsController(ProductServices productService)
        {
           _productService = productService;
        }

    [HttpGet]
    public async Task<ActionResult<IEnumerable<Product>>> GetProducts()
    {
        var products = _productService.GetAllProductsAsync().Result.ToList();
        return Ok(products);
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Product>> GetProduct(int id)
    {
        var product = await _productService.GetProductByIdAsync(id);
        if (product == null) return NotFound();
        return Ok(product);
    }
    }
}