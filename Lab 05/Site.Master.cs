using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lab_05.Pages.Formulario;

namespace Lab_05
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InformacionPersonal"] !=null)
            {
                InformacionPersonal info = (InformacionPersonal)Session["InformacionPersonal"];
                lbNombreCompleto.Text = info.Nombre;
                lnkCerrarSesion.Visible = true;
            }
            //if (Session["InformacionPersonal"] != null)
            //{
            //    InformacionPersonal info = (InformacionPersonal)Session["InformacionPersonal"];
            //    lblNombreCompleto.Text = info.Nombre;
            //    Menu1.FindItem("Detalle").Enabled = true;
            //    Menu1.FindItem("Cerrar Sesion").Enabled = true;
            //}
        }

        protected void lnkCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Pages/Formulario.aspx");
        }
    }
}