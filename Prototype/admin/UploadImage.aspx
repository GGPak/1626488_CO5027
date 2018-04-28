<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Prototype.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Upload Image
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Upload Image
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Upload Image
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <p></p>
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />

    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" style="height: 22px" />
        <p></p>
        <asp:Image ID="CurrentImage1" runat="server" alt="Product Image"/>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
