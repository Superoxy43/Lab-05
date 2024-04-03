using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lab_05.Pages.Formulario;

namespace Lab_05.Pages
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InformacionPersonal"] != null)
            {
                InformacionPersonal info = (InformacionPersonal)Session["InformacionPersonal"];
                TxtNombre.Text = info.Nombre;
                TxtEmail.Text = info.Email;
                TxtFechaNacimiento.Text = info.FechaNacimiento;
            }
            else
            {
                Response.Redirect("~/Pages/Formulario.aspx");
            }
        }


    }
}