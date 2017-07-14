﻿using Core.Erp.Data.General;
using Core.Erp.Info.General;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cus.Erp.Reports.FJ.Facturacion
{
   public class XFAC_FJ_Rpt009_Bus
   {
       XFAC_FJ_Rpt009_Data data = new XFAC_FJ_Rpt009_Data();
       public List<XFAC_FJ_Rpt009_Info> Get_List(int idEmpresa, int IdPeriodo)
       {
           try
           {
               return data.Get_List(idEmpresa, IdPeriodo);
           }
           catch (Exception ex)
           {

               string mensaje = "";
               mensaje = ex.ToString();
               tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
               tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", mensaje, "", "", "", "", "", DateTime.Now);
               oDataLog.Guardar_Log_Error(Log_Error_sis, ref mensaje);
               throw new Exception(mensaje);
           }
       }
    }
}
