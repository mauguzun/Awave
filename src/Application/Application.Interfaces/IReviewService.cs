using Application;
using Application.Dtos.Responces;
using Entities.Models;

namespace Application.Interfaces
{
    public interface IReviewService
    {
        public Task<List<ReviewResponseDto>> GetAsync(int count);
        public Task<AddReviewResponseDto> CreateAsync(Review revew);
    }
}