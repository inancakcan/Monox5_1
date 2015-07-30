<%@ Page Title="" Language="C#" MasterPageFile="~/MonoX/MasterPages/Default.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjectName.Web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpTop" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cp" runat="server">
    <asp:Button runat="server" ID="btnDene" Text="Dene" OnClick="btnDene_Click"/>
    <asp:TextBox runat="server" ID="txtDene"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpBottom" runat="server">
</asp:Content>
