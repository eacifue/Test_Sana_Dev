using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Models;
using apiSAnaTest.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace apiSAnaTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : Controller
    {
        private readonly ICustomerServices _customerServices;

        public CustomersController(CustomerServices customerServices)
        {
            _customerServices = customerServices;
        }

        [HttpPost]
        public async Task<ActionResult<Customer>> AddCustomer([FromBody] Customer customer)
        {
            await _customerServices.AddCustomerAsync(customer);
            return customer;
        }

    }
}