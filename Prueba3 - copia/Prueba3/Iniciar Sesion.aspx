﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Iniciar Sesion.aspx.cs" Inherits="Prueba3.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <html>

        <head>
            <link href="css1/bootstrap.min.css" type="text/css" rel="stylesheet">
        </head>
        <br />

    <asp:Panel ID="Panel1" runat="server" BackColor="#9D9D93"  >
                    <br /> 
                    <center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC00CC" Text="Iniciar Sesion"></asp:Label>
                    <br />
                    <br />

                    <asp:Label ID="Label2" runat="server" ForeColor="#6600CC" Text="Usuario"></asp:Label>
                  <br />                   
                    <asp:TextBox ID="txtNombreUsuario" runat="server" Width="400px" ForeColor="#3333FF" class="form-control"></asp:TextBox>
                    <br />
      
            
                    <asp:Label ID="Label3" runat="server" Text="Contraseña" ForeColor="#6600CC"></asp:Label>
               
                    <br />
               
                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" Width="400px" ForeColor="#3333FF" class="form-control"></asp:TextBox>
                        <br />
                    <br />
 
                    <asp:Button ID="btnIniciarSesion" runat="server" Height="43px" Text="Iniciar" Width="400px" ForeColor="#FFFFFF" class="btn btn-primary" OnClick="btnIniciarSesion_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [NickName], [Contraseña] FROM [Usuarios]"></asp:SqlDataSource>
                    <br />
                    <br />
          
                </asp:Panel>
        <br />
                </center>
        </html>
  
</asp:Content>
