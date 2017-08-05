using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ExpTracker
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //SqlConnection conn=new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

            string uname=TextBox1.Text.ToString();

            string pwd = TextBox2.Text.ToString();
           // TextBox1

            if (uname.ToLower() == "asif" && pwd == "asif")

                HttpContext.Current.RewritePath("Home.aspx");
              //  Server.Transfer("~/Home.aspx");
            else
                Response.Write("<Script>alert('Please provide correct Username and Password ')</script>");   

        }
    }
}