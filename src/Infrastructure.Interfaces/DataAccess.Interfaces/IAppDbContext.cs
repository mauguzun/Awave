using Entities.Models;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.Interfaces
{
    public interface IAppDbContext
    {
        DbSet<Game> Games { get; }
        DbSet<Review> Reviews { get; }
        Task<int> SaveChagesAsync(CancellationToken cancellationToken = default);
    }
}