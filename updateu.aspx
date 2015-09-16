<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="updateu.aspx.cs" Inherits="updateu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 750px">

        <asp:Label ID="Label1" runat="server" Text="UPDATE PROFILE" Width="900PX" Height="50PX" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="CHANGE PROFILE PICTURE" Font-Size="25PX"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td>UPLOAD A PHOTO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="247px" />
                </td>
                
            </tr>
           <tr>
                <td>
                   <CENTER> <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="37px" Width="79px" OnClick="Button1_Click" /></CENTER>
                </td>
                
            </tr>
           <tr>
                <td><CENTER><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></CENTER>&nbsp;</td>
                
            </tr>
           
        </table>

        <br />
        <br />
        <br />
        <br />
        <br />
         <asp:Label ID="Label3" runat="server" Text="CHANGE PASSWORD" Font-Size="25PX"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td>ENTER NEW PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox1" ErrorMessage="PASSWORD DID NOT MATCH"></asp:CompareValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
                
            </tr>
           <tr>
                <td>
                   
                    CONFIRM PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                   
                </td>
                
            </tr>
           <tr>
                <td>ENTER THE PRESENT PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="33px" Text="SUBMIT" Width="74px" OnClick="Button2_Click" />
                </td>
                
            </tr>
            <tr>
                <td>
                    <center> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></center>
                </td>
            </tr>
           
        </table>

    </div>
    
</asp:Content>
