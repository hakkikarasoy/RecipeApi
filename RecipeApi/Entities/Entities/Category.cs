using System;
using System.Collections.Generic;

namespace Entities
{
    public partial class Category
    {
        public Category()
        {
            RecipeCategory = new HashSet<RecipeCategory>();
        }

        public Guid CategoryId { get; set; }
        public string Name { get; set; }
        public bool IsVisible { get; set; }
        public bool IsDeleted { get; set; }

        public virtual ICollection<RecipeCategory> RecipeCategory { get; set; }
    }
}
