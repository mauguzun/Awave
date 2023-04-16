using Entities.Interfaces;
using Entities.Models;

namespace Entities.Implementations
{
    public class CalculateAverage : ICalculateAverage
    {
        public double Calculate(Game game, byte newRating)
        {
            double average = (game.Rating * game.RatingsCount + newRating) / (game.RatingsCount + 1);

            return average;
        }
    }
}