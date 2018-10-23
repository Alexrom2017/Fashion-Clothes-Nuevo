using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class AgregarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var conn = new N1();
            var n2 = new Productos()
            {

                IdProductos = 1,
                Nombre = TextNom.Text,
                //Descripcion = TextDesp.Text,
                //Proveedor = TextProe.Text,
                PrecioCompra = Convert.ToDecimal(txtPrecioCompra.Text),
                PrecioVenta = Convert.ToDecimal(txtPrecioVenta.Text),
                IdCategoria = 1,
            };
            conn.Productos.Add(n2);
            conn.SaveChanges();
            Response.Redirect("~/AgregarProductos.aspx");
        }
    }
}