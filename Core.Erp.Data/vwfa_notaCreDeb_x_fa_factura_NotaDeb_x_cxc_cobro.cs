//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwfa_notaCreDeb_x_fa_factura_NotaDeb_x_cxc_cobro
    {
        public int IdEmpresa_nt { get; set; }
        public int IdSucursal_nt { get; set; }
        public int IdBodega_nt { get; set; }
        public decimal IdNota_nt { get; set; }
        public int IdEmpresa_fac_nd_doc_mod { get; set; }
        public int IdSucursal_fac_nd_doc_mod { get; set; }
        public int IdBodega_fac_nd_doc_mod { get; set; }
        public decimal IdCbteVta_fac_nd_doc_mod { get; set; }
        public string vt_tipoDoc { get; set; }
        public Nullable<int> IdEmpresa_cbr { get; set; }
        public Nullable<int> IdSucursal_cbr { get; set; }
        public Nullable<decimal> IdCobro_cbr { get; set; }
        public double Valor_Aplicado { get; set; }
    }
}
