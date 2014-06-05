using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinesLogicLayer;

namespace TeacherControlWebUI.ControlPanel
{
    public partial class rCivilStates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            CivilStates civilState = new CivilStates() ;

            civilState.IdCivilState = 0;
            civilState.StateName = StateNameTextBox.Text;
            civilState.isActive = esActivoCheckBox.Checked;

            if (civilState.Save())//siiii. funciono
            {
                StateNameTextBox.Text = "";
               esActivoCheckBox.Checked =true ;
               ErrorLabel.Text = "Bieeeen.... Guardo";
            }
            else //no guardo
            {
                ErrorLabel.Text = "No guardo";
            }

        }
    }
}