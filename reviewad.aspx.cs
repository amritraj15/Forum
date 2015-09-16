using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class reviewad : System.Web.UI.Page
{
    string po_name, q_no, path;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        po_name = GridView1.SelectedValue.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = DBAccess.FetchData("select * from Post where id = '" + Session["u_id"] + "' and post_name = '" + po_name + "';");
        q_no = ds.Tables[0].Rows[0][3].ToString();
        path = ds.Tables[0].Rows[0][2].ToString();
        FileStream ps = new FileStream(path, FileMode.Open, FileAccess.Read);
        StreamReader reader = new StreamReader(ps);
        TextBox1.Text = reader.ReadToEnd();
        reader.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DBAccess.SaveData(" insert into Answer values('" + q_no + "','" + TextBox1.Text + "','" + Session["u_id"].ToString() + "');");
        // string fileLoc = Server.MapPath("~/post/") + po_name;
        if (File.Exists(path))
        {
            File.Delete(path);
        }
    }
}