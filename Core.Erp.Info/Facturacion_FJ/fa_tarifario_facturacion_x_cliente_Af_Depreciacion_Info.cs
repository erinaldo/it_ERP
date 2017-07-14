﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Erp.Info.Facturacion_FJ
{
  public  class fa_tarifario_facturacion_x_cliente_Af_Depreciacion_Info
  {
      public int IdEmpresa { get; set; }
      public decimal IdDepreciacion { get; set; }
      public decimal IdTarifario { get; set; }
      public int IdTipoDepreciacion { get; set; }
      public int IdPeriodo { get; set; }
      public string Descripcion { get; set; }
      public System.DateTime Fecha_Depreciacion { get; set; }
      public int Num_Act_Depre { get; set; }
      public double Valor_Tot_Act { get; set; }
      public double Valor_Tot_Depre { get; set; }
      public double Valor_Tot_DepreAcum { get; set; }
      public double Valot_Tot_Importe { get; set; }
      public string IdUsuario { get; set; }
      public Nullable<System.DateTime> Fecha_Transac { get; set; }
      public string IdUsuarioUltMod { get; set; }
      public Nullable<System.DateTime> Fecha_UltMod { get; set; }
      public string IdUsuarioUltAnu { get; set; }
      public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
      public string MotivoAnula { get; set; }
      public string nom_pc { get; set; }
      public string ip { get; set; }
      public string Estado { get; set; }
      public List<fa_tarifario_facturacion_x_cliente_Af_Depreciacion_Det_Info> list_depreciacion_mes_x_activo { get; set; }


      public  fa_tarifario_facturacion_x_cliente_Af_Depreciacion_Info()
      {
          list_depreciacion_mes_x_activo = new List<fa_tarifario_facturacion_x_cliente_Af_Depreciacion_Det_Info>();
      }
    }
}
