using Application.Dtos;
using AutoMapper;
using Entities.Models;

namespace Application
{
    public class MapperProfile : Profile
    {
        public MapperProfile()
        {
            CreateMap<Game, GameDto>();

            CreateMap<Review, ReviewDto>()
                .ForMember(
                    dest => dest.GameName,
                    opt => opt.MapFrom(x => x.Game != null ? x.Game.Name : default));


            CreateMap<List<Game>, ChartData>()
                  .ForMember(
                    dest => dest.Labels,
                    opt => opt.MapFrom(game => game.Select(x => x.Name)))
                 .ForMember(
                    dest => dest.Datasets,
                    opt => opt.MapFrom((src, dest, member, context) =>
                    new List<ChartDataset>
                    {
                        new ChartDataset("raiting Count",src.Select(x=>x.RatingsCount).ToList()),
                        new ChartDataset("raiting Added", src.Select(x=>x.Added).ToList()),
                    }));


        }
    }
}
