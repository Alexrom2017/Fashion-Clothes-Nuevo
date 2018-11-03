using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;

namespace Prueba3
{
    public partial class Clientes : System.Web.UI.Page
    {
        string cadenaConexion = @"Data Source=sql7003.site4now.net;Persist Security Info=True;User ID=DB_A4212A_FashionClothes_admin;Password=75082282Alex";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            var conn = new N3();
            SqlConnection n2 = new SqlConnection(cadenaConexion);
            var User1 = new Usuarios()
            {

                IdEmpresa = 1,
                Nombre = txtNombre.Text,
                Apellido = txtApellido.Text,
                NickName = txtNickName.Text,
                Contraseña = txtContraseña.Text,
                TipoUsuaro = 2,
                //Direccion = txtDireccion.Text,
                Correo = txtCorreo.Text,
                Telefono = txtTelefono.Text
            };

            var cmd = new SqlCommand(cadenaConexion);
            int tamaño = FuploadImgen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tamaño];

            FuploadImgen.PostedFile.InputStream.Read(ImagenOriginal, 0, tamaño);

            Bitmap imagenOriginalBinaria = new Bitmap(FuploadImgen.PostedFile.InputStream);

            //Insertar en la base de datos

            cmd.CommandText = "INSERT INTO Imagenes(Imagen) VALUES (@imagen)";
            cmd.Parameters.Add("@imagen", SqlDbType.Image).Value = ImagenOriginal;

            cmd.CommandType = CommandType.Text;
            cmd.Connection = n2;
            n2.Open();
            cmd.ExecuteNonQuery();
            conn.Usuarios.Add(User1);
            conn.SaveChanges();
            Response.Redirect("~/Iniciar Sesion.aspx");


            ////****************************************************************************************************************************



        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            int tamaño = FuploadImgen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tamaño];

            FuploadImgen.PostedFile.InputStream.Read(ImagenOriginal, 0, tamaño);

            Bitmap imagenOriginalBinaria = new Bitmap(FuploadImgen.PostedFile.InputStream);


            System.Drawing.Image nImage;
            int tamañonew = 200;
            nImage = Redimensionar(imagenOriginalBinaria, tamañonew);
            byte[] bImagen = new byte[tamañonew];
            ImageConverter convert = new ImageConverter();
            bImagen = (byte[])convert.ConvertTo(nImage, typeof(byte[]));


            string imagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(bImagen);
            ImgPreview.ImageUrl = imagenDataURL64;

        }
        public System.Drawing.Image Redimensionar(System.Drawing.Image ImagenOriginal, int Alto)
        {
            var Radio = (double)Alto / ImagenOriginal.Height;
            var NuevoAncho = (int)(ImagenOriginal.Width * Radio);
            var NuevoAlto = (int)(ImagenOriginal.Height * Radio);
            var NuevaImagen = new Bitmap(NuevoAncho, NuevoAlto);
            var g = Graphics.FromImage(NuevaImagen);
            g.DrawImage(ImagenOriginal, 0, 0, NuevoAncho, NuevoAlto);
            return NuevaImagen;
        }
    }
}