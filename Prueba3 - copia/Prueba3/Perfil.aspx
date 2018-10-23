<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Prueba3.Formulario_web1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p class="right">
        <asp:Label ID="Label1" runat="server" Text="Bienvenido"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="usuario" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="right">
        <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesión" />
    </p>
    <p class="right">
        <br />
    </p>
</asp:Content>
