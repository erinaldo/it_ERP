﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Erp.Info.Roles
{
   public class ro_Comprobantes_Contables_Info
   {
       public int IdEmpresa { get; set; }
       public int IdTipoCbte { get; set; }
       public decimal IdCbteCble { get; set; }
       public string CodCtbteCble { get; set; }
       public int IdPeriodo { get; set; }
       public string cb_Observacion { get; set; }
    }
}
