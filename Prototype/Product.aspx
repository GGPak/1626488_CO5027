<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Prototype.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Product Details
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductDesc:
                <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />

                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />

                ProductImage:
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' alt="Product Image"/>
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626488_co5027_asgConnectionString2 %>" SelectCommand="SELECT * FROM [tblProducts] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblQuantity" runat="server" Text="Quantity: "></asp:Label>
        <asp:DropDownList ID="DDLQuantity" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
        <p></p>
        <asp:Button ID="btnBuyNow" runat="server" Text="Buy Now" OnClick="btnBuyNow_Click" />
    </form>
</asp:Content>
