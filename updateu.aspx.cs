using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class updateu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string im_ext, im_name, im_path;
        im_ext = System.IO.Path.GetExtension(FileUpload1.FileName.ToString());
        if (im_ext == ".jpg" || im_ext == ".jpeg")
        {
            im_name = TextBox1.Text + im_ext;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/pro_img/") + im_name);
            Label4.Text = "successfull....";
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataSet ds = DBAccess.FetchData("select * from User_Tb where id = '" + Session["u_id"] + "'");
        string pwd = ds.Tables[0].Rows[0][2].ToString();
        if (pwd == TextBox3.Text)
        {
            try
            {
                DBAccess.SaveData(" update User_Tb set pwd = '" + TextBox3 + "'");
                Label2.Text = " Success............";
            }
            catch (Exception exx)
            {
                Label2.Text = exx.Message.ToString();
            }
        }
    }
}