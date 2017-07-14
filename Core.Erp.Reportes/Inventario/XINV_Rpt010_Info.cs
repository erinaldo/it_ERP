﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace Core.Erp.Reportes.Inventario
{
    public class XINV_Rpt010_Info
    {

        public Nullable<int> IdEmpresa { get; set; }
        public Nullable<int> IdSucursal { get; set; }
        public Nullable<int> IdBodega { get; set; }
        public Nullable<int> IdMovi_inven_tipo { get; set; }
        public Nullable<decimal> IdNumMovi { get; set; }
        public Nullable<int> Secuencia { get; set; }
        public Nullable<decimal> IdProducto { get; set; }
        public double Saldo_ini_cant { get; set; }
        public double Cost_prom_ini { get; set; }
        public double Saldo_ini_cost { get; set; }
        public double cant_ing { get; set; }
        public double cost_ing { get; set; }
        public double total_ing { get; set; }
        public double cant_egr { get; set; }
        public double cost_egr { get; set; }
        public double total_egr { get; set; }
        public Nullable<double> Saldo_cant { get; set; }
        public Nullable<double> Saldo_cost_prom { get; set; }
        public Nullable<double> Saldo_cost { get; set; }
        public double Saldo_fin_cant { get; set; }
        public double Cost_prom_fin { get; set; }
        public double Saldo_fin_cost { get; set; }
        public string IdUsuario { get; set; }
        public string dm_observacion { get; set; }
        public Nullable<System.DateTime> cm_fecha { get; set; }
        public string tipo_movi { get; set; }
        public string cod_bodega { get; set; }
        public string nom_bodega { get; set; }
        public string cod_sucursal { get; set; }
        public string nom_sucursal { get; set; }
        public Nullable<int> IdEmpresa_oc { get; set; }
        public Nullable<int> IdSucursal_oc { get; set; }
        public Nullable<decimal> IdOrdenCompra { get; set; }
        public string num_factura { get; set; }
        public string nom_proveedor { get; set; }
        public string pr_codigo { get; set; }
        public string pr_descripcion { get; set; }
        public string IdUnidadMedida { get; set; }
        public string nom_unidad_consumo { get; set; }
        public string cod_unidad_consumo { get; set; }
    }
}
