namespace Application.Dtos.Responces
{
    public record AddReviewResponseDto(bool IsExist, bool isDuplicate, string? Content) { }
}
