//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Reportes
{
    using System;
    
    public partial class spBAN_Rpt009_Result
    {
        public int IdEmpresa { get; set; }
        public string IdCtaCble { get; set; }
        public double Saldo_anterior { get; set; }
        public Nullable<double> Ingreso { get; set; }
        public Nullable<double> Egreso { get; set; }
        public Nullable<double> Saldo_final { get; set; }
        public System.DateTime fecha_ini { get; set; }
        public System.DateTime fecha_fin { get; set; }
        public string nom_Banco { get; set; }
    }
}