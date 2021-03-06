﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prototype.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <p>If you have any feedback, don't be afraid to contact us!</p>

    <br />

    <p>Instagram: Logitech Speaker BN</p>
    <p>Facebook: Logitech Speaker BN</p>
    <p>Twitter: Logitech Speaker BN</p>
    <p>Email: Fakhrul.1022@gmail.com</p>
    <p>Telephone Number: +673 2226111</p>

    <br />

    <p>Enter the form below if there is any problem</p>

    <form id="form1" runat="server">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>

        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is invalid" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="reqFieldField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>

        <p></p>

<asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>

<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ErrorMessage="Please enter your subject" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
        
        <p></p>

<asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>

<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>

<asp:RequiredFieldValidator ID="reqBodyField" runat="server" ErrorMessage="Please insert a comment." ControlToValidate="txtBody"></asp:RequiredFieldValidator>
        
        <p></p>

<asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" />

<asp:Literal ID="litResult" runat="server"></asp:Literal>

    </form>

</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="GoogleMap">
    <div id="map"></div>
    <script>
        var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: { lat: 4.885731, lng: 114.931669 },
          zoom: 17
          });

          var marker = new google.maps.Marker({
              position: { lat: 4.885731, lng: 114.931669 },
              map: map
          })
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBdBfUT3oC4smPeZauwv694dvrkz4dmjsQ&callback=initMap"
    async defer></script>
</asp:Content>