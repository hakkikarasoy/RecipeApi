using System;
using System.Collections.Generic;

namespace Entities
{
    public partial class Ingredient
    {
        public Guid IngredientId { get; set; }
        public Guid RecipeId { get; set; }
        public Guid? UnitId { get; set; }
        public string Name { get; set; }
        public int? Quantity { get; set; }
        public bool? IsVisible { get; set; }
        public bool IsDeleted { get; set; }

        public virtual Recipe Recipe { get; set; }
        public virtual Unit Unit { get; set; }
    }
}
