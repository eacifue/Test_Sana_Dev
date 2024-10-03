using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using apiSAnaTest.Data;
using apiSAnaTest.Dtos;
using apiSAnaTest.Models;
using Microsoft.Data.SqlClient;

namespace apiSAnaTest.Services
{
    public class OrderServices : IOrderServices
    {
        private readonly IRepository<Order> _orderRepository;

        public OrderServices(IRepository<Order> orderRepository)
        {
            _orderRepository = orderRepository;
        }

        public async Task<Order> AddOrderAsync(Order order)
        {
              await _orderRepository.AddAsync(order);
              return order;
        }             

        public async Task AddOrderSPAsync(OrderDto order, List<OrderProductDto> products)
        {
            var customerID = new SqlParameter("@CustomerID",order.CustomerID);
            var totalAmount = new SqlParameter("@TotalAmount", order.TotalAmount);

            // Crear el Table-Valued Parameter (TVP)
            var productTable = new DataTable();
            productTable.Columns.Add("ProductID", typeof(int));
            productTable.Columns.Add("Quantity", typeof(int));   

           foreach (var product in products)
            {
                productTable.Rows.Add(product.ProductID, product.Quantity);
            }            

            var tvpParameter = new SqlParameter();
            tvpParameter.ParameterName = "@Products";
            tvpParameter.SqlDbType = SqlDbType.Structured;
            tvpParameter.TypeName = "dbo.OrderProductType"; 
            tvpParameter.Value = productTable;            

            await _orderRepository.ExecuteNonQueryStoredProcedureAsync(
            "EXEC AddOrderAndProducts @CustomerID = {0}, @TotalAmount = {1}, @Products = {2}", 
            customerID, totalAmount, tvpParameter);
        }            
    }
}