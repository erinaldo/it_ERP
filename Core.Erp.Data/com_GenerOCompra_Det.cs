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
    
    public partial class com_GenerOCompra_Det
    {
        public com_GenerOCompra_Det()
        {
            this.com_GenerOCompra_Det_x_com_ordencompra_local_det_CusCider = new HashSet<com_GenerOCompra_Det_x_com_ordencompra_local_det_CusCider>();
        }
    
        public int IdEmpresa { get; set; }
        public decimal IdTransaccion { get; set; }
        public int IdDetTrans { get; set; }
        public Nullable<decimal> IdProveedor { get; set; }
        public string CodObra { get; set; }
        public decimal IdOrdenTaller { get; set; }
        public string Motivo { get; set; }
        public decimal IdProducto { get; set; }
        public double Cantidad { get; set; }
        public double Kg { get; set; }
        public string IdEstadoAprob { get; set; }
        public System.DateTime FechaRequer { get; set; }
        public Nullable<decimal> IdListadoMateriales { get; set; }
        public Nullable<int> IdDetalle { get; set; }
        public Nullable<double> precio { get; set; }
        public Nullable<int> oc_IdEmpresa { get; set; }
        public Nullable<decimal> oc_IdOrdenCompra { get; set; }
        public string usuariosolicitante { get; set; }
    
        public virtual com_GenerOCompra com_GenerOCompra { get; set; }
        public virtual ICollection<com_GenerOCompra_Det_x_com_ordencompra_local_det_CusCider> com_GenerOCompra_Det_x_com_ordencompra_local_det_CusCider { get; set; }
    }
}