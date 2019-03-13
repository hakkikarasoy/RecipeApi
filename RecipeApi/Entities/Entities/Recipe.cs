using System;
using System.Collections.Generic;

namespace Entities
{
    public partial class Recipe
    {
        public Recipe()
        {
            Directions = new HashSet<Directions>();
            Ingredient = new HashSet<Ingredient>();
            RecipeCategory = new HashSet<RecipeCategory>();
        }

        public Guid RecipeId { get; set; }
        public string Title { get; set; }
        public bool IsVisible { get; set; }
        public bool IsDeleted { get; set; }

        public virtual ICollection<Directions> Directions { get; set; }
        public virtual ICollection<Ingredient> Ingredient { get; set; }
        public virtual ICollection<RecipeCategory> RecipeCategory { get; set; }
    }
}
