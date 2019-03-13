using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class ListResponse
    {
        [JsonProperty("results")]
        public bool Results { get; set; }

        [JsonProperty("total")]
        public long Total { get; set; }
    }
}
