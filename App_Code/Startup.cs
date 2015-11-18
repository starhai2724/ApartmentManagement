using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ApartmentManagement.Startup))]
namespace ApartmentManagement
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
