//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Facturacion
{
    using System;
    using System.Collections.Generic;
    
    public partial class fa_cotizacion_det
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdCotizacion { get; set; }
        public int Secuencial { get; set; }
        public decimal IdProducto { get; set; }
        public double dc_cantidad { get; set; }
        public double dc_precio { get; set; }
        public double dc_por_desUni { get; set; }
        public double dc_desUni { get; set; }
        public double dc_precioFinal { get; set; }
        public double dc_subtotal { get; set; }
        public double dc_iva { get; set; }
        public double dc_total { get; set; }
        public string dc_pagaIva { get; set; }
        public string dc_detallexItems { get; set; }
        public double dc_peso { get; set; }
    
        public virtual fa_cotizacion fa_cotizacion { get; set; }
    }
}
