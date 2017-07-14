﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Erp.Info.Roles
{
  public  class ro_Config_Param_contable_Info
    {

        public int IdEmpresa { get; set; }
        public int IdDivision { get; set; }
        public int IdArea { get; set; }
        public int IdDepartamento { get; set; }
        public string IdRubro { get; set; }
        public string IdCtaCble { get; set; }
        public string IdCentroCosto { get; set; }
        public string DebCre { get; set; }
        public string IdCtaCble_Haber { get; set; }

        //campos vista vwRo_Division_Area_dep_rubro

        public string DescripcionDiv { get; set; }
        public string DescripcionArea { get; set; }
        public string de_descripcion { get; set; }
        public string ru_descripcion { get; set; }

        public string ru_estado { get; set; }
        public string ru_tipo { get; set; }

        public string rub_ctacon  { get; set; }

        public Nullable<bool> rub_nocontab { get; set; }

        public Boolean rub_guarda_rol { get; set; }
        public Nullable<bool> rub_provision { get; set; }
        public Nullable<bool> rub_aplica_IESS { get; set; }
        public Nullable<bool> rub_utilid { get; set; }
        public Nullable<bool> rub_prorrateo { get; set; }
        public Nullable<bool> rub_acumula { get; set; }
        public Nullable<bool> rub_noafecta { get; set; }
        public Nullable<bool> rub_liquida { get; set; }
        public Nullable<int> rub_grupo { get; set; }
        public Nullable<bool> rub_antici { get; set; }
        public string rub_gencon { get; set; }
        public Nullable<bool> rub_Contabiliza_x_empleado { get; set; }

        public ro_Config_Param_contable_Info() { }

    }
}
