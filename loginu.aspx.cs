using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class loginu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Request.Browser.Cookies)
        {
            if (CheckBox1.Checked == true)
            {
                Response.Cookies["log"]["id"] = TextBox1.Text;
                Response.Cookies["log"]["pwd"] = TextBox2.Text;
            }
        }
        DataSet ds = DBAccess.FetchData(" select * from User_tb where Id = " + TextBox1.Text + " and pwd ='" + TextBox2.Text + "'");
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = " Error in input ...";
        }
        else
        {
            Session["u_id"] = TextBox1.Text;
            Response.Redirect("HomeU.aspx");

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (Request.Browser.Cookies)
        {
            if (Request.Cookies["log"] != null)
            {
                if (Request.Cookies["log"]["id"].ToString() == TextBox1.Text)
                {
                    TextBox2.Attributes.Add("value", Request.Cookies["log"]["pwd"].ToString());
                }
            }
        }
    }
}