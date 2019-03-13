using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class RecipeListResponse
    {
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("categories")]
        public List<string> Categories { get; set; }
        [JsonProperty("ingredients")]
        public List<IngredientDto> Ingredients { get; set; }
        [JsonProperty("directions")]
        public DirectionDto Directions { get; set; }
    }
}
