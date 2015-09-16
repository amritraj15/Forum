using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class exploreu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = DBAccess.FetchData("select * from Explore where topic = '" + DropDownList1.Text + "'");
        string path = ds.Tables[0].Rows[0][2].ToString();
        FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read);
        StreamReader reader = new StreamReader(fs);
        TextBox1.Text = reader.ReadToEnd();
        reader.Close();
    }
}