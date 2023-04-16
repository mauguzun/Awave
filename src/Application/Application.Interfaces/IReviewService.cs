using Application;
using Application.Dtos;
using Entities.Models;

namespace Application.Interfaces
{
    public interface IReviewService
    {
        public Task<List<ReviewDto>> GetAsync(int count);
        public Task<AddReviewResultDto> CreateAsync(Review revew);
    }
}