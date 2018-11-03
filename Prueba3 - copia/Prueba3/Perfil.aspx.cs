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
        N3 b1 = new N3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DatosEstaticos.TipoUser != "Cliente" && DatosEstaticos.logeado != true)
            {
                
                Response.Redirect("~/Iniciar Sesion.aspx");
            }
            else this.usuario.Text = new N3().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().NickName;


        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            DatosEstaticos.TipoUser = "nada";
            DatosEstaticos.logeado = false;
            Response.Redirect("~/Iniciar Sesion.aspx");
        }
    }
}