using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using apiSAnaTest.Services;
using apiSAnaTest.Dtos;
using apiSAnaTest.Models;

namespace apiSAnaTest.Controllers
{
    [Route("api/[controller]")]
    public class OrderController : Controller
    {
        private readonly IOrderServices _orderService;
        private readonly IProductServices _productService;

        public OrderController(OrderServices orderService, ProductServices _roductService)
        {
            _orderService = orderService;
            _productService = _roductService;
        }

        [HttpPost]
        public async Task<IActionResult> AddOrder([FromBody] OrderDto orderDto)
        {
            if (orderDto == null || orderDto.Products == null || !orderDto.Products.Any())
            {
                return BadRequest("Invalid order data.");
            }

            foreach (OrderProductDto product in orderDto.Products )
            {
                var productStock =  _productService.GetProductByIdAsync(product.ProductID).Result;
                    if((productStock.Stock - product.Quantity) < 0)
                    {
                        return Ok("Stock is insufficient for" + product.ProductID);
                    }
            }

            await _orderService.AddOrderSPAsync(orderDto, orderDto.Products);
            return Ok("Order and products added successfully.");


        }
    }
}