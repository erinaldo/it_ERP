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
    
    public partial class vw_WSProduccionCidersus_EtapaSiguiente
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdPuenteGrua { get; set; }
        public int IdOperador { get; set; }
        public int IdProcesoProductivo { get; set; }
        public int IdMovimiento { get; set; }
        public string CodigoBarra { get; set; }
        public string DescripcionPieza { get; set; }
        public int IdEtapaInicio { get; set; }
        public int IdEtapaSiguiente { get; set; }
        public int ToneladasMover { get; set; }
        public string Observacion { get; set; }
        public Nullable<System.DateTime> FechaTransaccion { get; set; }
        public string IdUsuario { get; set; }
        public string Estado { get; set; }
        public Nullable<int> IdSubgrupoAnt { get; set; }
        public Nullable<int> IdSubgrupoSig { get; set; }
    }
}
