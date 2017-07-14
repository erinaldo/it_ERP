using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Core.Erp.Info.Bancos;
using Core.Erp.Info.General;
using Core.Erp.Info.Academico.Archivo_Para_Bancos;
using Core.Erp.Info.General;
using Core.Erp.Business.General;
namespace Core.Erp.Business.Academico.Archivo_Para_Banco
{
   public class VisaMastercardBankard_Bolivariano_Bus
    {
       string mensaje="";
       int numlinea = 0;

       ba_Archivo_Transferencia_Det_Info Info_pacifico = new ba_Archivo_Transferencia_Det_Info();
       public bool Grabar(List<ba_Archivo_Transferencia_Det_Info> lista, string nombreArchivo, ebanco_procesos_bancarios_tipo codigo_proceso)
       {
           try
           {
               string msg = "";
               numlinea = 0;
               switch (codigo_proceso)
               {
                   case ebanco_procesos_bancarios_tipo.DEB_CTA_CTE_AHO_BB:
                       foreach (var item in lista)
                       {
                           numlinea++;
                           Grabar_fille_BB_Cta_Cte_Aho(ValidarLineas_BB_Cta_Cte_Aho(item), nombreArchivo, "",numlinea, ref msg);
                       }
                       break;
                  
                   default:
                       break;
               }
               return true;
           }
           catch (Exception)
           {

               return false;
           }
       }



       #region  MASTERCARD BANCARD DEL PACIFICO
       public VisaMastercardBankard_Bolivariano_Info ValidarLineas_Bankard(ba_Archivo_Transferencia_Det_Info info)
       {
           try
           {
               VisaMastercardBankard_Bolivariano_Info BB_Cta_Cte_Aho_Info = new VisaMastercardBankard_Bolivariano_Info();

               BB_Cta_Cte_Aho_Info.Tarjeta = info.Numero_Documento.PadLeft(16,'0');
               BB_Cta_Cte_Aho_Info.Comercio = "00000000";
               BB_Cta_Cte_Aho_Info.FechadeConsumo = info.Fecha.Year.ToString() + info.Fecha.Month.ToString().PadLeft(2, '0') + info.Fecha.Day.ToString().PadLeft(2, '0');

               decimal valor = Convert.ToDecimal(info.vt_total);
               BB_Cta_Cte_Aho_Info.ValorConsumo = string.Format("{0:0.00}", valor);
               BB_Cta_Cte_Aho_Info.ValorConsumo = BB_Cta_Cte_Aho_Info.ValorConsumo.ToString().Replace(".", "");
               BB_Cta_Cte_Aho_Info.ValorConsumo = BB_Cta_Cte_Aho_Info.ValorConsumo.PadLeft(19, '0');
               BB_Cta_Cte_Aho_Info.ICE = "000000000000000";
               BB_Cta_Cte_Aho_Info.TipoConsumo = "001";
               BB_Cta_Cte_Aho_Info.NumerodeAutorizacion = "111111";
               BB_Cta_Cte_Aho_Info.NumeroMesesDiferido = "01";
               BB_Cta_Cte_Aho_Info.NumeroPagare = "5555555555";
               BB_Cta_Cte_Aho_Info.Filler = "000000";
               BB_Cta_Cte_Aho_Info.FechaExpiracion = info.Fecha.Year.ToString() + info.Fecha.Month.ToString().PadLeft(2, '0') + info.Fecha.Day.ToString().PadLeft(2, '0');
               BB_Cta_Cte_Aho_Info.Iva = "00000000000000000";
               BB_Cta_Cte_Aho_Info.TipodeDiferido = "01";
               BB_Cta_Cte_Aho_Info.Moneda = "D";
               BB_Cta_Cte_Aho_Info.Filer = "0000";
               BB_Cta_Cte_Aho_Info.MontoGravaIva = "0000000000000";
               BB_Cta_Cte_Aho_Info.MontoNoGravaIVA =  "0000000000000";



               return BB_Cta_Cte_Aho_Info;
           }
           catch (Exception ex)
           {
               Core.Erp.Info.Log_Exception.LoggingManager.Logger.Log(Core.Erp.Info.Log_Exception.LoggingCategory.Error, ex.Message);
               throw new Core.Erp.Info.Log_Exception.DalException(string.Format("", "pu_ValidarLineaSAT", ex.Message), ex) { EntityType = typeof(VisaMastercardBankard_Bolivariano_Bus) };

           }
       }


