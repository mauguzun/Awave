using Application.Dtos;
using Application.Interfaces;
using Entities.Models;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Web.Http.Description;

namespace Web.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ReviewController : ControllerBase
    {
        private readonly IReviewService _reviewService;

        public ReviewController(IReviewService reviewService) => _reviewService = reviewService;

        [HttpGet]
        [ResponseType(typeof(List<ReviewDto>))]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<List<ReviewDto>> Get() => await _reviewService.GetAsync(20);

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status409Conflict)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status422UnprocessableEntity)]
        public async Task<JsonResult> Post([FromBody] Review review)
        {
            if (ModelState.IsValid)
            {
                var result = await _reviewService.CreateAsync(review);

                return new JsonResult(result.Content)
                {
                    StatusCode = (int)result.StatusCode
                };


            }
            return new JsonResult("Model not valid")
            {
                StatusCode = (int)StatusCodes.Status422UnprocessableEntity
            };
        }

    }
}