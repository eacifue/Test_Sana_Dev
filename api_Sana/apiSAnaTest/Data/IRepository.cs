using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace apiSAnaTest.Data
{
    public interface IRepository<T> where T : class
    {
        Task<IEnumerable<T>> GetAllAsync();
        Task<int> CountAllAsync();
        Task<T> GetByIdAsync(int id);
        Task AddAsync(T entity);
        Task UpdateAsync(T entity);
        Task DeleteAsync(int id);
        Task ExecuteNonQueryStoredProcedureAsync(string storedProcedure, params object[] parameters);
    }
}