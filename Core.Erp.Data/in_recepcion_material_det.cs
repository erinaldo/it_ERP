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
    
    public partial class in_recepcion_material_det
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public decimal IdRecepcionMaterial { get; set; }
        public decimal IdOrdenCompra { get; set; }
        public int Secuencia { get; set; }
        public decimal IdProducto { get; set; }
        public double do_Cantidad { get; set; }
        public double re_CantRecibida { get; set; }
        public double re_Saldo { get; set; }
    
        public virtual in_Producto in_Producto { get; set; }
        public virtual in_recepcion_material_cab in_recepcion_material_cab { get; set; }
    }
}
