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
    
    public partial class vwcom_ordencompra_local_x_in_guia_x_traspaso_bodega
    {
        public int IdEmpresa { get; set; }
        public decimal IdGuia { get; set; }
        public Nullable<int> IdSucursal_Partida { get; set; }
        public string Su_Descripcion { get; set; }
        public Nullable<int> IdSucursal_Llegada { get; set; }
        public string Su_Descripcion_Llegada { get; set; }
        public Nullable<int> IdEmpresa_OC { get; set; }
        public Nullable<int> IdSucursal_OC { get; set; }
        public Nullable<decimal> IdOrdenCompra_OC { get; set; }
        public Nullable<System.DateTime> Fecha { get; set; }
    }
}