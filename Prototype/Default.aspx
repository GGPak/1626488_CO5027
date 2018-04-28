<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prototype.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Logitech Homepage
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Logitech Homepage
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>

            <ItemTemplate>
                <li>
                    <a href="<%#Eval("ProductID", "Product.aspx?Id={0}") %>">
                        <%#Eval("ProductName")%>
                        <asp:Image ID="disp" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
                    </a>
                </li>
            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626488_co5027_asgConnectionString2 %>" SelectCommand="SELECT * FROM [tblProducts]"></asp:SqlDataSource>
    </form>
</asp:Content>
