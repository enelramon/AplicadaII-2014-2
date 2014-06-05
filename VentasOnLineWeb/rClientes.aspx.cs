using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinesLogicLayer;

namespace VentasOnLineWeb
{
    public partial class rClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton1_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();

            cliente.Nombres = NombresTextBox.Text;
            cliente.Empresa = EmpresaTextBox.Text ;

           if (cliente.Insertar())
           {
               Response.Redirect("~/ConsultaClientes.aspx");

           }


        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            if (cliente.Buscar(Convert.ToInt16(CodigoTextBox.Text)))
            {
                NombresTextBox.Text = cliente.Nombres ;
                EmpresaTextBox.Text = cliente.Empresa ;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             Clientes cliente = new Clientes();
            if (cliente.Buscar(Convert.ToInt16(CodigoTextBox.Text)))
            {
                Clientes.Eliminar(Convert.ToInt16 ( CodigoTextBox.Text ));
            }
        }

     
 

     
    }
}