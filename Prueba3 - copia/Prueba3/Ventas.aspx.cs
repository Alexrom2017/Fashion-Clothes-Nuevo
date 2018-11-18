using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DatosEstaticos.TipoUser != "Cliente" && DatosEstaticos.logeado != true)
            {

                Response.Redirect("~/Iniciar Sesion.aspx");
            }

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            var conn = new N5();
            var ventas = new Pedidos()
            {
                IdUsuario = Convert.ToInt32(TxtIdUsuario.Text),
                FechaPedido = Convert.ToDateTime(TxtFecha.Text),
                Destino = TxtDestino.Text,
                DireccionDestion = TxtDireccion.Text,
                Departamento = TxtDepartamento.Text
            };
            conn.Pedidos.Add(ventas);
            conn.SaveChanges();
            Response.Redirect("~/Ventas Registradas.aspx");
           
        }
    }
}