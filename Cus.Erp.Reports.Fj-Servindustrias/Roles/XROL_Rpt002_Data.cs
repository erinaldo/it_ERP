
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Core.Erp.Data.General;
using Core.Erp.Info.General;
using Core.Erp.Business.Roles;
using Core.Erp.Business.General;
namespace Cus.Erp.Reports.FJ.Roles
{
    public class XROL_Rpt002_Data
    {
        private string mensaje = "";

        tb_Empresa_Info Cbt = new tb_Empresa_Info();
        tb_Empresa_Data empresaData = new tb_Empresa_Data();
        ro_DiasFaltados_x_Empleado_Bus BusDiasFaltados = new ro_DiasFaltados_x_Empleado_Bus();


        public List<XROL_Rpt002_Info> GetListConsultaGeneral(int idEmpresa, decimal idEmpleado,int idNominaTipo, int Anio,int Mes, ref string msg)
        {
            try
            {
              

                List<XROL_Rpt002_Info> oListado = new List<XROL_Rpt002_Info>();

                using (Entities_Roles_Fj_Rpt db = new Entities_Roles_Fj_Rpt())
                {
                    var datos = (from a in db.spROLES_Rpt002(idEmpresa,idNominaTipo,idEmpleado, 201706,Anio,Mes)
                                // where a.Expr1>0
                                 //&&a.IdEmpresa==idEmpresa
                                 //&&a.pe_anio==Anio
                                 //&&a.pe_mes==Mes
                                 //&& a.IdNominaTipo==idNominaTipo
                                // &&a.Expr1>0
                                
                                 orderby a.ru_orden ascending
                                 select a);

                //   Cbt = empresaData.Get_Info(idEmpresa);
                   

                    foreach (var info in datos)
                    {
                        XROL_Rpt002_Info item = new XROL_Rpt002_Info();
                        item.IdEmpresa = info.IdEmpresa;
                        item.IdNominaTipo = info.IdNominaTipo;
                        item.pe_anio = info.pe_anio;
                        item.pe_mes = info.pe_mes;
                        item.pe_cedulaRuc = info.pe_cedulaRuc;
                        item.Nombres = info.Nombres;
                        item.ru_descripcion = info.ru_descripcion;
                        item.ca_descripcion = info.ca_descripcion;
                        item.zo_descripcion = info.zo_descripcion;
                        item.fu_descripcion = info.fu_descripcion;
                        
                        if (info.ru_tipo == "I")
                            item.Ingresos =Convert.ToDouble( info.Expr1);
                        else
                            item.Egresos = Convert.ToDouble(info.Expr1);
                        

                        
                        item.DiasTrabajados = info.DiasTrabajados;
                        oListado.Add(item);
                    }
                }
                return oListado;
            }
            catch (Exception ex)
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                mensaje = msg = ex.InnerException + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref mensaje);
                return new List<XROL_Rpt002_Info>();
            }
        }

    

    }
}
