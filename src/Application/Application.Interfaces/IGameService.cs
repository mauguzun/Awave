using Application.Dtos.Requests;
using Application.Dtos.Responces;

namespace Application.Interfaces
{
    public interface IGameService
    {
        Task<DataTablesResponseDto<GameResponseDto>> GetAsync(GameQueryParametrsDto quereryDto);
    }
}