using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dao;
using Biblioteca;

namespace SistemaTalleres
{
    public partial class EliminarAlumno : System.Web.UI.Page
    {

        Repository<Alumno> alumnoRepository = new Repository<Alumno>();
        Repository<Taller> tallerRepository = new Repository<Taller>();
        Repository<Inscripcion> inscripcionRepository = new Repository<Inscripcion>();
        Alumno alumno;

        protected void Page_Load(object sender, EventArgs e)
        {

            this.txtRut.Text = Request.QueryString["rutAlumno"];

            alumno = this.alumnoRepository.SearchFor(c => c.Rut.Equals(this.txtRut.Text)).Single();
            this.txtNombre.Text = string.Format("{0} {1}",alumno.Nombres,alumno.ApellidoPaterno);
            this.txtFecha.Text = DateTime.Now.Date.ToString();

            if (!IsPostBack)
            {
                foreach (Taller t in this.tallerRepository.GetAll())
                {
                    this.ddlTaller.Items.Insert(t.id, t.nombreTaller);
                }
                this.ddlTaller.DataBind();
            }

        }


        public void a()
        {
            alumnoRepository.Delete(alumno);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                a();
                Response.Redirect("Inscribir.aspx");
            }
        }




    }
}