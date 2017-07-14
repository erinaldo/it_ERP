﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Erp.Reportes.Contabilidad
{
    public class XCONTA_Rpt014_Info
    {
        public int IdEmpresa { get; set; }
        public int IdTipoCbte { get; set; }
        public decimal IdCbteCble { get; set; }
        public int secuencia { get; set; }
        public string cb_Observacion { get; set; }
        public System.DateTime cb_Fecha { get; set; }
        public string tc_TipoCbte { get; set; }
        public string IdCtaCble { get; set; }
        public string pc_Cuenta { get; set; }
        public string IdCentroCosto { get; set; }
        public string Centro_costo { get; set; }
        public double dc_Valor { get; set; }
        public string IdGrupoCble { get; set; }
        public string gc_GrupoCble { get; set; }
        public string IdCentroCosto_sub_centro_costo { get; set; }
        public string nom_subcentro { get; set; }
        public Nullable<int> IdPunto_cargo_grupo { get; set; }
        public string nom_punto_cargo_grupo { get; set; }
        public Nullable<int> IdPunto_cargo { get; set; }
        public string nom_punto_cargo { get; set; }
        public byte gc_Orden { get; set; }
    }
}
