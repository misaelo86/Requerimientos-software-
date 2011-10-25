using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SisReq.Models
{
    public class RequerimientoModel
    
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Codigo { get; set; }
        public int IdProyecto { get; set; }
        public string Descripcion { get; set; }
        public int Prioridad { get; set; }
        public bool Status { get; set; }


    }
}