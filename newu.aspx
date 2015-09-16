<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="newu.aspx.cs" Inherits="newu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 750px">
        &nbsp;<asp:Label ID="Label1" runat="server" Text="WRITE A NEW C# PROGRAM" Height="50PX" Width="900PX" Font-Size="50PX"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox4" placeholder="Topic" runat="server" Height="25px" Width="900px"></asp:TextBox>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="400px" TextMode="MultiLine" Width="450px" Placeholder="program"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="400px" TextMode="MultiLine" Width="450px" Placeholder="output"></asp:TextBox>
                </td>
                
            </tr>
            
        </table>

        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="COMPILE" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="EXECUTE" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="SAVE" OnClick="Button3_Click" />
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>