       public Deb_Cta_Cte_Aho_Bolivariano_Info ValidarLineas_BB_Cta_Cte_Aho(ba_Archivo_Transferencia_Det_Info info)
       {
           try
           {
               Deb_Cta_Cte_Aho_Bolivariano_Info BB_Cta_Cte_Aho_Info = new Deb_Cta_Cte_Aho_Bolivariano_Info();
               string CodigoProceso = "";
               decimal valor = 0;

               switch(info.concepto_estado_cuenta)
               {
                   case "PENSION":
                       {
                           CodigoProceso = "0";
                           break;
                       }
                   case "MATRICULA":
                        {
                            CodigoProceso = "1";
                            break;
                        }
                   ////default:
                   ////     {
                   ////         CodigoProceso = "2";
                   ////     }
               }
               valor = Convert.ToDecimal(string.Format("{0:0.00}",info.vt_total));
               //Diner_Info.Valorconsumotarifa0 = string.Format("{0:0.00}", valor).PadLeft(11, '0');     
                    

                BB_Cta_Cte_Aho_Info.Indicador = "999";
                BB_Cta_Cte_Aho_Info.CodigoColegio = info.codigo_empresa_proceso_bancario;
                BB_Cta_Cte_Aho_Info.CodigoProceso = CodigoProceso;
                BB_Cta_Cte_Aho_Info.FechaFacturacion = info.Fecha.Day.ToString().PadLeft(2,'0') + "/" + info.Fecha.Month.ToString().PadLeft(2, '0') + "/" + info.Fecha.Year.ToString().PadLeft(2, '0');

                //Detalle
                BB_Cta_Cte_Aho_Info.CodigoAlumno = info.codigo_unico_estudiante.PadLeft(6,'0').PadRight(15, ' ');

                BB_Cta_Cte_Aho_Info.FechaIngresoPension = info.Fecha.Day.ToString().PadLeft(2, '0') + "/" + info.Fecha.Month.ToString().PadLeft(2, '0') + "/" + info.Fecha.Year.ToString().PadLeft(2, '0');
                BB_Cta_Cte_Aho_Info.Valor = string.Format("{0:0.00}", valor).PadLeft(11, '0');

                ///////////////////SE DEBE TOMAR DE UN COMBO
                BB_Cta_Cte_Aho_Info.FechaTopePago = info.Fecha.Day.ToString().PadLeft(2, '0') + "/" + info.Fecha.Month.ToString().PadLeft(2, '0') + "/" + info.Fecha.Year.ToString().PadLeft(2, '0');

                BB_Cta_Cte_Aho_Info.FechaTopeProntoPago = "01/01/1900";
                //N Alumnos pendiente de pago, P alumnos becados(Todos los Valores en 0)
                BB_Cta_Cte_Aho_Info.Estado = "N";
                BB_Cta_Cte_Aho_Info.NombreEstudiante = info.pe_nombreCompleto.Length <= 30 ? info.pe_nombreCompleto.PadRight(30, ' ') : info.pe_nombreCompleto.Substring(0, 30);
                BB_Cta_Cte_Aho_Info.Curso = info.Descripcion_cur.Length <= 15 ? info.Descripcion_cur.PadRight(15, ' ') : info.Descripcion_cur.Substring(0, 15);
                BB_Cta_Cte_Aho_Info.Paralelo = info.Descripcion_paralelo.Length <= 3 ? info.Descripcion_paralelo.PadRight(3, ' ') : info.Descripcion_paralelo.Substring(0, 3);
                BB_Cta_Cte_Aho_Info.Seccion = info.Descripcion_secc.Length <= 15 ? info.Descripcion_secc.PadRight(15, ' ') : info.Descripcion_secc.Substring(0, 15);
                BB_Cta_Cte_Aho_Info.ValorActual = string.Format("{0:0.00}", valor).PadLeft(11, '0');
                BB_Cta_Cte_Aho_Info.CuentaBanco = info.Numero_Documento.Length <= 10 ? info.Numero_Documento.PadRight(10,' ') : info.Descripcion_secc.Substring(0, 10);
                BB_Cta_Cte_Aho_Info.Moneda = "1";
                BB_Cta_Cte_Aho_Info.Monto1 = string.Format("{0:0.00}", valor).PadLeft(11, '0');
                BB_Cta_Cte_Aho_Info.Monto2 = string.Format("{0:0.00}", valor).PadLeft(11, '0');

               return BB_Cta_Cte_Aho_Info;
           }
           catch (Exception ex)
           {
               Core.Erp.Info.Log_Exception.LoggingManager.Logger.Log(Core.Erp.Info.Log_Exception.LoggingCategory.Error, ex.Message);
               throw new Core.Erp.Info.Log_Exception.DalException(string.Format("", "pu_ValidarLineaSAT", ex.Message), ex) { EntityType = typeof(VisaMastercardBankard_Bolivariano_Bus) };

           }
       }


