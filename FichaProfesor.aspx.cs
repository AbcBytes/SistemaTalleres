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
    public partial class FichaProfesor : System.Web.UI.Page
    {
        Repository<Profesor> profesorRepository = new Repository<Profesor>();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtIdProfesor.Text = profesorRepository.GetAll().Count().ToString();
        }

        protected void btnIngresarProfesor_Click(object sender, EventArgs e)
        {
            if (IsValid){
                
                Profesor profesor = new Profesor();

   

          

                profesor.ApellidoMaterno = this.txtApellidoMaternoProfesor.Text;
                profesor.ApellidoPaterno = this.txtApellidoPaternoProfesor.Text;
                profesor.Nombres = this.txtNombresProfesor.Text;
                profesor.Rut = this.txtRutProfesor.Text;
                profesor.id= int.Parse(this.txtIdProfesor.Text);

                profesorRepository.Insert(profesor);
                DataList1.DataSource = profesorRepository.GetAll();
                DataList1.DataBind();
            

            }
        }
    }
}