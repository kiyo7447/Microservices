namespace HelloMicroservices
{
    using System;
    using Microsoft.AspNetCore.Mvc;
    [ApiController]
    [Route("[controller]")]
    public class CurrentDateTimeController : ControllerBase
    {
        [HttpGet("/")]
        public object Get() => DateTime.UtcNow;
    }
}