using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        N1 b1 = new N1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (b1.Usuarios == null)
            {
                Response.Redirect("~/Inicio Sesion.aspx");

            }
            else
            {
                usuario.Text = Convert.ToString(b1.Usuarios.Where(x => x.IdUsuario == 1).First().NickName);
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            b1.Usuarios = null;
            Response.Redirect("~/Iniciar Sesion.aspx");
        }
    }
}