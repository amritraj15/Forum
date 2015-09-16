<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="openu.aspx.cs" Inherits="openu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 750px">
        <asp:Label ID="Label1" runat="server" Text="OPEN PREVIOUS PROGRAMS" Height="50PX" Width="900PX" Font-Size="XX-Large"></asp:Label>

        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Height="25px" Text="LIST OF PROGRAM" Width="900px"></asp:Label>
        <br />
        <br />
        <br />
        <CENTER>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_name" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="p_name" HeaderText="p_name" ReadOnly="True" SortExpression="p_name" />
                    <asp:BoundField DataField="u_id" HeaderText="u_id" SortExpression="u_id" />
                    <asp:TemplateField HeaderText="path" SortExpression="path">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("path") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("path") %>'>Download</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCon %>" SelectCommand="SELECT * FROM [Program] WHERE ([u_id] = @u_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="u_id" SessionField="u_id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </CENTER>
        

    </div>
    <div style="height: 500px">
        <asp:TextBox ID="TextBox1" runat="server" Height="450px" TextMode="MultiLine" Width="900px"></asp:TextBox>

    </div>
</asp:Content>

