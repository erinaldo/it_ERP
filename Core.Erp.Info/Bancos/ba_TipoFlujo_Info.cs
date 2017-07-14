﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Erp.Info.Bancos
{
    public class ba_TipoFlujo_Info
    {
        public int IdEmpresa { get; set; }
        public decimal IdTipoFlujo { get; set; }
        public decimal ? IdTipoFlujoPadre { get; set; }
        public string Descricion { get; set; }
        public string Descricion2 { get; set; }
        public string DescricionPadre { get; set; }
        public string Estado { get; set; }
        public string MotiAnula { get; set; }
        public string IdUsuario { get; set; }
        public DateTime? Fecha_Transac { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public DateTime? Fecha_UltMod { get; set; }
        public string IdUsuarioUltAnu { get; set; }
        public DateTime? Fecha_UltAnu { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string Tipo { get; set; }
        public string cod_flujo { get; set; }



        public ba_TipoFlujo_Info(){}
    }
}
