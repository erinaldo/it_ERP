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
    
    public partial class fa_factura_det
    {
        public fa_factura_det()
        {
            this.fa_factura_det_x_fa_descuento = new HashSet<fa_factura_det_x_fa_descuento>();
        }
    
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdCbteVta { get; set; }
        public int Secuencia { get; set; }
        public decimal IdProducto { get; set; }
        public double vt_cantidad { get; set; }
        public double vt_Precio { get; set; }
        public double vt_PorDescUnitario { get; set; }
        public double vt_DescUnitario { get; set; }
        public double vt_PrecioFinal { get; set; }
        public double vt_Subtotal { get; set; }
        public double vt_iva { get; set; }
        public double vt_total { get; set; }
        public string vt_estado { get; set; }
        public string vt_detallexItems { get; set; }
        public Nullable<double> vt_Peso { get; set; }
        public double vt_por_iva { get; set; }
        public Nullable<int> IdPunto_Cargo { get; set; }
        public Nullable<int> IdPunto_cargo_grupo { get; set; }
        public string IdCod_Impuesto_Iva { get; set; }
        public string IdCod_Impuesto_Ice { get; set; }
        public string IdCentroCosto { get; set; }
        public string IdCentroCosto_sub_centro_costo { get; set; }
    
        public virtual fa_factura fa_factura { get; set; }
        public virtual ICollection<fa_factura_det_x_fa_descuento> fa_factura_det_x_fa_descuento { get; set; }
    }
}
