using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.CodeDom.Compiler;
using System.Diagnostics;
using Microsoft.CSharp;
using System.IO;
using System.Configuration;

public partial class newu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string f_name = Session["u_id"] + TextBox4.Text + ".cs";
        string path = "~/codes/" + f_name;
        FileStream fs = new FileStream(Server.MapPath("~/codes/") + f_name, FileMode.Create, FileAccess.Write);
        StreamWriter sw = new StreamWriter(fs);
        sw.Write(TextBox2.Text);
        sw.Close();
        DBAccess.SaveData("insert into Program values ('" + f_name + "','" + Session["u_id"] + "','" + path + "')");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CodeDomProvider codeProvider = CodeDomProvider.CreateProvider("CSharp");
        string Output = "Out.exe";
        Button ButtonObject = (Button)sender;

        TextBox3.Text = "";
        System.CodeDom.Compiler.CompilerParameters parameters = new CompilerParameters();
        
        parameters.GenerateExecutable = true;
        parameters.OutputAssembly = Output;
        CompilerResults results = codeProvider.CompileAssemblyFromSource(parameters, TextBox2.Text);

        if (results.Errors.Count > 0)
        {

            foreach (CompilerError CompErr in results.Errors)
            {
                TextBox3.Text = TextBox3.Text +
                            "Line number " + CompErr.Line +
                            ", Error Number: " + CompErr.ErrorNumber +
                            ", '" + CompErr.ErrorText + ";" +
                            Environment.NewLine + Environment.NewLine;
            }
        }
        else
        {
            
            TextBox3.Text = "Success!";
            
      
            #region
            if (ButtonObject.Text == "EXECUTE")
            {
                Process myProcess = new Process();
                ProcessStartInfo myProcessStartInfo = new ProcessStartInfo(Output);
                myProcessStartInfo.UseShellExecute = false;
                myProcessStartInfo.RedirectStandardOutput = true;
                myProcess.StartInfo = myProcessStartInfo;
                myProcess.Start();
                StreamReader myStreamReader = myProcess.StandardOutput;
                string myString = myStreamReader.ReadLine();
                myProcess.WaitForExit();
                myProcess.Close();
                TextBox3.Text = myString;
            }
            #endregion

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1_Click(sender, e);
    }
}