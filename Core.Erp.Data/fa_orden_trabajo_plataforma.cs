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
    
    public partial class fa_orden_trabajo_plataforma
    {
        public int IdEmpresa { get; set; }
        public decimal IdOrdenTrabajo_Pla { get; set; }
        public string codOrdenTrabajo_Pla { get; set; }
        public decimal IdCliente { get; set; }
        public string Descripcion { get; set; }
        public string Equipo { get; set; }
        public string serie { get; set; }
        public System.DateTime Fecha { get; set; }
        public double km_salida { get; set; }
        public double km_llegada { get; set; }
        public string con_atencion_a { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string MotiAnula { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string Estado { get; set; }
    }
}
