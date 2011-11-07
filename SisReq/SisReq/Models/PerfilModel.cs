using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace SisReq.Models
{
    public class PerfilModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }

    }

    public class PerfilContext:DbContext
    {
        public DbSet<PerfilModel> Perfil { get; set; }

    }
}