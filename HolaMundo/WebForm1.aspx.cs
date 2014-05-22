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

        protected void Button1_Click(object sender, EventArgs e)
        {
            // las operaciones de consulta LINQ se componen de tres acciones distintas:

            //  1. Obtención del origen de datos.

            int[] numbers = new int[11] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

            // 2. Creación de la consulta.

            var numQuery =
                from num in numbers
                where (num % 2) == 0
                select num;

            // 3. Ejecución de la consulta.

            MyLabel.Text = @"<table border=1>";

            foreach (int num in numQuery)
            {

                MyLabel.Text += @"<tr><td>num</td><td>" + num.ToString()  + "</td></tr> ";
            }

            MyLabel.Text += @"</table>";
            //Console.ReadKey();
        }

     

   
    }
}