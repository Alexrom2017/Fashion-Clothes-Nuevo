<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Cantidad.aspx.cs" Inherits="Prueba3.Cantidad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    proveedor: <asp:DropDownList ID="ListProveedor" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="IdProveedor"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString6 %>" SelectCommand="SELECT * FROM [Proveedores]"></asp:SqlDataSource>
    Cantidad: <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>

    <asp:Button ID="btnCantidad" runat="server" Text="Agregar" OnClick="BtnCantidad_Click" />

</asp:Content>
