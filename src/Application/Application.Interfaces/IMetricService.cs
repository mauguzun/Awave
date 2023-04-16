using Application.Dtos;

namespace Application.Interfaces
{
    public interface IMetricService
    {
        public Task<ChartData> GetMostRatedGame(int count = 5);
        public Task<ChartData> GetLowestRatedGame(int count = 5);
    }
}