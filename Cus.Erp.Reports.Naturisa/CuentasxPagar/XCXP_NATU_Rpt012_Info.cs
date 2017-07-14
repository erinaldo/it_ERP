﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cus.Erp.Reports.Naturisa.CuentasxPagar
{
    public class XCXP_NATU_Rpt012_Info
    {
        public int IdEmpresa { get; set; }
        public int IdTipoCbte_Ogiro { get; set; }
        public decimal IdCbteCble_Ogiro { get; set; }
        public string IdOrden_giro_Tipo { get; set; }
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public decimal IdProveedor { get; set; }
        public string pr_nombre { get; set; }
        public string pe_cedulaRuc { get; set; }
        public string serie_fact { get; set; }
        public string num_factura { get; set; }
        public System.DateTime? co_FechaFactura { get; set; }
        public double? subtotal_iva { get; set; }
        public double? subtotal_sin_iva { get; set; }
        public double? valor_iva { get; set; }
        public string NAutorizacion { get; set; }
        public string serie_ret { get; set; }
        public string NumRetencion { get; set; }
        public Nullable<double> re_baseRetencion { get; set; }
        public Nullable<double> re_Porcen_retencion { get; set; }
        public Nullable<double> re_valor_retencion { get; set; }
        public string re_Codigo_impuesto { get; set; }
        public Nullable<double> RIVA_0 { get; set; }
        public Nullable<double> RIVA_10 { get; set; }
        public Nullable<double> RIVA_20 { get; set; }
        public Nullable<double> RIVA_30 { get; set; }
        public Nullable<double> RIVA_70 { get; set; }
        public Nullable<double> RIVA_100 { get; set; }
        public Nullable<double> RTF_0 { get; set; }
        public Nullable<double> RTF_0_1 { get; set; }
        public Nullable<double> RTF_1 { get; set; }
        public Nullable<double> RTF_2 { get; set; }
        public Nullable<double> RTF_8 { get; set; }
        public Nullable<double> RTF_10 { get; set; }
        public Nullable<double> RTF_100 { get; set; }
        public string Documento { get; set; }
        public string descripcion_cod_sri { get; set; }
        public string re_tipoRet { get; set; }
        public string Num_Autorizacion_OG { get; set; }
    }
}
