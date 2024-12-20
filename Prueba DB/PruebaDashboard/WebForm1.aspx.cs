using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba_DB.PruebaDashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            // Lógica cuando el usuario confirma la acción
            string mensaje = "¡Acción confirmada correctamente!";

            // Mostrar alerta de éxito con SweetAlert2
            ScriptManager.RegisterStartupScript(this, GetType(), "Alerta", string.Format("Swal.fire('Completado', '{0}', 'success');", mensaje), true);
        }
    }
}