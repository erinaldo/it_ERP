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
    
    public partial class ct_saldoxCuentas_TMP
    {
        public int IdEmpresa { get; set; }
        public int IdAnioF { get; set; }
        public int IdPeriodo { get; set; }
        public string IdCtaCble { get; set; }
        public byte IdNivel { get; set; }
        public double sc_saldo_anterior { get; set; }
        public double sc_debito_mes { get; set; }
        public double sc_credito_mes { get; set; }
        public double sc_saldo_mes { get; set; }
        public double sc_saldo_acum { get; set; }
        public string IdCentroCosto { get; set; }
    }
}
