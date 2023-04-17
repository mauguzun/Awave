using Application.Dtos;
using Application.Interfaces;
using AutoMapper;
using DataAccess.Interfaces;
using System.Linq.Dynamic.Core;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using Entities.Models;

namespace Application.Implementation
{
    public class GameService : IGameService
    {
        private readonly IMapper _mapper;
        private readonly IAppDbContext _dbContext;

        public GameService(IMapper mapper, IAppDbContext dbContext)
        {
            _mapper = mapper;
            _dbContext = dbContext;
        }

        public async Task<DataTablesResponseDto<GameDto>> GetAsync(GameQueryParametrsDto query)
        {
            query ??= new GameQueryParametrsDto() { OrderColumn = "name" };

            var totalGamesCount = await _dbContext.Games.CountAsync();

            var columnName = char.ToUpper(query.OrderColumn.First()) + query.OrderColumn.Substring(1).ToLower();

            var games = string.IsNullOrEmpty(query.SearchQuery) ?
                _dbContext.Games.AsQueryable() :
                _dbContext.Games.Where(c => c.Name.Contains(query.SearchQuery.Trim().ToLower())).AsQueryable();
            
            // todo dynamci sql , wtf 
            games = query.IsAscSorting ? games.OrderBy(columnName) : games.OrderBy(columnName).Reverse();

            var gamesOnPage = games
                .Skip(query.StartFrom)
                .Take(query.PageLength);

            return new DataTablesResponseDto<GameDto>(totalGamesCount, games.Count(), _mapper.Map<List<GameDto>>(gamesOnPage));

        }
    }

}
