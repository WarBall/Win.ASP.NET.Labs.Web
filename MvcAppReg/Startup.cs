using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MvcAppReg.Startup))]
namespace MvcAppReg
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
