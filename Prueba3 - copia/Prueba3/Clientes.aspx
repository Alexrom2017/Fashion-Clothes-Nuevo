<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Prueba3.Clientes" %>
           <%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>--%>
           <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
               <br />
               <!DOCTYPE html>

        <html>
        <head>
               <link href="css1/bootstrap.min.css" type="text/css" rel="stylesheet"> 
        </head>
     <div class="container">
         <div class="row">
            <div class="col-md-4" style="left:5%;">
                <br />
                <br />
                <br />
                <br />
             
                Agregar Imagen:
                
                <br />
                <br />
                <asp:Image ID="ImgPreview" Width="200" imageUrl="~/Imagenes/login.jpg" runat="server" />
                <br />
             
                Archivo:
                <asp:FileUpload Width="50%" ID="FuploadImgen" accept=".jpg" runat="server" CssClass="form-control"  />
                <br />
                <asp:Button ID="btnSubir" runat="server" Text="Vista Previa" class="btn btn-primary" Width="50%" OnClick="btnSubir_Click"/>

                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Imagen] FROM [Imagenes]"></asp:SqlDataSource>

            </div>       
       
           <div class="col-md-8" style="left:5%;">
       
          
           <br />

       <form action="" method="post" enctype="multipart/form-data">
                <asp:Label ID="Label4" runat="server" Text="Registro" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <br/>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" class="form-control" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar su nombre" BorderStyle="Dashed"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Apellido"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server" class="form-control" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderStyle="Dashed" ControlToValidate="txtApellido" ErrorMessage="Debe ingresar su apellido"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Correo" ></asp:Label>
                <br />
                <asp:TextBox ID="txtCorreo" runat="server" class="form-control" Width="50%"></asp:TextBox>
                <asp:Label ID="Label12" runat="server" Text="Nombre de Usuario" ></asp:Label>
                <asp:TextBox ID="txtNickName" runat="server" class="form-control" Width="50%"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox ID="txtContraseña" runat="server" class="form-control" Width="50%" EnableTheming="False" TextMode="Password"></asp:TextBox>
                <%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>--%>
                <asp:Label ID="Label11" runat="server" Text="Confirmar Contraseña"></asp:Label>
                <asp:TextBox ID="txtConfirmarContraseña" runat="server" class="form-control" Width="50%" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Direccion:"></asp:Label>
                <br />
                <asp:TextBox ID="txtDireccion" runat="server" class="form-control" Width="50%"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Telefono:"></asp:Label>
                <br />
                <asp:TextBox ID="txtTelefono" runat="server" class="form-control" Width="50%"></asp:TextBox>
                <br />
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="50%" class="btn btn-primary" OnClick="btnAgregar_Click"/>
                <br />
                <br />
                <br />
                </form>
                </div>
             </div>
         </div>
        </html>
</asp:Content>
