using Application.Dtos;
using Application.Interfaces;
using AutoMapper;
using DataAccess.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Application.Implementation
{
    public class MetricService : IMetricService
    {
        private readonly IMapper _mapper;
        private readonly IAppDbContext _dbContext;

        public MetricService(IMapper mapper, IAppDbContext dbContext)
        {
            _mapper = mapper;
            _dbContext = dbContext;
        }

        public async Task<ChartData> GetMostRatedGame(int count = 5)
        {
            var games = await _dbContext.Games
                .OrderByDescending(game => game.RatingsCount)
                .Take(count)
                .ToListAsync();

            return _mapper.Map<ChartData>(games);
        }


        public async Task<ChartData> GetLowestRatedGame(int count = 5)
        {
            var games = await _dbContext.Games
               .OrderBy(game => game.RatingsCount)
               .Take(count)
               .ToListAsync();

            return _mapper.Map<ChartData>(games);
        }
    }
}
