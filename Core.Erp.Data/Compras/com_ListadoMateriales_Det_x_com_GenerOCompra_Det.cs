//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Compras
{
    using System;
    using System.Collections.Generic;
    
    public partial class com_ListadoMateriales_Det_x_com_GenerOCompra_Det
    {
        public int go_IdEmpresa { get; set; }
        public decimal go_IdTransaccion { get; set; }
        public int go_IdDetTrans { get; set; }
        public int lm_IdEmpresa { get; set; }
        public decimal lm_IdListadoMateriales { get; set; }
        public int lm_IdDetalle { get; set; }
        public string observacion { get; set; }
    
        public virtual com_GenerOCompra_Det com_GenerOCompra_Det { get; set; }
        public virtual com_ListadoMateriales_Det com_ListadoMateriales_Det { get; set; }
    }
}