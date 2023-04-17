﻿namespace Application.Dtos.Responces
{
    public record GameResponseDto(int Id, string Name, DateTime Released, double Rating, int Added, int Playtime, int RatingsCount, int ReviewsTextCount)
    {
    }
}