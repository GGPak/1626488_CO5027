<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Prototype.admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Add Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Add Product
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
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
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:LinkButton ID="lnkbtnSave" runat="server" OnClick="lnkbtnSave_Click">Save Image</asp:LinkButton>
                <asp:Label ID="lblResult" runat="server" Text='<%# Bind("ProductImage") %>'></asp:Label>
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
                <asp:Label ID="ProductImageLabel" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626488_co5027_asgConnectionString2 %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([ProductName], [ProductID], [ProductDesc], [Quantity], [Price], [ProductImage]) VALUES (@ProductName, @ProductID, @ProductDesc, @Quantity, @Price, @ProductImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts]" UpdateCommand="UPDATE [tblProducts] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [Quantity] = @Quantity, [Price] = @Price, [ProductImage] = @ProductImage WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_ProductImage" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="ProductImage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="ProductImage" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_ProductImage" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
        </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
