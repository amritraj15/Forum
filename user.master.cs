using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "HELLO...." + Session["u_id"];
        DataSet ds = DBAccess.FetchData("SELECT * FROM User_tb where id = '" + Session["u_id"].ToString() + "'");
        Image1.ImageUrl = ds.Tables[0].Rows[0]["img"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["u_id"] = null;
        Response.Redirect("HomeAny.aspx");
    }
}
