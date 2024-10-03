using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Dtos;

namespace apiSAnaTest.Services
{
    public interface IOrderServices
    {
        Task AddOrderSPAsync(OrderDto order, List<OrderProductDto> products);
    }
}