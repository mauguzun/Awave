using Entities.Models;

namespace Entities.Interfaces
{
    public interface ICalculateAverage
    {
        double Calculate(Game game, byte newRating);
    }
}