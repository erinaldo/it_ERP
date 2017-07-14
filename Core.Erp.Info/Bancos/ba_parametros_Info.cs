﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Erp.Info.Bancos
{
    public class ba_parametros_Info
    {
        public int IdEmpresa { get; set; }
        public Boolean El_Diario_Contable_es_modificable { get; set; }
        public string CiudadDefaultParaCrearCheques { get; set; }
        public int ? IdTipoNota_ND_Can_Cuotas { get; set; }
        public int ? IdTipoCbte_x_Prestamo { get; set; }
        public string IdUsuario { get; set; }
        public string IdUsuarioUltMod { get; set; }
        public DateTime FechaUltMod { get; set; }
        public string nom_pc { get; set; }
        public string ip { get; set; }
        public string IdCtaCble_Interes { get; set; }
        public string IdCtaCble_prestamos { get; set; }

        public string Ruta_descarga_fila_x_PreAviso_cheq { get; set; }

        public ba_parametros_Info()
        {

        }
	
    }
}
