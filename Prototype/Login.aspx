<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prototype.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    
    <form id="form1" runat="server">

    <asp:Label ID="lblLoginEmail" runat="server" Text="Email"></asp:Label>
    
    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>

    <p></p>

    <asp:Label ID="lblLoginPassword" runat="server" Text="Password"></asp:Label>
    
    <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>

    <p></p>

    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

    <p></p>

    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>

    </form>
</asp:Content>
