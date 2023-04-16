using System.ComponentModel.DataAnnotations.Schema;

namespace Entities.Models.Base
{
    public record BaseModel : IBaseModel
    {
        public int Id { get; set; }
    }
}
