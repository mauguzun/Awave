using Application.Dtos.Responces;

namespace Application.Interfaces
{
    public interface IMetricService
    {
        public Task<ChartDataResponseDto> GetMostRatedGame(int count = 5);
        public Task<ChartDataResponseDto> GetLowestRatedGame(int count = 5);
    }
}