using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Models;

namespace apiSAnaTest.Services
{
    public interface ICustomerServices
    {
        Task<Customer> AddCustomerAsync(Customer customer);
    }
}