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
    
    public partial class vwpre_PedidoXPresupuesto_det
    {
        public int IdEmpresa { get; set; }
        public decimal IdPedidoXPre { get; set; }
        public Nullable<int> IdDepartamento { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Observacion { get; set; }
        public Nullable<decimal> IdProveedor1 { get; set; }
        public Nullable<decimal> IdProveedor2 { get; set; }
        public Nullable<decimal> IdProveedor3 { get; set; }
        public string IdUsuario { get; set; }
        public int Secuencia_reg { get; set; }
        public decimal IdPresupuesto_pre { get; set; }
        public int IdAnio_pre { get; set; }
        public int Secuencia_pre { get; set; }
        public string Producto { get; set; }
        public double Cant { get; set; }
        public string CodEstadoAprobacion { get; set; }
        public string Cotizado { get; set; }
        public string NPresupuesto_pre { get; set; }
    }
}
