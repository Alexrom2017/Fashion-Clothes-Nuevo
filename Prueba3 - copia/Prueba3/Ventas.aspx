<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Prueba3.Ventas" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="right">
        &nbsp;<p class="right">
        &nbsp;<dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="Agregar Detalles de Ventas" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
           <p class="right">
        <html>
                
           <div class="col-md-8" style="left:5%;">
       
           <br />

       <form action="" method="post" enctype="multipart/form-data">
                <asp:Label ID="Label4" runat="server" Text="Ventas" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <br/>
                <div class="center">
              <asp:Panel ID="Panel1" runat="server" Height="400px" HorizontalAlign="Center" style="margin-left: 311px" Width="50%">
                    <asp:Label ID="Label5" runat="server" Text="ID Usuario"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtIdUsuario" runat="server" Height="23px" TextMode="Number" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtIdUsuario" ErrorMessage="*" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Fecha de venta"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtFecha" runat="server" Height="23px" TextMode="Date" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFecha" ErrorMessage="*" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Destino"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtDestino" runat="server" Height="23px" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDestino" ErrorMessage="*" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Direccion de destino"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtDireccion" runat="server" Height="23px" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="*" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Departamento"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtDepartamento" runat="server" Height="23px" Width="259px"></asp:TextBox>
                    <br />
                    <br />
                    <table cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td style="width: 244px; height: 26px;">
                                <dx:ASPxButton ID="BtnAgregar" runat="server" Height="16px" OnClick="BtnAgregar_Click" Text="Agregar" Width="166px">
                                </dx:ASPxButton>
                            </td>
                            <td style="height: 26px; text-align: left">
                                <dx:ASPxButton ID="BtnCancenlar" runat="server" Height="16px" Text="Cancelar" Width="166px">
                                </dx:ASPxButton>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 244px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;</asp:Panel>
                </div>
                <br />
                <br />
                <br />
                
                </form>
                </div>
             </div>
         </div>
        </html>
<p class="right">
    <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" NavigateUrl="~/Ventas Registradas.aspx" Text="Ventas Registradas" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p class="right">
        &nbsp;</p>
</asp:Content>
