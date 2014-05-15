using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HolaMundo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           if (!IsPostBack)
           {

           }

        }

        protected void SumarButton_Click(object sender, EventArgs e)
        {
             ResultadoLabel.Text = (int.Parse( N1TextBox.Text ) + Convert.ToInt32( N2TextBox.Text)).ToString ();
        }

   
    }
}