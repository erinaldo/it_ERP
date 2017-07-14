﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace Cus.Erp.Reports.Naturisa.CuentasxPagar
{
    public class XCXP_NATU_Rpt005_Info
    {
        public int IdEmpresa { get; set; }
        public decimal IdCbteCble_Ogiro { get; set; }
        public int IdTipoCbte_Ogiro { get; set; }
        public string IdOrden_giro_Tipo{ get; set; }
        public decimal IdProveedor { get; set; }
        public string nom_proveedor { get; set; }
        public string ced_proveedor { get; set; }
        public string dir_proveedor { get; set; }
        public DateTime co_fechaOg { get; set; }
        public string co_serie { get; set; }
        public string num_factura { get; set; }
        public DateTime co_FechaFactura { get; set; }
        public string Estado { get; set; }
        public int MyProperty { get; set; }
        public string TipoDocumento { get; set; }
        public DateTime fecha_retencion { get; set; }
        public int ejercicio_fiscal { get; set; }
        public decimal IdRetencion { get; set; }
        public int Idsecuencia { get; set; }
        public string Impuesto { get; set; }
        public double base_retencion { get; set; }
        public int IdCodigo_SRI { get; set; }
        public string cod_Impuesto_SRI { get; set; }
        public double por_Retencion_SRI { get; set; }
        public double valor_Retenido { get; set; }

        public int IdEmpresa_Ogiro { get; set; }
        public string serie { get; set; }
        public string numRetencion { get; set; }

        public string re_EstaImpresa { get; set; }

    }
}
