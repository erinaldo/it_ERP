﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Core.Erp.Data.General;
using Core.Erp.Info.General;
using Core.Erp.Business.Roles;
using Core.Erp.Business.General;

namespace Cus.Erp.Reports.Talme.Roles
{
    class XROL_TALME_Rpt001_Data
    {
        private string mensaje = "";

        tb_Empresa_Info Cbt = new tb_Empresa_Info();
        tb_Empresa_Data empresaData = new tb_Empresa_Data();
        ro_DiasFaltados_x_Empleado_Bus BusDiasFaltados = new ro_DiasFaltados_x_Empleado_Bus();

        public List<XROL_TALME_Rpt001_Info> GetListConsultaGeneral(int idEmpresa, decimal idEmpleado, int idNominaTipo, int idNominaTipoLiqui, int idPeriodo, ref string msg)
        {
            try
            {
                int sec = 0;

                List<XROL_TALME_Rpt001_Info> oListado = new List<XROL_TALME_Rpt001_Info>();

                using (Entities_Roles_Talme db = new Entities_Roles_Talme())
                {
                    var datos = (from a in db.vwROL_TALME_Rpt001
                                 where a.IdEmpresa == idEmpresa
                                 && a.IdEmpleado == idEmpleado
                                 && a.IdNominaTipo == idNominaTipo
                                 && a.IdNominaTipoLiqui == idNominaTipoLiqui
                                 && a.IdPeriodo == idPeriodo
                                 &&
                                  (a.Ingreso > 0
                                 || a.Egreso > 0 || a.IdRubro == "24")
                                 orderby a.ru_tipo descending
                                 select a);

                    Cbt = empresaData.Get_Info_Empresa(idEmpresa);


                    foreach (var info in datos)
                    {
                        sec = sec + 1;
                        XROL_TALME_Rpt001_Info item = new XROL_TALME_Rpt001_Info();
                        item.IdEmpresa = info.IdEmpresa;
                        item.IdNominaTipo = info.IdNominaTipo;
                        item.IdNominaTipoLiqui = info.IdNominaTipoLiqui;
                        item.IdPeriodo = info.IdPeriodo;

                        item.NombreCompleto = info.pe_apellido + " " + info.pe_nombre;
                        item.Ruc = info.Ruc;
                        item.RucEmpresa = info.RucEmpresa;
                        item.Empresa = info.Empresa;
                        item.RubroDescripcion = info.RubroDescripcion;

                        if (info.em_status == "EST_ACT")
                        {
                            item.Estado = "Activo";
                        }
                        if (info.em_status == "EST_SUB")
                        {
                            item.Estado = " Descanso médico";
                        }

                        if (info.em_status == "EST_VAC")
                        {
                            item.Estado = "De vacaciones";
                        }

                        item.Ingreso = info.Ingreso;
                        item.Egreso = info.Egreso;
                        item.Orden = info.Orden;
                        item.Cargo = info.Cargo;
                        item.Division = info.Division;
                        item.Sucursal = info.Sucursal;
                        //  item.Centro_costo = info.Centro_costo;
                        item.CodigoEmpleado = info.CodigoEmpleado;
                        item.Departamento = info.de_descripcion;
                        item.Logo = Cbt.em_logo_Image;
                        item.RazonSocial = info.RazonSocial;
                        item.FechaPago = info.pe_FechaIni.ToString().Substring(0, 10) + " al " + info.pe_FechaFin.ToString().Substring(0, 10);

                        item.DiasTrabajos = Convert.ToInt32(info.diastrabajados);
                        item.NombreComercial = info.NombreComercial;

                        item.DiasTrabajos = item.DiasTrabajos;
                        item.Horas_al_25 = info.Horas_al_25;
                        item.Horas_al_50 = info.Horas_al_50;
                        item.Horas_al_100 = info.Horas_al_100;

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
                return new List<XROL_TALME_Rpt001_Info>();
            }
        }

        public List<XROL_TALME_Rpt001_Info> GetListConsultaGeneral(int idEmpresa, int IdDepartamento, int idNominaTipo, int idNominaTipoLiqui, int idPeriodo, ref string msg)
        {
            try
            {
                List<XROL_TALME_Rpt001_Info> oListado = new List<XROL_TALME_Rpt001_Info>();

                using (Entities_Roles_Talme db = new Entities_Roles_Talme())
                {
                    var datos = (from a in db.vwROL_TALME_Rpt001
                                 where a.IdEmpresa == idEmpresa && a.IdDepartamento == IdDepartamento
                                 && a.IdNominaTipo == idNominaTipo && a.IdNominaTipoLiqui == idNominaTipoLiqui
                                 && a.IdPeriodo == idPeriodo
                                 orderby a.Orden
                                 select a);

                    Cbt = empresaData.Get_Info_Empresa(idEmpresa);

                    foreach (var info in datos)
                    {
                        XROL_TALME_Rpt001_Info item = new XROL_TALME_Rpt001_Info();
                        item.IdEmpresa = info.IdEmpresa;
                        item.IdNominaTipo = info.IdNominaTipo;
                        item.IdNominaTipoLiqui = info.IdNominaTipoLiqui;
                        item.IdPeriodo = info.IdPeriodo;

                        item.NombreCompleto = info.NombreCompleto;
                        item.Ruc = info.Ruc;
                        item.RucEmpresa = info.RucEmpresa;
                        item.Empresa = info.Empresa;
                        item.RubroDescripcion = info.RubroDescripcion;
                        item.Ingreso = info.Ingreso;
                        item.Egreso = info.Egreso;
                        item.Orden = info.Orden;
                        item.Cargo = info.Cargo;
                        item.Division = info.Division;
                        item.Sucursal = info.Sucursal;
                        //  item.Centro_costo = info.Centro_costo;
                        item.CodigoEmpleado = info.CodigoEmpleado;
                        item.RazonSocial = info.RazonSocial;
                        item.Logo = Cbt.em_logo_Image;
                        item.Departamento = info.de_descripcion;
                        item.Horas_al_25 = info.Horas_al_25;
                        item.Horas_al_50 = info.Horas_al_50;
                        item.Horas_al_100 = info.Horas_al_100;

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
                return new List<XROL_TALME_Rpt001_Info>();
            }
        }
    }
}
