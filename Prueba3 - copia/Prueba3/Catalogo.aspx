<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Prueba3.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css1/bootstrap.min.css" rel="stylesheet" />
    <br />
    <br />
    <br />

   
    <div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:lightskyblue; border:solid; border-style:solid;">
        <br />
        <asp:Label ID="BuscarP" runat="server" Text="Buscar: "></asp:Label>

        <asp:TextBox CssClass="form-control" Width="40%" ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button CssClass="btn btn-block btn-lg btn-primary" Width="40%" ID="btnBuscar" runat="server" Text="Buscar" />
        <br />
    </div>
      <br />
    <asp:Button ID="BtnFinalizar" runat="server" CssClass="btn btn-primary btn-block" Text="Efectuar compra" OnClick="BtnFinalizar_Click" />

   <div class="container" style="background-color:lightskyblue; border:solid; border-style:solid; width:80%;">
       <br />
        <br />
        <div class="row">
    <% foreach (var producto in new Prueba3.N5().Productos)
        { %>
    <div class="col-md-4">
        <div class="card bg-light" style="width:80%;  margin-left:10%; margin-right:10%;">
            <div class="card-body">
            <asp:Label ID="NombreProducto" runat="server" Text="Label"></asp:Label>
            <% NombreProducto.Text = producto.Nombre;%>
           
            <asp:Label ID="DetallesP" runat="server" Text="Label"></asp:Label>
            <% DetallesP.Text = "Detalles: " + producto.Detalles;%>
              <hr />
                <asp:Label ID="CategoriaP" runat="server" Text="Label"></asp:Label>
            <% CategoriaP.Text = "Categoria: " + producto.IdCategoria.ToString();%>
         
            </div>
            
            <div class="card-footer">
            <asp:Label ID="PrecioV" runat="server" Text="Label"></asp:Label>
            <% PrecioV.Text = producto.PrecioVenta.ToString();%>
                <hr />
                <asp:HyperLink ID="HyperLink1" CssClass="btn btn-primary btn-block" runat="server">Comprar</asp:HyperLink>
                <% HyperLink1.NavigateUrl = "Cantidad.aspx?id=" + producto.IdProductos;%>
                
             
            </div>

            </div>
      
          
        <br />
      
          
        </div>
    <%} %>
       </div>
      
   </div>
    <br />
    <br />
  
</asp:Content>

 

