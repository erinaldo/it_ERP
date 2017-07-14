﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Erp.Info.Roles
{
   public class ro_HistoricoSueldo_Info
    {
        public int IdEmpresa { get; set; }
        public decimal IdEmpleado { get; set; }
        public int Secuencia { get; set; }
        public double SueldoAnterior { get; set; }
        public double SueldoActual { get; set; }
        public double PorIncrementoSueldo { get; set; }
        public double ValorIncrementoSueldo { get; set; }
        public string Motivo { get; set; }
        public DateTime Fecha { get; set; }
        public string idUsuario { get; set; }
        public DateTime? Fecha_Transac { get; set; }
        public string IdUsuarioUltModi { get; set; }
        public DateTime? Fecha_UltMod { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string de_descripcion { get; set; }
        public string ca_descripcion { get; set; }

       


        public ro_HistoricoSueldo_Info()
        {

        }
    }
}
