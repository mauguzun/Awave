namespace Application.Dtos.Responces
{
    public record ReviewResponseDto(int Id, string Name, string? Comment, byte Rating, string Email, string GameName)
    {
    }
}