using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using System.Data;

namespace HolaMundo.ControlPanel
{
    public partial class CivilStateQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            //creamos una instancia de nuestra capa de datos que nos permitira ejecutar comandos
            DatabasePersistence oData = new DatabasePersistence ();

            DataTable dt;

            dt = oData.GetData("Select *  from CivilStates"); //pedimos los datos

            Label1.Text = dt.Rows.Count.ToString(); //lo usamos.

        }
    }
}