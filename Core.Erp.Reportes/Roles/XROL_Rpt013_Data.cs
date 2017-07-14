using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Core.Erp.Data.General;
using Core.Erp.Info.General;

namespace Core.Erp.Reportes.Roles
{
   public class XROL_Rpt013_Data
   {
       string mensaje = "";
       tb_Empresa_Info Cbt = new tb_Empresa_Info();
       tb_Empresa_Data empresaData = new tb_Empresa_Data();

       
       public List<XROL_Rpt013_Info> Get_List_Vacaciones(int IdEmpresa, decimal IdEmpleado)
       {
           try
           {
               //DateTime Fi = Convert.ToDateTime(FechaInicio.ToShortDateString());
               //DateTime Ff = Convert.ToDateTime(FechaFin.ToShortDateString());

               List<XROL_Rpt013_Info> listado = new List<XROL_Rpt013_Info>();

               using (EntitiesRolesRptGeneral db = new EntitiesRolesRptGeneral())
               {

                   var querry = (from q in db.vwROL_Rpt013
                                 where q.IdEmpresa == IdEmpresa
                                 && q.IdEmpleado == IdEmpleado                                
                                 select q); 
                   //string Querty = "select IdEmpresa,IdEmpleado,pe_apellido,pe_nombre,sum( Ingreso) as Ingreso,pe_mes,pe_anio,pe_cedulaRuc from vwROL_Rpt013 " +
                   //    "where IdEmpresa ='" + IdEmpresa + "' and IdEmpleado='" + IdEmpleado + "' and pe_FechaIni>='" + Fi + "' and pe_FechaFin<='" + Ff + "' "+
                   //    " group by IdEmpresa,IdEmpleado,pe_apellido,pe_nombre,pe_mes,pe_anio,pe_cedulaRuc";


                   //var Consulta = db.Database.SqlQuery<XROL_Rpt013_Info>(Querty);

                   //listado = Consulta.ToList();
                   foreach (var item in querry.ToList())
                   {
                       XROL_Rpt013_Info info = new XROL_Rpt013_Info();

                       info.IdEmpresa =item.IdEmpresa;
                       info.IdEmpleado = item.IdEmpleado;
                       info.pe_nombreCompleto = item.pe_apellido+" "+item.pe_nombre;
                       info.pe_apellido = item.pe_apellido;
                       info.pe_nombre = item.pe_nombre;
                       info.pe_cedulaRuc = item.pe_cedulaRuc;
                       info.Anio_Desde = item.Anio_Desde;
                       info.Anio_Hasta = item.Anio_Hasta;
                       info.Anio = item.Anio;
                       info.AnioServicio = item.AnioServicio;
                       info.Dias_a_disfrutar = item.Dias_a_disfrutar;
                       info.Dias_pendiente = item.Dias_pendiente;
                       info.Dias_q_Corresponde = item.Dias_q_Corresponde;
                       info.Gozadas_Pgadas = item.Gozadas_Pgadas;
                       info.pe_nombre_remplazo = item.pe_nombre_remplazo;
                       info.Total_Remuneracion = item.Total_Remuneracion;
                       info.Total_Vacaciones = item.Total_Vacaciones;
                       info.Valor_Cancelar = item.Valor_Cancelar;
                       info.Observacion = item.Observacion;
                       info.Mes = item.Mes;
                       info.Iess = item.Iess;
                       info.Fecha_Desde = item.Fecha_Desde;
                       info.Fecha_Hasta = item.Fecha_Hasta;
                       info.em_fecha_ingreso = item.em_fecha_ingreso;
                       info.IdSolicitudVaca = item.IdSolicitudVaca;
                       info.FechaPago = item.FechaPago;
                       info.Fecha_Retorno = item.FechaPago;
                       info.de_descripcion = item.de_descripcion;
                       info.Fecha = item.Fecha;
                       info.Periodo = item.Anio + "-" +item.Mes;
                       listado.Add(info);
                   }

               }
               return listado;
           }
           catch (Exception ex)
           {
               string arreglo = ToString();
               tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
               tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
               mensaje = ex.InnerException + " " + ex.Message;
               oDataLog.Guardar_Log_Error(Log_Error_sis, ref mensaje);
               throw new Exception(ex.InnerException.ToString());
           }

       }

