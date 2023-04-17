using Application.Dtos.Requests;
using Application.Dtos.Responces;
using Application.Interfaces;
using DataAccess.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System.Net;
using System.Web.Http.Description;

namespace Web.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class GameController : ControllerBase
    {
        private readonly IGameService _gameService;

        public GameController(IGameService gameService) => _gameService = gameService;


        [HttpGet]
        [ResponseType(typeof(DataTablesResponseDto<GameResponseDto>))]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<DataTablesResponseDto<GameResponseDto>> Get([FromQuery] GameQueryParametrsDto query) => await _gameService.GetAsync(query);
    }
}