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
    
    public partial class fa_cliente
    {
        public fa_cliente()
        {
            this.fa_cliente_contactos = new HashSet<fa_cliente_contactos>();
            this.fa_cotizacion = new HashSet<fa_cotizacion>();
            this.fa_devol_venta = new HashSet<fa_devol_venta>();
            this.fa_factura = new HashSet<fa_factura>();
            this.fa_guia_remision = new HashSet<fa_guia_remision>();
            this.fa_notaCreDeb = new HashSet<fa_notaCreDeb>();
            this.fa_orden_Desp = new HashSet<fa_orden_Desp>();
            this.fa_pedido = new HashSet<fa_pedido>();
            this.fa_venta_telefonica = new HashSet<fa_venta_telefonica>();
        }
    
        public int IdEmpresa { get; set; }
        public decimal IdCliente { get; set; }
        public string Codigo { get; set; }
        public decimal IdPersona { get; set; }
        public int IdSucursal { get; set; }
        public int IdVendedor { get; set; }
        public int Idtipo_cliente { get; set; }
        public string IdTipoCredito { get; set; }
        public string cl_Cat_crediticia { get; set; }
        public int cl_plazo { get; set; }
        public double cl_porcentaje_descuento { get; set; }
        public string IdCtaCble_cxc { get; set; }
        public string IdCtaCble_Anti { get; set; }
        public string cl_Cell_Garante { get; set; }
        public string cl_Garante { get; set; }
        public string cl_Mail_Garante { get; set; }
        public string cl_observacion { get; set; }
        public string IdCiudad { get; set; }
        public double cl_Cupo { get; set; }
        public Nullable<decimal> IdClienteRelacionado { get; set; }
        public string cl_LocalComercial { get; set; }
        public string cl_Rep_Legal { get; set; }
        public string cl_Mail_Rep_Legal { get; set; }
        public string cl_Cell_Rep_Legal { get; set; }
        public string cl_Ger_Gen { get; set; }
        public string cl_Mail_Ger_Gen { get; set; }
        public string cl_Cell_Ger_Gen { get; set; }
        public string cl_casilla { get; set; }
        public string cl_fax { get; set; }
        public string IdActividadComercial { get; set; }
        public string IdUsuario { get; set; }
        public System.DateTime Fecha_Transac { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public Nullable<System.DateTime> Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public Nullable<System.DateTime> Fecha_UltAnu { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string Estado { get; set; }
        public string Mail_Principal { get; set; }
        public string Mail_Secundario1 { get; set; }
        public string Mail_Secundario2 { get; set; }
        public string IdCentroCosto_CXC { get; set; }
        public string IdCentroCosto_Anticipo { get; set; }
        public string IdCentroCosto_CXC_Credito { get; set; }
        public string IdCtaCble_cxc_Credito { get; set; }
        public string IdParroquia { get; set; }
        public Nullable<bool> es_empresa_relacionada { get; set; }
    
        public virtual fa_catalogo fa_catalogo { get; set; }
        public virtual ICollection<fa_cliente_contactos> fa_cliente_contactos { get; set; }
        public virtual fa_cliente_tipo fa_cliente_tipo { get; set; }
        public virtual ICollection<fa_cotizacion> fa_cotizacion { get; set; }
        public virtual ICollection<fa_devol_venta> fa_devol_venta { get; set; }
        public virtual ICollection<fa_factura> fa_factura { get; set; }
        public virtual ICollection<fa_guia_remision> fa_guia_remision { get; set; }
        public virtual ICollection<fa_notaCreDeb> fa_notaCreDeb { get; set; }
        public virtual ICollection<fa_orden_Desp> fa_orden_Desp { get; set; }
        public virtual ICollection<fa_pedido> fa_pedido { get; set; }
        public virtual ICollection<fa_venta_telefonica> fa_venta_telefonica { get; set; }
    }
}
