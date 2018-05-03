<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Prototype.admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    List of Products
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    List of Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Image">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Edit.aspx?Id={0}" HeaderText="Actions" Text="Edit" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626488_co5027_asgConnectionString2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblProducts] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([ProductName], [ProductID], [ProductDesc], [Quantity], [Price], [ProductImage]) VALUES (@ProductName, @ProductID, @ProductDesc, @Quantity, @Price, @ProductImage)" UpdateCommand="UPDATE [tblProducts] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [Quantity] = @Quantity, [Price] = @Price, [ProductImage] = @ProductImage WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))">
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
        <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" style="height: 22px" Text="Back" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
