using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataLayer;

namespace BussinesLogicLayer
{
   public  class Clientes
    {
        public int CodigoCliente { get; set; }

        public String  Nombres { get; set; }

        public String Empresa { get; set; }


        public static  DataTable GetEstadoCuenta(int codigoCliente , DateTime desde , DateTime hasta)
        {
            DataTable dt = new DataTable();

            DatabasePersistence oData = new DatabasePersistence();

            dt = oData.GetData("Sp_EstadoCuentaCliente " + codigoCliente + ",'" + desde.ToString("MM/dd/yyyy") + "','" + hasta.ToString("MM/dd/yyyy") + "'");

            return dt;
        }

        public Boolean Insertar()
        {
         
            DatabasePersistence oData = new DatabasePersistence();

            return oData.SaveData("Insert into Clientes(Nombres,Empresa) Values('" + this.Nombres  +"','" + this.Empresa  +"')");

        }

        public static Boolean Eliminar(int Codigo)
        {
            DatabasePersistence oData = new DatabasePersistence();

            return oData.SaveData("Delete from clientes where codigocliente=" + Codigo);
        }

        public Boolean Buscar(int Codigo)
        {
            DatabasePersistence oData = new DatabasePersistence();
            DataTable dt = new DataTable();

            dt = oData.GetData("Select * from clientes where codigocliente=" + Codigo);

            if (dt.Rows.Count>0)
            {
                this.CodigoCliente = Convert.ToInt16( dt.Rows[0]["codigocliente"]);
                this.Nombres =  dt.Rows[0]["Nombres"].ToString() ;
                this.Empresa = dt.Rows[0]["Empresa"].ToString();
            }

            return dt.Rows.Count > 0;
        }
    }
}
