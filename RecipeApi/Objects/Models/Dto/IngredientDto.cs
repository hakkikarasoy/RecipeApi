using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class IngredientDto
    {
        [JsonProperty("amount")]
        public Amount Amount { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
    }
}
