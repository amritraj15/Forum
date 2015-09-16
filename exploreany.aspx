<%@ Page Language="C#" MasterPageFile="~/anonymous.master" AutoEventWireup="true" CodeFile="exploreany.aspx.cs" Inherits="exploreany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 750px">
         <asp:Label ID="Label2" runat="server" Text="EXPLORE C#" Height="50px" Width="900px" Font-Size="XX-Large"></asp:Label>
       
         <br />
         <br />
         <br />
         <br />
         <br />
         <asp:Label ID="Label3" runat="server" Height="25px" Text="CHOSE THE CATEGORY" Width="266px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="297px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="topic" DataValueField="topic">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCon %>" SelectCommand="SELECT [topic] FROM [Explore]"></asp:SqlDataSource>
         <br />
         <br />
         <br />
         <br />
         <br />
         <asp:TextBox ID="TextBox1" runat="server" Height="401px" TextMode="MultiLine" Width="929px"></asp:TextBox>
       
    </div>
</asp:Content>

