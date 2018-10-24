<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Prueba3.Formulario_web1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    
   <p class="right">
        <asp:Label ID="Label1" runat="server" Text="Bienvenido"></asp:Label>
        <asp:Label ID="usuario" runat="server"></asp:Label>
    <p class="right">
        <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesión" />
    <p class="right">
        <br />

</asp:Content>
