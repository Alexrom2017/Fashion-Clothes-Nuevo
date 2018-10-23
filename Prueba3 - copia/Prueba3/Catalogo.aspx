<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Prueba3.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!doctype html>

        <html>

        <head>
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css"></link>
        </head>


   <div class="contenedor">

        <asp:Label ID="Label1" runat="server" Text="Catalogo de Compras"></asp:Label>
        <br />
        <br />
        <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DataList  class="container" ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyField="IdProductos" DataSourceID="SqlDataSource1" GridLines="Horizontal" RepeatColumns="4" RepeatDirection="Horizontal">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="White" ForeColor="#333333" />
                        <ItemTemplate>
                            IdProductos:
                            <asp:Label ID="IdProductosLabel" runat="server" Text='<%# Eval("IdProductos") %>' />
                            <br />
                            Nombre:
                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                            <br />
                            PrecioCompra:
                            <asp:Label ID="PrecioCompraLabel" runat="server" Text='<%# Eval("PrecioCompra") %>' />
                            <br />
                            PrecioVenta:
                            <asp:Label ID="PrecioVentaLabel" runat="server" Text='<%# Eval("PrecioVenta") %>' />
                            <br />
                            Detalles:
                            <asp:Label ID="DetallesLabel" runat="server" Text='<%# Eval("Detalles") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoMiraConnectionString %>" SelectCommand="SELECT [IdProductos], [Nombre], [PrecioCompra], [PrecioVenta], [Detalles] FROM [Productos]"></asp:SqlDataSource>
       </div>
            </html>
</asp:Content>
