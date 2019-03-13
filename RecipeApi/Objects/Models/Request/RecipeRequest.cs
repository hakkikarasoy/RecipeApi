using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class RecipeRequest
    {
        public string Title { get; set; }

        public List<string> Categories { get; set; }

        public List<IngredientDto> Ingredients { get; set; }

        public DirectionDto Directions { get; set; }
    }
}
