using Application.Dtos;
using Application.Implementation;
using Application.Interfaces;
using Entities.Models;
using Microsoft.AspNetCore.Mvc;
using System.Web.Http.Description;

namespace Web.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MetricController : ControllerBase
    {
        private readonly IMetricService _metricService;

        public MetricController(IMetricService metricService) => _metricService = metricService;

        [HttpGet("best")]
        [ResponseType(typeof(ChartData))]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<ChartData> GetSortedByRaitingAsync() => await _metricService.GetMostRatedGame(5);


        [HttpGet("worst")]
        [ResponseType(typeof(ChartData))]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<ChartData> GetSortedByRatingCountAsync() => await _metricService.GetLowestRatedGame(5);
    }
}