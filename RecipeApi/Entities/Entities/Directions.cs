using System;
using System.Collections.Generic;

namespace Entities
{
    public partial class Directions
    {
        public Guid DirectionId { get; set; }
        public Guid RecipeId { get; set; }
        public string Step { get; set; }
        public byte StepOrder { get; set; }
        public bool? IsVisible { get; set; }
        public bool IsDeleted { get; set; }

        public virtual Recipe Recipe { get; set; }
    }
}
