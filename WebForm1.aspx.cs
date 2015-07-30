using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MonoSoftware.MonoX;

namespace ProjectName.Web
{
    public partial class WebForm1 : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDene_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                if (User.Identity.IsAuthenticated)
                {
                    //FormatRedirectUrl("http://localhost:55883/Home/Index");

                    MembershipUser user = Membership.GetUser(User.Identity.Name);
                    Guid guid = (Guid)user.ProviderUserKey;


                    GenerateAuthenticationCookie(5, guid);
                    Response.Redirect(FormatRedirectUrl("http://localhost:50351/Home/Index"), false);

                }

            }
            else
            {
                //Response.Redirect("http://localhost:50351/Home/Index");
            }
        }




        public static string FormatRedirectUrl(string redirectUrl)
        {
            HttpContext c = HttpContext.Current;
            //Don’t append the forms auth ticket for unauthenticated users or for users authenticated with a different mechanism
            if (!c.User.Identity.IsAuthenticated ||
                !(c.User.Identity.AuthenticationType == "Forms"))
                return redirectUrl;
            //Determine if we need to append to an existing query-string or              not
            string qsSpacer;

            if (redirectUrl.IndexOf('?') > 0)
                qsSpacer = "&";
            else
                qsSpacer = "?";
            //Build the new redirect URL. Assuming that currently using
            //forms authentication. Change the below FormsIdentity if required.
            string newRedirectUrl;
            //string newRedirectUrl;
            FormsIdentity fi = (FormsIdentity)c.User.Identity;
            newRedirectUrl = redirectUrl + qsSpacer +
            FormsAuthentication.FormsCookieName + "=" +
            FormsAuthentication.Encrypt(fi.Ticket);
            return newRedirectUrl;
        }



        private void GenerateAuthenticationCookie(int expiryInMinutes, Guid userGuid)
        {
            DateTime cookieExpiration = DateTime.Now.AddMinutes(expiryInMinutes); // change to months for production
            var authenticationTicket =
                new FormsAuthenticationTicket(
                    2,
                    userGuid.ToString(),
                    DateTime.Now,
                    cookieExpiration,
                    true,
                    string.Empty,
                    FormsAuthentication.FormsCookiePath);

            // ticket must be encrypted
            string encryptedTicket = FormsAuthentication.Encrypt(authenticationTicket);

            // create cookie to contain encrypted auth ticket
            var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
            authCookie.Expires = authenticationTicket.Expiration;
            authCookie.Path = FormsAuthentication.FormsCookiePath;

            // clear out existing cookie for good measure (probably overkill) then add
            HttpContext.Current.Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            HttpContext.Current.Response.Cookies.Add(authCookie);
        }
    }
}