using System;
using System.Collections.Generic;

namespace Entities
{
    public partial class Unit
    {
        public Unit()
        {
            Ingredient = new HashSet<Ingredient>();
        }

        public Guid UnitId { get; set; }
        public string Name { get; set; }
        public bool? IsVisible { get; set; }
        public bool IsDeleted { get; set; }

        public virtual ICollection<Ingredient> Ingredient { get; set; }
    }
}