       public List<XROL_Rpt013_Info> Get_List_Vacaciones(int IdEmpresa, decimal IdEmpleado, DateTime fechaInico, DateTime fechafin)
       {
           try
           {
               //DateTime Fi = Convert.ToDateTime(FechaInicio.ToShortDateString());
               //DateTime Ff = Convert.ToDateTime(FechaFin.ToShortDateString());

               List<XROL_Rpt013_Info> listado = new List<XROL_Rpt013_Info>();

               using (EntitiesRolesRptGeneral db = new EntitiesRolesRptGeneral())
               {

                   var querry = (from q in db.vwROL_Rpt013
                                 where q.IdEmpresa == IdEmpresa
                                 && q.IdEmpleado == IdEmpleado                                
                                 select q); 
                   //string Querty = "select IdEmpresa,IdEmpleado,pe_apellido,pe_nombre,sum( Ingreso) as Ingreso,pe_mes,pe_anio,pe_cedulaRuc from vwROL_Rpt013 " +
                   //    "where IdEmpresa ='" + IdEmpresa + "' and IdEmpleado='" + IdEmpleado + "' and pe_FechaIni>='" + Fi + "' and pe_FechaFin<='" + Ff + "' "+
                   //    " group by IdEmpresa,IdEmpleado,pe_apellido,pe_nombre,pe_mes,pe_anio,pe_cedulaRuc";


                   //var Consulta = db.Database.SqlQuery<XROL_Rpt013_Info>(Querty);

                   //listado = Consulta.ToList();
                   foreach (var item in querry.ToList())
                   {
                       XROL_Rpt013_Info info = new XROL_Rpt013_Info();

                       info.IdEmpresa =item.IdEmpresa;
                       info.IdEmpleado = item.IdEmpleado;
                       info.pe_nombreCompleto = item.pe_apellido+" "+item.pe_nombre;
                       info.pe_apellido = item.pe_apellido;
                       info.pe_nombre = item.pe_nombre;
                       info.pe_cedulaRuc = item.pe_cedulaRuc;
                       info.Anio_Desde = item.Anio_Desde;
                       info.Anio_Hasta = item.Anio_Hasta;
                       info.Anio = item.Anio;
                       info.AnioServicio = item.AnioServicio;
                       info.Dias_a_disfrutar = item.Dias_a_disfrutar;
                       info.Dias_pendiente = item.Dias_pendiente;
                       info.Dias_q_Corresponde = item.Dias_q_Corresponde;
                       info.Gozadas_Pgadas = item.Gozadas_Pgadas;
                       info.pe_nombre_remplazo = item.pe_nombre_remplazo;
                       info.Total_Remuneracion = item.Total_Remuneracion;
                       info.Total_Vacaciones = item.Total_Vacaciones;
                       info.Valor_Cancelar = item.Valor_Cancelar;
                       info.Observacion = item.Observacion;
                       info.Mes = item.Mes;
                       info.Iess = item.Iess;
                       info.Fecha_Desde = item.Fecha_Desde;
                       info.Fecha_Hasta = item.Fecha_Hasta;
                       info.em_fecha_ingreso = item.em_fecha_ingreso;
                       info.IdSolicitudVaca = item.IdSolicitudVaca;
                       info.FechaPago = item.FechaPago;
                       info.Fecha_Retorno = item.FechaPago;
                       info.de_descripcion = item.de_descripcion;
                       info.Fecha = item.Fecha;
                       info.Periodo = item.Anio + "-" +item.Mes;
                       listado.Add(info);
                   }

               }
               return listado;
           }
           catch (Exception ex)
           {
               string arreglo = ToString();
               tb_sis_Log_Error_Vzen_Data oDataLog = new tb_sis_Log_Error_Vzen_Data();
               tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
               mensaje = ex.InnerException + " " + ex.Message;
               oDataLog.Guardar_Log_Error(Log_Error_sis, ref mensaje);
               throw new Exception(ex.InnerException.ToString());
           }

       }

    }
}
