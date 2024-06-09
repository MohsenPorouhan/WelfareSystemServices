using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
public partial class login : System.Web.UI.Page
{
    private static string test;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Membership.ValidateUser(Request["username"], Request["password"]))
            {
                FormsAuthentication.RedirectFromLoginPage(Request["username"], checkboxId.Checked ? true : false);
            }
            else
            {
                myDiv.Style.Add("display", "block");
                mySpan.InnerText = "کلمه عبور یا نام کاربری اشتباه می باشد";
            }
        }

        //Response.Write("ppppppppppppppppppp");
        //HttpContext.Current.Response.Write("ppppppppppppppppppp");
        //FormsAuthentication.RedirectFromLoginPage("979064", false);
        //string s=User.Identity.Name;
        //User.IsInRole("");
        //MembershipUser user = Membership.GetUser("979064");
        //Response.Write(user.UserName);
        //Response.Write("<br>");
        //Response.Write(user.Email);
        test = User.Identity.Name;
        //HttpContext.Current.Response.Redirect("default.aspx");

    }

    [WebMethod]
    public static string setUser(string username, string password)
    {
        //MembershipUser user = Membership.GetUser((Convert.ToString(username)));
        MembershipUser user = Membership.GetUser(username);
        //FormsAuthentication.SignOut();
        //HttpContext.Current.Response.Write(user.Email);

        //Response.Write(user.UserName);

        if (Membership.ValidateUser(username, password))
        {
            //FormsAuthentication.RedirectFromLoginPage(user.UserName, false);
            return "true";
        }
        else return "false";

        //HttpContext.Current.Response.Write(HttpContext.Current.User.Identity.Name);
        //HttpContext.Current.User.IsInRole("admin");

        //Response.Write("<br>");
        //Response.Write(user.Email);
        //return user;
    }
}