<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Finalizar.aspx.cs" Inherits="Prueba3.Finalizar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Destino: <asp:TextBox ID="txtDestino" runat="server"></asp:TextBox>
    <br />
    Dirección: <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
    <br />
    Departamento: <asp:TextBox ID="txtDepartamento" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />

</asp:Content>
