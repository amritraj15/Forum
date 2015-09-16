using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class openu : System.Web.UI.Page
{
    static string f_name;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        f_name = GridView1.SelectedValue.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = DBAccess.FetchData("select * from Program where u_id = '" + Session["u_id"] + "' and p_name = '" + f_name + "'");
        string path = ds.Tables[0].Rows[0][2].ToString();
        FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read);
        StreamReader reader = new StreamReader(fs);
        TextBox1.Text = reader.ReadToEnd();
        reader.Close();

    }
}