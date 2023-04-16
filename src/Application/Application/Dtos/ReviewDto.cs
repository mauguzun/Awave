namespace Application.Dtos
{
    public record ReviewDto(int Id, string Name, string? Comment, byte Rating, string Email, string GameName)
    {
    }
}