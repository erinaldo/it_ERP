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
    
    public partial class prd_Despacho
    {
        public prd_Despacho()
        {
            this.prd_DespachoDet = new HashSet<prd_DespachoDet>();
        }
    
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
        public string IdUsuarioAnu { get; set; }
        public string MotivoAnu { get; set; }
        public string IdUsuarioUltModi { get; set; }
        public Nullable<System.DateTime> FechaAnu { get; set; }
        public System.DateTime FechaTransac { get; set; }
        public Nullable<System.DateTime> FechaUltModi { get; set; }
        public string ruta { get; set; }
    
        public virtual ICollection<prd_DespachoDet> prd_DespachoDet { get; set; }
    }
}
