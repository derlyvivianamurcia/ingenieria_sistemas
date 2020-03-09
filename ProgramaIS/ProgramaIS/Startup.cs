using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProgramaIS.Startup))]
namespace ProgramaIS
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
