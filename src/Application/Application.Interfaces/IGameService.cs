using Application.Dtos;

namespace Application.Interfaces
{
    public interface IGameService
    {
        Task<DataTablesResponseDto<GameDto>> GetAsync(GameQueryParametrsDto quereryDto);
    }
}