//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Core.Erp.Data.Academico
{
    using System;
    using System.Collections.Generic;
    
    public partial class vwAca_Archivo_Transferencia_Det_conciliar
    {
        public int IdEmpresa { get; set; }
        public decimal IdArchivo { get; set; }
        public int IdBanco { get; set; }
        public string IdProceso_bancario { get; set; }
        public string Origen_Archivo { get; set; }
        public string Cod_Empresa { get; set; }
        public string Nom_Archivo { get; set; }
        public System.DateTime Fecha { get; set; }
        public bool Estado { get; set; }
        public string IdEstadoArchivo_cat { get; set; }
        public string Observacion { get; set; }
        public decimal Valor { get; set; }
        public string pe_cedulaRuc { get; set; }
        public string Nombres { get; set; }
        public string nom_EstadoRegistro { get; set; }
        public string Id_Item { get; set; }
        public int Secuencia { get; set; }
        public decimal Valor_Enviado { get; set; }
        public decimal Valor_cobrado { get; set; }
        public Nullable<decimal> Saldo_x_Cobrar { get; set; }
        public string IdMotivoArchivo_cat { get; set; }
        public string nom_MotivoArchivo { get; set; }
        public Nullable<System.DateTime> Fecha_Proceso { get; set; }
        public Nullable<decimal> Secuencial_reg_x_proceso { get; set; }
        public string IdTipoDocumento { get; set; }
        public Nullable<int> Expr2 { get; set; }
        public string pe_Naturaleza { get; set; }
        public decimal IdPersona { get; set; }
        public decimal Identidad { get; set; }
        public string Descripcion_rubro { get; set; }
        public bool activo { get; set; }
        public string Numero_Documento { get; set; }
        public int IdInstitucion_Col { get; set; }
        public Nullable<bool> Contabilizado { get; set; }
        public string Factura { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdCbteVta { get; set; }
        public decimal IdCliente { get; set; }
    }
}
