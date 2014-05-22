using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer;

namespace BussinesLogicLayer
{
   public  class CivilStates
    {
        public int IdCivilState { get; set; }

        public String StateName { get; set; }

        public Boolean isActive { get; set; }

/// <summary>
/// 
/// </summary>
/// <returns></returns>
        public Boolean Save()
        {
            Boolean retorno =false ;
            DatabasePersistence db = new DatabasePersistence();
            String comandoSql;

            if (this.IdCivilState == 0)//hay que insertar porque es nuevo
            {

                comandoSql = "Insert Into CivilStates(StateName,isActive) Values('" + this.StateName  + "','" + this.isActive  + "')";
            }
            else//Actualizar porque existe
            {
                comandoSql = "Update CivilStates set StateName='" + this.StateName + "',isActive='" + this.isActive.ToString() + "' Where IdCivilState=" + this.IdCivilState.ToString();
            }

            retorno = db.SaveData(comandoSql);

            return retorno;

        }


    }
}
