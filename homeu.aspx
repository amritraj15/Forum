<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="homeu.aspx.cs" Inherits="homeu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 200px;
            height: 82px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 750px">
        
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Height="50px" Text="YOUR PROFILE" Width="900px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="width:100%; height: 280px;">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/NewU.aspx">WRITE A NEW C# PROGRAM</asp:HyperLink>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/OpenU.aspx">OPEN PREVIOUSLY COMPILED PROGRAMS</asp:HyperLink>
                </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/UpdateU.aspx">UPDATE YOUR PROFILE INFORMATION</asp:HyperLink>
                </td>
                
            </tr>
        </table>
        
    </div>
</asp:Content>


