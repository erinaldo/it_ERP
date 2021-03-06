﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core.Erp.Info.Produc_Cirdesus;
using Core.Erp.Data.General;
using Core.Erp.Info.General;

namespace Core.Erp.Data.Produc_Cirdesus
{
    public class prd_MovPteGrua_Data
    {
        string mensaje = "";
        public List<prd_MovPteGrua_Info> ObtenerListaPteGrua(int idempresa, ref string msg)
        {
            try
            {
                List<prd_MovPteGrua_Info> lm = new List<prd_MovPteGrua_Info>();
                EntitiesProduccion_Cidersus OE = new EntitiesProduccion_Cidersus();
                var registros = from A in OE.vwprd_MovPteGrua
                                //orderby A.IdMovPteGrua
                                select A;

                foreach (var Info in registros)
                {
                    prd_MovPteGrua_Info Obj = new prd_MovPteGrua_Info();
                          lm.Add(Obj);
                }

                return lm;
            }
            catch (Exception ex)
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                msg = ex.ToString() + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref msg);
                throw new Exception(ex.ToString());
            }
        }

        public List< prd_MovPteGrua_Info >ListadoMovimientos(int IdPuenteGrua,  int IdOperaor, DateTime Fdesde, DateTime Fhasta,ref string msg)
        {
            try
            {
                List<prd_MovPteGrua_Info> ListadoMovimiento = new List<prd_MovPteGrua_Info>();
                using (EntitiesProduccion_Cidersus context = new EntitiesProduccion_Cidersus())
                {
                    var select = from q in context.prd_Movimiento_PteGrua
                                 where q.IdPuenteGrua == IdPuenteGrua && q.IdOperador == IdOperaor
                                 select q;


                    foreach (var item in select)
                    {
                        prd_MovPteGrua_Info Address = new prd_MovPteGrua_Info();
                        Address.IdEmpresa = item.IdEmpresa;
                        Address.IdSucursal = item.IdSucursal;
                        Address.IdPuenteGrua = item.IdPuenteGrua;
                        Address.IdOperador = item.IdOperador;
                      //  Address.IdObra = item.IdObra;
                       // Address.IdOrdenTaller = item.IdOrdenTaller;
                        Address.IdMovimiento = item.IdMovimiento;
                       // Address.Origen = item.Origen;
                      //  Address.Destino = item.Destino;
                        Address.CodigoBarra = item.CodigoBarra;
                      //  Address.DescripcionProd = item.DescripcionProd;
                        Address.ToneladasMover =Convert.ToInt32( item.ToneladasMover);
                        Address.Observacion = item.Observacion;
                        Address.FechaTransaccion =Convert.ToDateTime( item.FechaTransaccion);
                        Address.IdUsuario = item.IdUsuario;
                        Address.IdUsuarioAnu = item.IdUsuarioAnu;
                        Address.MotivoAnu = item.MotivoAnu;
                        Address.IdUsuarioUltModi = item.IdUsuarioUltModi;
                        //Address.FechaAnu = null;
                        //Address.FechaUltModi = null;
                        Address.Estado = item.Estado;
                        ListadoMovimiento.Add(Address);
                    }
                }
                return ListadoMovimiento;
			}
 
             catch (Exception ex) 
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                msg = ex.ToString() + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref msg);
                throw new Exception(ex.ToString());
            }
        }

        public int getIdMovimiento(int idempresa, int IdPuenteGrua )
        {
            try
            {
                int Id;
                EntitiesProduccion_Cidersus OEProduccion = new EntitiesProduccion_Cidersus();
                var select = from q in OEProduccion.prd_Movimiento_PteGrua
                             where q.IdEmpresa == idempresa && q.IdSucursal == IdPuenteGrua
                             select q;

                if (select.ToList().Count < 1)
                {
                    Id = 1;
                }
                else
                {
                    var select_pv = (from q in OEProduccion.prd_Movimiento_PteGrua
                                     where q.IdEmpresa == idempresa && q.IdPuenteGrua == IdPuenteGrua
                                     select q.IdMovimiento).Max();
                    Id = Convert.ToInt32(select_pv.ToString()) + 1;
                }
                return 0;
            }
            catch (Exception ex)
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                mensaje = ex.ToString() + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref mensaje);
                throw new Exception(ex.ToString());
            }

        }



        public Boolean GrabarDB(prd_MovPteGrua_Info Info, ref string msg)
        {
            try
            {
                using (EntitiesProduccion_Cidersus context = new EntitiesProduccion_Cidersus())
                {
                    prd_Movimiento_PteGrua Address = new prd_Movimiento_PteGrua();
                   
                    Address.IdEmpresa=Info.IdEmpresa;
                    Address.IdSucursal=Info.IdSucursal;
                    Address.IdPuenteGrua =Info.IdPuenteGrua;
                    Address.IdOperador = Info.IdOperador;
                   // Address.IdObra = Info.IdObra;
                  //  Address.IdOrdenTaller = Info.IdOrdenTaller;
                    Address.IdMovimiento = Info.IdMovimiento;
                  //  Address.Origen = Info.Origen;
                 //   Address.Destino = Info.Destino;
                    Address.CodigoBarra = Info.CodigoBarra;
                  //  Address.DescripcionProd = Info.DescripcionProd;
                    Address.ToneladasMover = Info.ToneladasMover;
                    Address.Observacion = Info.Observacion;
                    Address.FechaTransaccion = Info.FechaTransaccion;
                    Address.IdUsuario = Info.IdUsuario;
                    Address.IdUsuarioAnu = Info.IdUsuarioAnu;
                    Address.MotivoAnu = Info.MotivoAnu;
                    Address.IdUsuarioUltModi = Info.IdUsuarioUltModi;
                    Address.FechaAnu = null;
                    Address.FechaUltModi = null;
                    Address.Estado = Info.Estado;
                    context.prd_Movimiento_PteGrua.Add(Address);                 
                    context.SaveChanges();
                }
                
                return true;
            }
            catch (Exception ex) 
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                msg = ex.ToString() + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref msg);
                throw new Exception(ex.ToString());
            }
        }

       
        public Boolean Anular(int idempresa, prd_MovPteGrua_Info Info, ref string msg)
        {
            try
            {
                using (EntitiesProduccion_Cidersus context = new EntitiesProduccion_Cidersus())
                {
                   // var contact = context.prd_MovPteGrua.First(A => A.IdEmpresa == idempresa && A.IdSucursal == Info.IdSucursal && A.IdMovPteGrua == Info.IdMovPteGrua);

                   


                    context.SaveChanges();
                   // msg = "Se Cambio el estado de la Movilización Pte Grua # :" + Info.IdMovPteGrua.ToString() + " exitosamente";
                }
                return true;

            }
            catch (Exception ex)
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                msg = ex.ToString() + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref msg);
                throw new Exception(ex.ToString());
            }
        }

        public List<vwprd_MovPteGruaSaldo_Info> MovPteGruaSaldo(int et_idempresa, int et_idprocesoprod, int et_idetapa,
            decimal ot_idordentaller,string ot_codobra)
        {
            try
            {
                List<vwprd_MovPteGruaSaldo_Info> Lst = new List<vwprd_MovPteGruaSaldo_Info>();
                EntitiesProduccion_Cidersus oEnti = new EntitiesProduccion_Cidersus();
                //var Query = from q in oEnti.vwprd_MovPteGruaSaldo
                //            where q.et_IdEmpresa == et_idempresa 
                //            && q.et_IdEtapa == et_idetapa 
                //            && q.et_IdProcesoProductivo == q.et_IdProcesoProductivo
                //            && q.ot_CodObra == ot_codobra 
                //            && q.ot_IdOrdenTaller == ot_idordentaller 
                //            select q;
                
                //foreach (var Info in Query)
                //{
                //    vwprd_MovPteGruaSaldo_Info Obj = new vwprd_MovPteGruaSaldo_Info();
                //    Obj.et_IdEmpresa = Convert.ToInt32(Info.et_IdEmpresa);
                //    Obj.et_IdProcesoProductivo =Convert.ToInt32( Info.et_IdProcesoProductivo);
                //    Obj.et_IdEtapa = Convert.ToInt32(Info.et_IdEtapa);
                //    Obj.IdProducto = Info.IdProducto;
                //    Obj.CodigoBarra = Info.CodigoBarra;
                //    Obj.ot_CodObra = Info.ot_CodObra;
                //    Obj.ot_IdOrdenTaller =Convert.ToDecimal ( Info.ot_IdOrdenTaller);
                //    Obj.mv_tipo_movi = Info.mv_tipo_movi;
                //    Obj.mpg_cant = Convert.ToInt32(Info.mpg_cant);
                //    Obj.mpg_codbarra = Info.mpg_codbarra;
                   
                //    Lst.Add(Obj);
                //}
                return Lst;
            }
            catch (Exception ex) 
            {
                string arreglo = ToString();
                tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
                tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
                mensaje = ex.ToString() + " " + ex.Message;
                oDataLog.Guardar_Log_Error(Log_Error_sis, ref mensaje);
                throw new Exception(ex.ToString());
            }
        }
    }
}
