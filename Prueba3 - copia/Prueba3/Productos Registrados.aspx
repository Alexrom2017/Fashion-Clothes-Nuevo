<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Productos Registrados.aspx.cs" Inherits="Prueba3.Formulario_web3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<div class="col-md-8">
                        <asp:Label ID="Label1" runat="server" Text="Buscar "></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="348%" class="form-control" ></asp:TextBox>
                        <br />
                        <br />
                      

                        <asp:GridView class="jcarousel-container" ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProductos" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="IdProductos" HeaderText="IdProductos" ReadOnly="True" SortExpression="IdProductos" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="PrecioCompra" HeaderText="PrecioCompra" SortExpression="PrecioCompra" />
                                <asp:BoundField DataField="PrecioVenta" HeaderText="PrecioVenta" SortExpression="PrecioVenta" />
                                <asp:BoundField DataField="Detalles" HeaderText="Detalles" SortExpression="Detalles" />
                                <asp:BoundField DataField="IdCategoria" HeaderText="IdCategoria" SortExpression="IdCategoria" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
</asp:Content>
