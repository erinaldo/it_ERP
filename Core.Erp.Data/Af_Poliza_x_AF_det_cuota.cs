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
    
    public partial class Af_Poliza_x_AF_det_cuota
    {
        public int IdEmpresa { get; set; }
        public decimal IdPoliza { get; set; }
        public string cod_couta { get; set; }
        public System.DateTime Fecha_Pago { get; set; }
        public double valor_prima { get; set; }
        public string IdEstadoCancelacion_cat { get; set; }
        public string IdEstadoFacturacion_cat { get; set; }
        public double Sub_total_12 { get; set; }
        public double Iva { get; set; }
        public string Observacion_detalle { get; set; }
        public Nullable<double> Sub_total_0 { get; set; }
    }
}
