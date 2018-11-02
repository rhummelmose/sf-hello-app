namespace HelloApp
{
    using System.Threading;
    using Microsoft.ServiceFabric.Services.Runtime;
    
    public class Program
    {
        public static void Main(string[] args)
        {
            ServiceRuntime.RegisterServiceAsync("HelloAppServiceType", context => new HelloService (context)).GetAwaiter().GetResult();
            Thread.Sleep(Timeout.Infinite);
        }
    }
}
