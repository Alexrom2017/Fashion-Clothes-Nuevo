using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Finalizar : System.Web.UI.Page
    {
        public N5 db = new N5();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //-----* ESTE CODIGO YA NO FUNCIONA SOLO EL DE CANTIDAD Y CATALOGO ---
            // YA QUE EN ESTE SE LE AGREGA LOS CAMPOS QUE HACEN FALTA EN CAMBIO EN EL DE COMPRA SOLO SE LE AGREGARA EL PROVEEDOR QUE SE LE COMPRO
            //Y LA CANTIDAD PARA QUE GENERE LA SUMA



            //if (Session["IdCompra"] == null)
            //{
            //    Response.Redirect("Catalogo.aspx");
            //}
            //else
            //{
            //    var id = int.Parse(Session["IdCompra"].ToString());

            //    var compra = db.Compras.Find(id);

            //    //compra.Destino = txtDestino.Text;
            //    //compra.DireccionDestion = txtDireccion.Text;
            //    //compra.Departamento = txtDepartamento.Text;

            //    int cont = compra.DetalleCompra.ToList().Count;
            //    int i = 0;

            //    foreach (var item in compra.DetalleCompra)
            //    {
            //        var stock = db.Stock.Where(c => c.IdProducto == item.Productos.IdProductos).First();
            //        var suma = stock.CantidadTotal +item.Unidades;
            //        stock.CantidadTotal = suma;


            //        if (db.SaveChanges() > 0)
            //        {
            //            i++;
            //        }
            //    }

            //    if (cont == i)
            //    {
            //        Session["IdVenta"] = null;
            //        Response.Redirect("Catalogo.aspx");
            //    }
            //}
        }
    }
}