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
    
    public partial class ba_Archivo_Transferencia_Det
    {
        public int IdEmpresa { get; set; }
        public decimal IdArchivo { get; set; }
        public int Secuencia { get; set; }
        public string IdProceso_bancario { get; set; }
        public string Id_Item { get; set; }
        public Nullable<int> IdEmpresa_OP { get; set; }
        public Nullable<decimal> IdOrdenPago { get; set; }
        public Nullable<int> Secuencia_OP { get; set; }
        public Nullable<int> IdEmpresaNomina { get; set; }
        public Nullable<int> IdNominaTipo { get; set; }
        public Nullable<int> IdNominaTipoLiqui { get; set; }
        public Nullable<int> IdPeriodo { get; set; }
        public string IdRubro { get; set; }
        public Nullable<int> IdEmpleado { get; set; }
        public string IdEstadoRegistro_cat { get; set; }
        public bool Estado { get; set; }
        public decimal Valor { get; set; }
        public decimal Valor_cobrado { get; set; }
        public Nullable<decimal> Secuencial_reg_x_proceso { get; set; }
        public Nullable<bool> Contabilizado { get; set; }
        public Nullable<int> IdEmpresa_pago { get; set; }
        public Nullable<int> IdTipoCbte_pago { get; set; }
        public Nullable<decimal> IdCbteCble_pago { get; set; }
        public Nullable<int> IdInstitucion_col { get; set; }
        public Nullable<decimal> IdPreFacturacion_col { get; set; }
        public Nullable<int> Secuencia_Proce_col { get; set; }
        public Nullable<int> secuencia_col { get; set; }
        public Nullable<int> IdInstitucion_contrato { get; set; }
        public Nullable<decimal> idContrato { get; set; }
        public Nullable<System.DateTime> Fecha_proceso { get; set; }
    
        public virtual ba_Archivo_Transferencia ba_Archivo_Transferencia { get; set; }
        public virtual ba_Catalogo ba_Catalogo { get; set; }
    }
}