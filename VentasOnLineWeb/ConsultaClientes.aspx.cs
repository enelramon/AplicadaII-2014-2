using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

using DataLayer;

namespace VentasOnLineWeb
{
    public partial class ConsultaClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            DatabasePersistence oData = new DatabasePersistence();

            ClientesGridView.DataSource = oData.GetData("Select * from clientes where Nombres like '%" + NombresTextBox.Text.Trim() + "%'");
            ClientesGridView.DataBind();


        }

       
    }
}