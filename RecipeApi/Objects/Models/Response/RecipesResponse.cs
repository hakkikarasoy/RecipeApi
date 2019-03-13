using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class RecipesResponse: ListResponse
    {       
        [JsonProperty("recipes")]
        public List<RecipeListResponse> Recipes { get; set; }
    }
}
