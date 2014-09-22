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
    public partial class InscribirAlumno : System.Web.UI.Page
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

            if (!IsPostBack) { 
                foreach(Taller t in this.tallerRepository.GetAll()){
                    this.ddlTaller.Items.Insert(t.id,t.nombreTaller);
                }
                this.ddlTaller.DataBind();
            }
        }

        protected void btnInscribir_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                Inscripcion inscripcion = new Inscripcion();





                inscripcion.alumno = alumno;
                inscripcion.fechaInscripcion = DateTime.Parse(txtFecha.Text);
             
                inscripcion.taller = tallerRepository.GetById(this.ddlTaller.SelectedIndex);
                alumno.ListaTalleres.Add(tallerRepository.GetById(this.ddlTaller.SelectedIndex));

                inscripcionRepository.Insert(inscripcion);
                DataList1.DataSource = inscripcionRepository.SearchFor(i => i.alumno.Rut.Equals(this.alumno.Rut));
                DataList1.DataBind();


            }
        }
    }
}