
	<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AgregarProductos.aspx.cs" Inherits="Prueba3.AgregarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!doctype html>

        <html>

        <head>
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css"></link>
        </head>
        
                    
           <div class="container">         
                <div class="row">
                    <div class="col-md-6">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
  <%--*********************************************************************************************************--%>                
                    <div class="col-md-8">   
                    <br />
                    <br />
                        <asp:Label ID="Label7" runat="server" Text="Agregar Producto" Font-Bold="True" Font-Size="X-Large"></asp:Label>        <br />                        
                    <br />
                    <br />
                        <asp:Label ID="Label4" runat="server" Text="Nombre:"></asp:Label>
                        <asp:TextBox ID="TextNom" runat="server" class="form-control" Width="100%"></asp:TextBox>
                    <br />
                    <br />
                        <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
                        <asp:TextBox ID="TextDesp" runat="server" class="form-control" Width="100%"></asp:TextBox>
                    <br />
                    <br />
                        <asp:Label ID="Label8" runat="server" Text="Proveedores:"></asp:Label>
                        <asp:TextBox ID="TextProe" runat="server" class="form-control" Width="100%"></asp:TextBox>
                    <br />
                    <br />
                        <asp:Label ID="Label5" runat="server" Text="Precio de Compra:"></asp:Label>
                        <asp:TextBox ID="txtPrecioCompra" runat="server" class="form-control" Width="100%"></asp:TextBox>
                    <br />
                    <br />    
                        <asp:Label ID="Label6" runat="server" Text="Precio de Venta:"></asp:Label>
                        <asp:TextBox ID="txtPrecioVenta" runat="server" class="form-control" Width="100%"></asp:TextBox>
                    <br />
                    <br />    
                        <asp:Label ID="Label3" runat="server" Text="Categoria:"></asp:Label>
                        <asp:DropDownList class="form-control"  ID="DDLCategoria" runat="server" Width="100%" DataTextField="Nombre" DataValueField="Nombre" >
                        </asp:DropDownList>
                    <br />
                    <br />
                    <br />      
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" Width="100%" OnClick="Button1_Click"/>
                    <br />              
                        <br />
                        <br />
                        <br />

               
<%--**********************************************************************************************************************************************--%>                    
                        
                        
                        </div>
                        </div>
                        </div>
                    </div>
               </div>
<%--**********************************************************************************************************************************************--%>                    

    </html>
    
</asp:Content>
