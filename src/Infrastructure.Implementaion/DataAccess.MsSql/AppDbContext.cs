using DataAccess.Interfaces;
using Entities.Models;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.MsSql
{
    public class AppDbContext : DbContext, IAppDbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<Game> Games { get; set; }
        public DbSet<Review> Reviews { get; set; }
        public Task<int> SaveChagesAsync(CancellationToken cancellationToken = default) => base.SaveChangesAsync(cancellationToken);
    }
}