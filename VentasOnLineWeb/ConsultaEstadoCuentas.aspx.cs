using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinesLogicLayer;
using System.Data;

namespace VentasOnLineWeb
{
    public partial class ConsultaEstadoCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable() ;



            dt = Clientes.GetEstadoCuenta(1, new DateTime(2012 ,1,1), new DateTime(2014,12,31));

            ResultadoGridView.DataSource = dt;
            ResultadoGridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}