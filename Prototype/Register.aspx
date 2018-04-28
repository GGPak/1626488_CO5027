<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Prototype.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

    <p></p>

    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

    <p></p>

    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />

    <p></p>

    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

    </form>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
