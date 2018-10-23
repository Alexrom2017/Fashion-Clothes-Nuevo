using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Prueba3
{
    public class Conexion
    {
        public string cadenaConexion;
        protected string sql;
        protected int resultado;
        protected SqlConnection cnn;
        protected SqlCommand comandosSQL;
        protected string mensaje;

        public Conexion()
        {
            this.cadenaConexion = (@"Data Source=sql7003.site4now.net;Persist Security Info=True;User ID=DB_A4212A_FashionClothes_admin;Password=75082282Alex");
            this.cnn = new SqlConnection(this.cadenaConexion);
        }

        public string Mensaje()
        {
            {
                return this.mensaje;
            }
        }

    }
    
}