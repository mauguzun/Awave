using Entities.Models.Base;
using Microsoft.EntityFrameworkCore;
using System.Text.Json.Serialization;

namespace Entities.Models
{

    [Index(nameof(GameId), nameof(Email), IsUnique = true, Name = "Game_Email")]

    public record Review(string Name, string? Comment, byte Rating, string Email, int GameId) : BaseModel
    {
        [JsonIgnore]
        public Game? Game { get; set; }
    }
}
