using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class CategoriesResponse:ListResponse
    {     

        [JsonProperty("categories")]
        public List<string> Categories { get; set; }
    }
}
