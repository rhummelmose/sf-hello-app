using System;
using Microsoft.AspNetCore.Mvc;

namespace HelloApp.Controllers
{
    [Route("hello")]
    [ApiController]
    public class HelloController : ControllerBase
    {
        // GET hello
        [HttpGet]
        public ActionResult<string> Get()
        {
            return "world";
        }
        
    }
}
