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
    
    public partial class vwin_prd_ConsultaPiezasMover
    {
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdPuenteGrua { get; set; }
        public int IdOperador { get; set; }
        public int IdMovimiento { get; set; }
        public string EtapaUbucacion { get; set; }
        public string EtapaSiguiente { get; set; }
        public string nombre { get; set; }
        public Nullable<System.DateTime> FechaTransaccion { get; set; }
        public string DescripcionPieza { get; set; }
        public string Estado { get; set; }
    }
}