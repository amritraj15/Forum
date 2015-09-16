using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Day");
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            DropDownList2.Items.Add("Month");
            for (int i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            DropDownList3.Items.Add("Year");
            for (int i = 1980; i <= 2020; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        DropDownList3.ClearSelection();
        RadioButtonList1.ClearSelection();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string dob = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
            string im_ext, im_name, im_path;
            im_ext = System.IO.Path.GetExtension(FileUpload1.FileName.ToString());
            if (im_ext == ".jpg" || im_ext == ".jpeg" || im_ext == ".bmp" || im_ext == ".png")
            {
                im_name = TextBox1.Text + im_ext;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/reg_image/") + im_name);
                im_path = "~/reg_image/" + im_name;
                DBAccess.SaveData("insert into User_tb values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + dob + "','" + RadioButtonList1.SelectedValue.ToString() + "','" + TextBox6.Text + "','" + im_path + "')");
                Label1.Text = "Succesfully Registered";
                //Console.WriteLine("dhgjhfjhfd");

            }
            else
            {
                Label1.Text = "Enter picture in correct format.";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
   