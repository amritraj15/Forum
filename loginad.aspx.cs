using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = string.Empty;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pwd = TextBox2.Text.ToString();
        if (pwd == "abc")
        {
            Session["u_id"] = "ADMIN";
            Response.Redirect("HomeAd.aspx");
        }
        else
        {
            Label1.Text = "not the admin password";
        }
    }
}