using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Dao;
using Biblioteca;


using System.Web.UI.WebControls;

namespace SistemaTalleres
{
    public partial class FichaTaller : System.Web.UI.Page
    {
        Repository<Profesor> profesorRepository = new Repository<Profesor>();
        Repository<Taller> tallerRepository = new Repository<Taller>();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtIdTaller.Text = tallerRepository.GetAll().Count().ToString();
            if (!IsPostBack)
            {
                foreach (Profesor p in profesorRepository.GetAll())
                {
                    this.ddlProfesor.Items.Insert(p.id, p.Nombres);

                }

                this.ddlProfesor.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                
                Taller taller = new Taller();





                taller.nombreTaller = this.txtNombreTaller.Text;
                taller.id = int.Parse(this.txtIdTaller.Text);
                taller.profesor = profesorRepository.GetById(this.ddlProfesor.SelectedIndex);
                taller.descripcionTaller = this.txtDescripcionTaller.Text;

                tallerRepository.Insert(taller);
                DataList1.DataSource = tallerRepository.GetAll();
                DataList1.DataBind();


            }
        }

    

        
    }
}