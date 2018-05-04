<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prototype.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Logitech Homepage
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><div></HeaderTemplate>

            <ItemTemplate>
                <div>
                    <a href="<%#Eval("ProductID", "Product.aspx?Id={0}") %>">
                        <asp:Image ID="disp" runat="server" ImageUrl='<%# Eval("ProductImage") %>'  alt="Product Image"/>
                        <p><%#Eval("ProductName")%></p>
                        <br />
                    </a>
                </div>
            </ItemTemplate>

            <FooterTemplate></div></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626488_co5027_asgConnectionString2 %>" SelectCommand="SELECT * FROM [tblProducts] WHERE ([Quantity] &gt; @Quantity)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Quantity" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
