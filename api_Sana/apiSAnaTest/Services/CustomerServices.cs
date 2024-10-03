using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Data;
using apiSAnaTest.Models;

namespace apiSAnaTest.Services
{
    public class CustomerServices : ICustomerServices
    {
        private readonly IRepository<Customer> _customerRepository;

        public CustomerServices(IRepository<Customer> customerRepository)
        {
            _customerRepository = customerRepository;
        }

        public async Task<Customer> AddCustomerAsync(Customer customer)
        {
              await _customerRepository.AddAsync(customer);
              return customer;
        }        

    }
}