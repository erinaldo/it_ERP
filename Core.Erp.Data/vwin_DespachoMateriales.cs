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
    
    public partial class vwin_DespachoMateriales
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public decimal IdDespacho { get; set; }
        public int IdBodega { get; set; }
        public string CodObra { get; set; }
        public decimal IdCliente { get; set; }
        public string NumDespacho { get; set; }
        public string NumGuiaRemision { get; set; }
        public string NumFactura { get; set; }
        public System.DateTime FechaIniTras { get; set; }
        public System.DateTime FechaFinTras { get; set; }
        public System.DateTime FechaReg { get; set; }
        public string PuntoPartida { get; set; }
        public string PuntoLLegada { get; set; }
        public string TipoTransporte { get; set; }
        public string Chofer { get; set; }
        public string Placa { get; set; }
        public string Observacion { get; set; }
        public string Estado { get; set; }
        public string IdUsuario { get; set; }
        public string Su_Descripcion { get; set; }
        public string pe_nombreCompleto { get; set; }
        public string pe_cedulaRuc { get; set; }
        public Nullable<decimal> precio { get; set; }
        public Nullable<decimal> peso { get; set; }
        public string Descripcion { get; set; }
        public string pr_descripcion { get; set; }
        public string pr_observacion { get; set; }
        public string CodigoBarra { get; set; }
        public double Cantidad { get; set; }
        public string pr_codigo_barra { get; set; }
    }
}
