using System;
using System.Collections.Generic;

namespace Entities
{
    public partial class RecipeCategory
    {
        public Guid RecipeCategoryId { get; set; }
        public Guid RecipeId { get; set; }
        public Guid CategoryId { get; set; }
        public bool? IsVisible { get; set; }
        public bool IsDeleted { get; set; }

        public virtual Category Category { get; set; }
        public virtual Recipe Recipe { get; set; }
    }
}
