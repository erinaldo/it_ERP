﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Erp.Info.CuentasxPagar
{
    public class cp_conciliacion_Caja_det_Ing_Caja_Info
    {
        public int IdEmpresa { get; set; }
        public decimal IdConciliacion_Caja { get; set; }
        public int secuencia { get; set; }
        public int IdEmpresa_movcaj { get; set; }
        public decimal IdCbteCble_movcaj { get; set; }
        public int IdTipocbte_movcaj { get; set; }
        public double valor_aplicado { get; set; }

        //Campos vista
        public string cm_observacion { get; set; }
        public System.DateTime cm_fecha { get; set; }
        public int IdPeriodo { get; set; }
        public double Total_movi { get; set; }
        public double Total_aplicado { get; set; }
        public double Saldo { get; set; }

        public bool Marcado { get; set; }
    }
}