       public Boolean Grabar_fille_Bankard(VisaMastercardBankard_Bolivariano_Info info, string nombreArchivo, string carSeparador, ref string msg)
       {
           try
           {


               string linea = "";
               linea += info.Tarjeta + carSeparador;
               linea += info.Comercio + carSeparador;
               linea += info.FechadeConsumo + carSeparador;
               linea += info.ValorConsumo + carSeparador;
               linea += info.ICE + carSeparador;
               linea += info.NumerodeAutorizacion + carSeparador;
               linea += info.NumeroMesesDiferido + carSeparador;
               linea += info.NumeroPagare + carSeparador;
               linea += info.Filler + carSeparador;
               linea += info.FechaExpiracion + carSeparador;
               linea += info.Iva + carSeparador;
               linea += info.TipodeDiferido + carSeparador;
               linea += info.Moneda + carSeparador;
               linea += info.MontoGravaIva + carSeparador;
               linea += info.MontoNoGravaIVA + carSeparador;


               using (System.IO.StreamWriter file = new System.IO.StreamWriter(nombreArchivo, true))
               {
                   file.WriteLine(linea);
                   file.Close();
               }

               return true;
           }
           catch (Exception ex)
           {
               string arreglo = ToString();
               tb_sis_Log_Error_Vzen_Bus oDataLog = new tb_sis_Log_Error_Vzen_Bus();
               tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
               mensaje = ex.InnerException + " " + ex.Message;
               throw new Exception(ex.InnerException.ToString());
           }
       }
       public Boolean Grabar_fille_BB_Cta_Cte_Aho(Deb_Cta_Cte_Aho_Bolivariano_Info info, string nombreArchivo, string carSeparador, int numlinea, ref string msg)
       {
           try
           {
               string linea = "";
               if (numlinea == 1)
               {
                   linea += info.Indicador + info.CodigoColegio + info.CodigoProceso.PadRight(12, ' ') + info.FechaFacturacion + "\n";

               }


               linea += info.CodigoColegio;
               linea += info.CodigoAlumno;
               linea += info.FechaIngresoPension;
               linea += info.CodigoProceso.PadRight(3, ' ');
               linea += info.Valor;
               linea += info.FechaTopePago;
               linea += info.FechaTopeProntoPago;
               linea += info.Estado;
               linea += info.NombreEstudiante;
               linea += info.Curso;
               linea += info.Paralelo;
               linea += info.Seccion;
               linea += info.ValorActual;
               linea += info.CuentaBanco;
               linea += info.Moneda;
               linea += info.Monto1;
               linea += info.Monto2;

               using (System.IO.StreamWriter file = new System.IO.StreamWriter(nombreArchivo, true))
               {
                   file.WriteLine(linea);
                   file.Close();
               }

               return true;
           }
           catch (Exception ex)
           {
               string arreglo = ToString();
               tb_sis_Log_Error_Vzen_Bus oDataLog = new tb_sis_Log_Error_Vzen_Bus();
               tb_sis_Log_Error_Vzen_Info Log_Error_sis = new tb_sis_Log_Error_Vzen_Info(ex.ToString(), "", arreglo, "", "", "", "", "", DateTime.Now);
               mensaje = ex.InnerException + " " + ex.Message;
               throw new Exception(ex.InnerException.ToString());
           }
       }
       
       #endregion




    }
}
