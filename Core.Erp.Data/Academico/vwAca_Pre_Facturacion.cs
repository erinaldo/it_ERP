//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Academico
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwAca_Pre_Facturacion
    {
        public int IdInstitucion { get; set; }
        public decimal IdPreFacturacion { get; set; }
        public int IdInstitucion_contrato { get; set; }
        public int IdPeriodo { get; set; }
        public System.DateTime fecha_prefacturacion { get; set; }
        public int IdEmpresa_fact { get; set; }
        public int IdSucursal_fact { get; set; }
        public Nullable<int> IdBodega_fact { get; set; }
        public Nullable<decimal> IdCbteVta { get; set; }
        public int IdPtoVta_fact { get; set; }
        public int IdCaja_fact { get; set; }
        public System.DateTime vt_fecha_fact { get; set; }
        public int vt_plazo_fact { get; set; }
        public System.DateTime vt_fech_venc { get; set; }
        public string observacion_fact { get; set; }
        public string Estado_Pre_factutacion_Cat { get; set; }
        public string Descripcion { get; set; }
        public System.DateTime pe_FechaIni { get; set; }
        public System.DateTime pe_FechaFin { get; set; }
        public string pe_estado { get; set; }
        public int IdAnioLectivo { get; set; }
        public string Ruc { get; set; }
        public string codInstitucion { get; set; }
        public string Nombre { get; set; }
        public int IdGrupoFE { get; set; }
    }
}
