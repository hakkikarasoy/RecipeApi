using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class RecipeDto
    {
        public Guid RecipeId { get; set; }
        public string Title { get; set; }
        public string Directions { get; set; }

    }
}
