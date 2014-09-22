using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;
using Dao;

namespace SistemaTalleres
{
    public partial class FichaAlumno : System.Web.UI.Page
    {
        Repository<Alumno> alumnoRepository = new Repository<Alumno>();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtIdAlumno.Text = alumnoRepository.GetAll().Count().ToString();
        }

        protected void btnIngresarAlumno_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                
                Alumno alumno = new Alumno();





                alumno.ApellidoMaterno = this.txtApeMaterno.Text;
                alumno.ApellidoPaterno = this.txtApePaterno.Text;
                alumno.Nombres = this.txtNombres.Text;
                alumno.Rut = this.txtRutAlumno.Text;
                alumno.id = int.Parse(this.txtIdAlumno.Text);

                alumnoRepository.Insert(alumno);
                DataList1.DataSource = alumnoRepository.GetAll();
                DataList1.DataBind();


            }
        }
    }
}