using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections;
using System.Collections.Generic;
using Core.Erp.Business.General;
namespace Core.Erp.Reportes.Roles
{
    public partial class XROL_Rpt013_rpt : DevExpress.XtraReports.UI.XtraReport
    {
        List<XROL_Rpt013_Info> Listado = new List<XROL_Rpt013_Info>();
        XROL_Rpt013_Info info = new XROL_Rpt013_Info();
        XROL_Rpt013_Bus bus = new XROL_Rpt013_Bus();
        cl_parametrosGenerales_Bus param = cl_parametrosGenerales_Bus.Instance;
        public XROL_Rpt013_rpt()
        {
            InitializeComponent();
        }

        //private void TopMargin_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    info = new XROL_Rpt013_Info();
            
        //    this.DataSource = Listado.ToArray();

        //    foreach (var item in Listado)
        //    {
        //        info.Total_Remuneracion = info.Total_Remuneracion + item.Total_Remuneracion;
                
        //    }

        //    if (info != null)
        //    {

        //        //string Periodo = Convert.ToString(info.Anio +"-"+ info.Mes);
        //        //lblPeriodo.Text = Periodo;
        //        //string Dias_Tomados = Convert.ToString(info.Dias_a_disfrutar)

        //        double ValorDiasAdicional = Math.Round((info.Total_Remuneracion / 360) * Convert.ToInt32(ro_dias_adicionales.Value), 2);
        //        double vacaciones = Math.Round(info.Total_Remuneracion / 24, 2);
        //        lb_Valor_adicional.Text =Convert.ToString( ValorDiasAdicional);
        //        lbtotal.Text = Convert.ToString(Math.Round(ValorDiasAdicional + vacaciones, 2));
        //        double Iess = Math.Round(Convert.ToDouble(((ValorDiasAdicional + vacaciones) * 9.45) / 100), 2);
        //        //lb_IESS.Text =Convert.ToString( Iess);
        //        //lb_neto_recibir.Text = Convert.ToString((vacaciones + ValorDiasAdicional) - Iess);
        //        lb_vacaciones.Text = Convert.ToString(vacaciones);
        //        tot_ingreso_bruto.Text = Math.Round(info.Total_Remuneracion, 2).ToString();
        //    }
        //}


      public  void Set(List<XROL_Rpt013_Info> Lista)
        {

            try
            {
                Listado = Lista;
               
            }
            catch (Exception ex)
            {
                
                
            }
        }

      private void XROL_Rpt013_rpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
      {
          this.DataSource = Listado.ToArray();
      }
    }
}
