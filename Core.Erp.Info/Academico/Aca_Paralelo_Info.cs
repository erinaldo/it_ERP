﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Erp.Info.Academico
{
  public  class Aca_Paralelo_Info
    {
        public int IdInstitucion { get; set; }
        public int IdParalelo { get; set; }
        public int IdCurso { get; set; }        
        public int IdSede { get; set; }
        public int IdJornada { get; set; }
        public int IdSeccion { get; set; }        
        public string CodParalelo { get; set; }
        public string CodAlterno { get; set; }
        public string DescripcionParalelo { get; set; }
        public string Estado { get; set; }
        public DateTime FechaCreacion { get; set; }
        public DateTime FechaModificacion { get; set; }
        public DateTime FechaAnulacion { get; set; }
        public string UsuarioCreacion { get; set; }
        public string UsuarioModificacion { get; set; }
        public string UsuarioAnulacion { get; set; }
        public string MotivoAnulacion { get; set; }

        public Aca_Paralelo_Info() {
            
        }
    }
}
