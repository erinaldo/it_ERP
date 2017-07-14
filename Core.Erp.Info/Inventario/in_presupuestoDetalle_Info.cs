﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Erp.Info.Inventario
{
    public class in_presupuestoDetalle_Info
    {

        public int IdEmpresa { get; set; }
        public int IdSucursal { get; set; }
        public decimal IdPresupuesto { get; set; }
        public int Secuencia { get; set; }
        public decimal IdProducto { get; set; }
        public double dp_Cantidad { get; set; }
        public double dp_costo { get; set; }
        public double dp_porc_des { get; set; }
        public double dp_descuento { get; set; }
        public double dp_subtotal { get; set; }
        public double dp_iva { get; set; }
        public double dp_total { get; set; }
        public string dp_ManejaIva { get; set; }
        public string dp_Costeado { get; set; }
        public double dp_costo_promedio_hist { get; set; }
        public double dp_peso { get; set; }
        public string dp_observacion { get; set; }

        public string pr_descripcion { get; set; }
        public string pr_codigo { get; set; }

    }
}
