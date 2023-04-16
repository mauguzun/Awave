namespace Application.Dtos
{
    public record GameDto(int Id, string Name, DateTime Released, double Rating, int Added, int Playtime, int RatingsCount, int ReviewsTextCount)
    {
    }
}