<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="homead.aspx.cs" Inherits="homead" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 750px">
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Height="50px" Text="ADMIN PROFILE" Width="900px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="width:100%; height: 339px;">
            
            
            <tr>
                <td>
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/reviewad.aspx">REVIEW USER ACTIVITY</asp:HyperLink>
                </td>
               
            </tr>
            
        </table>
    </div>
</asp:Content>


