using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Compras1 : System.Web.UI.Page
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
            var compras = new Compras()
            {
                IdUsuario= Convert.ToInt16(TxtIdEmpleados.Text),
                IdProveedores = Convert.ToInt32(TxtIdProveedores.Text),
                FechaCompra= Convert.ToDateTime(TxtFecha.Text),
            };
            conn.Compras.Add(compras);
            conn.SaveChanges();
            Response.Redirect("~/Compras Registradas.aspx");
        }
    }
}