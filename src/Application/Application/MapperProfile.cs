using Application.Dtos.Responces;
using AutoMapper;
using Entities.Models;

namespace Application
{
    public class MapperProfile : Profile
    {
        public MapperProfile()
        {
            CreateMap<Game, GameResponseDto>();

            CreateMap<Review, ReviewResponseDto>()
                .ForMember(
                    dest => dest.GameName,
                    opt => opt.MapFrom(x => x.Game != null ? x.Game.Name : default));


            CreateMap<List<Game>, ChartDataResponseDto>()
                  .ForMember(
                    dest => dest.Labels,
                    opt => opt.MapFrom(game => game.Select(x => x.Name)))
                 .ForMember(
                    dest => dest.Datasets,
                    opt => opt.MapFrom((src, dest, member, context) =>
                    new List<ChartDatasetResponse>
                    {
                        new ChartDatasetResponse("raiting Count",src.Select(x=>x.RatingsCount).ToList()),
                        new ChartDatasetResponse("raiting Added", src.Select(x=>x.Added).ToList()),
                    }));


        }
    }
}
