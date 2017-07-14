﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;

namespace Core.Erp.Reportes.CuentasxCobrar
{
    public class XCXC_Rpt009_Info
    {

        #region
        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public int IdBodega { get; set; }
        public decimal IdCliente { get; set; }
        public string Codigo { get; set; }
        public decimal IdCbteVta { get; set; }
        public string CodCbteVta { get; set; }
        public string vt_tipoDoc { get; set; }
        public string vt_serie1 { get; set; }
        public string vt_serie2 { get; set; }
        public string vt_NumFactura { get; set; }
        public string Su_Descripcion { get; set; }
        public string pe_nombreCompleto { get; set; }
        public string pe_cedulaRuc { get; set; }
        public Nullable<double> Valor_Original { get; set; }
        public Nullable<double> Total_Pagado { get; set; }
        public Nullable<double> Valor_x_Vencer { get; set; }
        public Nullable<double> Vencer_30_Dias { get; set; }
        public Nullable<double> Vencer_60_Dias { get; set; }
        public Nullable<double> Vencer_90_Dias { get; set; }
        public Nullable<double> Mayor_a_90Dias { get; set; }
        public Nullable<System.DateTime> vt_fech_venc { get; set; }
        public System.DateTime vt_fecha { get; set; }
        public string RazonSocial { get; set; }
        public byte[] em_logo { get; set; }
        public Nullable<double> Total { get; set; }
        public string Telefono { get; set; }
        public string num_op { get; set; }
        #endregion

       public XCXC_Rpt009_Info()
        {

        }
    }
}
