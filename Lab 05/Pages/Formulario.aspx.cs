using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_05.Pages
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                InformacionPersonal info = new InformacionPersonal();
                info.Nombre = TxtNombre.Text.Trim();
                info.Email = TxtEmail.Text.Trim();
                info.FechaNacimiento = TxtFechaNacimiento.Text.Trim();

                Session["InformacionPersonal"] = info;

                Response.Redirect("~/Pages/Detalle.aspx");
            }
        }
    public class InformacionPersonal
        {
            public string Nombre { get; set; }
            public string Email { get; set; }
            public string FechaNacimiento { get; set; }
        }

        protected void cvFechaNacimiento_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime FechaNacimiento;
            if (DateTime.TryParse(TxtFechaNacimiento.Text, out FechaNacimiento))
            {
                args.IsValid = (FechaNacimiento < DateTime.Now);
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}