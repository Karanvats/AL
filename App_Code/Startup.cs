using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Asute.Startup))]
namespace Asute
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
