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
    public partial class IngresoDatos : System.Web.UI.Page
    {
        Repository<Alumno> alumnoRepository = new Repository<Alumno>();

        protected void Page_Load(object sender, EventArgs e)
        {
       
            DataList1.DataSource = alumnoRepository.GetAll();
            DataList1.DataBind();
        }

    
    }
}