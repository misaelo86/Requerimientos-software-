using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SisReq.Models
{
    public class ProyectoModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public DateTime FechaInicio { get; set; }
        //agregar a la bd 24/10/2011
        public string Description { get; set; }
        public string Status { get; set; }


    }
}