using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Objects.Models
{
    public class ResultObject
    {
        public bool IsSucceed { get; set; }
        public string Message { get; set; }

        public int HttpResponseCode { get; set; }
    }
}
