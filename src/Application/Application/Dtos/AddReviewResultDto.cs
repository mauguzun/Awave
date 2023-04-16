using System.Net;

namespace Application.Dtos
{
    public record AddReviewResultDto(HttpStatusCode StatusCode, string? Content) { }
}
