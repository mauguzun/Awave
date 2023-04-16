using Entities;
using Entities.Models.Base;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entities.Models
{
    public record Game : BaseModel
    {

        public string Name { get; init; }
        public DateTime Released { get; init; }
        public double Rating { get; set; }
        public int Added { get; init; }
        public int Playtime { get; init; }
        public int RatingsCount { get; set; }
        public int ReviewsTextCount { get; init; }
        public DateTime Updated { get; init; }
        public List<Review> Reviews { get; init; }

        public Game(string name, DateTime released, double rating, int added, int playtime , int ratingsCount, int reviewsTextCount, DateTime updated, List<Review> reviews = null)
        {
            Name = name;
            Released = released;
            Rating = rating;
            Added = added;
            Playtime = playtime;
            RatingsCount = ratingsCount;
            ReviewsTextCount = reviewsTextCount;
            Updated = updated;
            Reviews = reviews;
        }
        public Game() { }

    }
}