using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DataLayer
{
    public class DatabasePersistence
    {
        string ConStr = @"Data Source=.\sqlexpress;Initial Catalog=VentasOnline;Persist Security Info=True;User ID=aplicada;Password=1234";
        
        /// <summary>
        /// Permite ejecutar comandos contra la base de datos sqlserver
        /// </summary>
        /// <param name="SqlInstrucction">La instruccion sql que desee ejecutar</param>
        /// <returns>Verdadero o falso dependiendo si se completo o no</returns>
        public Boolean SaveData(String SqlInstrucction)
        {
            Boolean returned = false;

            SqlConnection connection = new SqlConnection(ConStr);
            SqlCommand conmand = new SqlCommand(SqlInstrucction, connection);

            try
            {
                connection.Open();
                conmand.ExecuteNonQuery();
                returned = true;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
                conmand.Dispose();
                connection.Dispose();
            }

            return returned;
        }

        /// <summary>
        /// Obtiene los datos solicitados y los retorna en un DataTable
        /// </summary>
        /// <param name="SqlInstrucction">La instruccion sql que desee ejecutar</param>
        /// <returns>Un datatable conteniendo los datos</returns>
      public   DataTable GetData(String SqlInstrucction)
        {
            DataTable returnedData = new DataTable();
            
            SqlConnection connection = new SqlConnection(ConStr);
            SqlDataAdapter adapter = new SqlDataAdapter(SqlInstrucction, connection);
            
            try
            {
                connection.Open();
                adapter.Fill(returnedData);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
                adapter.Dispose();
                connection.Dispose();
            }

            return returnedData;
        }
    }
}
