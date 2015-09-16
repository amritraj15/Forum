using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class exploread : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string f_name = TextBox1.Text + ".txt";
        string path = Server.MapPath("~/explore/") + f_name;
        FileStream fs = new FileStream(Server.MapPath("~/explore/") + f_name, FileMode.Create, FileAccess.Write);
        StreamWriter sw = new StreamWriter(fs);
        sw.Write(TextBox2.Text);
        sw.Close();
        DBAccess.SaveData(" insert into Explore values('" + TextBox1.Text + "','" + path + "')");

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = DBAccess.FetchData("select * from Explore where topic = '" + DropDownList1.Text + "'");
        string path = ds.Tables[0].Rows[0][2].ToString();
        FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read);
        StreamReader reader = new StreamReader(fs);
        TextBox3.Text = reader.ReadToEnd();
        reader.Close();
    }
}