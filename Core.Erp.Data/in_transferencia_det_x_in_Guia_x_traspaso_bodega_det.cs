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
    
    public partial class in_transferencia_det_x_in_Guia_x_traspaso_bodega_det
    {
        public int IdEmpresa_trans { get; set; }
        public int IdSucursalOrigen_trans { get; set; }
        public int IdBodegaOrigen_trans { get; set; }
        public decimal IdTransferencia_trans { get; set; }
        public int Secuencia_trans { get; set; }
        public int IdEmpresa_guia { get; set; }
        public decimal IdGuia_guia { get; set; }
        public int Secuencia_guia { get; set; }
        public string Observacion { get; set; }
    
        public virtual in_transferencia_det in_transferencia_det { get; set; }
        public virtual in_Guia_x_traspaso_bodega_det in_Guia_x_traspaso_bodega_det { get; set; }
    }
}
