<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Prueba3.Compras1" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p class="right">
        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="Agregar detalle de compra" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <html>
                
           <div class="col-md-8" style="left:5%;">
       
           <br />

       <form action="" method="post" enctype="multipart/form-data" class="center">
                <asp:Label ID="Label4" runat="server" Text="Registrar compras" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <br/>
                <div class="center">
              <asp:Panel ID="Panel1" runat="server" Height="400px" HorizontalAlign="Center" style="margin-left: 311px" Width="50%">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="ID Empleados"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtIdEmpleados" runat="server" Height="23px" TextMode="Number" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtIdEmpleados" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="ID Proveedores"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtIdProveedores" runat="server" Height="23px" TextMode="Number" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtIdProveedores" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Fecha de Compra"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtFecha" runat="server" Height="23px" TextMode="Date" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFecha" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td style="width: 244px; height: 26px;">
                                <dx:ASPxButton ID="BtnAgregarCompra" runat="server" Height="16px" OnClick="BtnAgregar_Click" Text="Agregar" Width="166px">
                                </dx:ASPxButton>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <dx:ASPxButton ID="BtnCancenlarCompra" runat="server" Height="16px" Text="Cancelar" Width="166px">
                                </dx:ASPxButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 244px">&nbsp;</td>
                            <td>
                                <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" NavigateUrl="~/Compras Registradas.aspx" Text="Compras Registradas" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;</asp:Panel>
                </div>
                <div class="right">
                <br />
                <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                </form>
                </div>
                </div>
             </div>
         </div>
        </html>
<p class="right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
</asp:Content>
