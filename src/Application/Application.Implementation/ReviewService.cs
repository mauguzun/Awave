using Application.Dtos;
using Application.Interfaces;
using AutoMapper;
using DataAccess.Interfaces;
using Entities.Interfaces;
using Entities.Models;
using Microsoft.EntityFrameworkCore;
using System.Net;

namespace Application.Implementation
{
    public class ReviewService : IReviewService
    {
        private readonly IMapper _mapper;
        private readonly IAppDbContext _dbContext;
        private readonly ICalculateAverage _calculateAverage;

        public ReviewService(IMapper mapper, IAppDbContext dbContext, ICalculateAverage calculateAverage)
        {
            _mapper = mapper;
            _dbContext = dbContext;
            _calculateAverage = calculateAverage;
        }

        public async Task<List<ReviewDto>> GetAsync(int count = 20)
        {
            var review = await _dbContext.Reviews
                .OrderByDescending(x => x.Id)
                .Include(review => review.Game)
                .Take(count)
                .ToListAsync();

            var reviewDto = _mapper.Map<List<ReviewDto>>(review);

            return reviewDto;
        }

        public async Task<AddReviewResultDto> CreateAsync(Review review)
        {
            var game = await _dbContext.Games
                .Include(game => game.Reviews)
                .FirstOrDefaultAsync(game => game.Id == review.GameId);


            if (game == null)
            {
                return new AddReviewResultDto(HttpStatusCode.NotFound, "Not Found");
            }
            else if (game.Reviews.Any(x => x.Email == review.Email))
            {
                return new AddReviewResultDto(HttpStatusCode.Conflict, "Already Exist");
            }

            game.Rating = _calculateAverage.Calculate(game, review.Rating);
            game.RatingsCount += 1;

            _dbContext.Games.Update(game);
            _dbContext.Reviews.Add(review);
            await _dbContext.SaveChagesAsync();

            return new AddReviewResultDto(HttpStatusCode.Created, "Ok");
        }

    }
}
