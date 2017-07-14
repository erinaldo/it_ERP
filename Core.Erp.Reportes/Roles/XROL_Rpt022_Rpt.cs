﻿using System;
using System.Drawing;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

using System.Collections.Generic;
using Core.Erp.Business.Roles;
using Core.Erp.Business.General;
using Core.Erp.Info.Roles;

namespace Core.Erp.Reportes.Roles
{
   
    public partial class XROL_Rpt022_Rpt: DevExpress.XtraReports.UI.XtraReport
    {
        cl_parametrosGenerales_Bus param = cl_parametrosGenerales_Bus.Instance;
        string mensaje = "";

        XROL_Rpt022_Bus oReporteBus = new XROL_Rpt022_Bus();
        List<XROL_Rpt022_Info> oListado = new List<XROL_Rpt022_Info>();
        public XROL_Rpt022_Rpt()
        {
            InitializeComponent();
        }

        private void XROL_Rpt016_Rpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            try
            {
            int idEmpresa = param.IdEmpresa;
            DateTime fechaInicial = Convert.ToDateTime(Parameters["s_fechaInicial"].Value);
            DateTime fechaFinal = Convert.ToDateTime(Parameters["s_fechaFinal"].Value);
            int IdDepartamento = Convert.ToInt32(Parameters["p_IdDepartamento"].Value);
            int idEmpleado = Convert.ToInt32(Parameters["p_IdEmpleado"].Value);
            int idnomina = Convert.ToInt32(Parameters["p_idnomina"].Value);


            if (idEmpleado != 0 && IdDepartamento != 0 && idnomina != 0)
            {
                oListado = oReporteBus.Get_List_Prestamos_Empleado(idEmpresa, idnomina, IdDepartamento, idEmpleado, fechaInicial, fechaFinal);
                this.DataSource = oListado.ToArray();
            }
            if (idEmpleado == 0 && idnomina != 0 && IdDepartamento != 0)
            {

                oListado = oReporteBus.Get_List_Prestamos_Empleado(idEmpresa, idnomina, IdDepartamento, fechaInicial, fechaFinal);
                this.DataSource = oListado.ToArray();

            }
            if (idEmpleado == 0 && IdDepartamento == 0 && idnomina != 0 && IdDepartamento == 0)
            {

                oListado = oReporteBus.Get_List_Prestamos_Empleado(idEmpresa, idnomina, fechaInicial, fechaFinal);
                this.DataSource = oListado.ToArray();

            }

            int tot_registro = 0;
            if (oListado.Count() > 0)
            {
                tot_registro = oListado.Max(v => v.secuencia);
            }
            lb_fecha_i.Text = fechaInicial.ToString().Substring(0, 10);
            lb_fecha_f.Text = fechaFinal.ToString().Substring(0, 10);
            lb_total_R.Text = tot_registro.ToString();
            }
            catch (Exception)
            {
                
                throw;
            }

        }

    }
}
