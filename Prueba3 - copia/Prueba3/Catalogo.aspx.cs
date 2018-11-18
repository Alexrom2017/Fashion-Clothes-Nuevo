using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
   
    public partial class Catalogo : System.Web.UI.Page
    {
        
        public N5 db = new N5();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnFinalizar_Click(object sender, EventArgs e)
        {
            //ESTO ES PARA GENERAR COMPRA DEL LADO DEL ADMINISTRADOR
            if (Session["IdCompra"] == null)
            {
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                var id = int.Parse(Session["IdCompra"].ToString());

                var compra = db.Compras.Find(id);

                //compra.Destino = txtDestino.Text;
                //compra.DireccionDestion = txtDireccion.Text;
                //compra.Departamento = txtDepartamento.Text;

                int cont = compra.DetalleCompra.ToList().Count;
                int i = 0;

                foreach (var item in compra.DetalleCompra)
                {
                    var stock = db.Stock.Where(c => c.IdProducto == item.Productos.IdProductos).First();

                    stock.CantidadTotal = stock.CantidadTotal + item.Unidades;


                    if (db.SaveChanges() > 0)
                    {
                        i++;
                    }
                }

                if (cont == i)
                {
                    Session["IdCompra"] = null;
                    Response.Redirect("Catalogo.aspx");
                }
            }
        }
        //Response.Redirect("Finalizar.aspx");
    }
 }
