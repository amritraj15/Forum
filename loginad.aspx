<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginad.aspx.cs" Inherits="loginad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 588px;
        }
        .auto-style2 {
            width: 261px;
        }
        .auto-style3 {
            width: 453px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 304px; background-color: #99CCFF;">


        <asp:Label ID="Label2" runat="server" Text="LOGIN ADMIN" Font-Size="XX-Large" Height="50px" Width="900px"></asp:Label>
        <table style="width:100%; height: 252px;">
           
            <tr>
                <td class="auto-style2">ENTER THE ADMIN PASSWORD</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="442px" Height="25px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <center style="width: 419px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" Height="30px" Width="90px" />

                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="RESET" Width="90px" OnClick="Button2_Click" />
                   </center>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp; &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>