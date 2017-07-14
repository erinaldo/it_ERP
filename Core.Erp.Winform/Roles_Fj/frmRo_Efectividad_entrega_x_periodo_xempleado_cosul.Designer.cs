﻿namespace Core.Erp.Winform.Roles_Fj
{
    partial class frmRo_Efectividad_entrega_x_periodo_xempleado_cosul
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ucGe_BarraEstadoInferior_Forms1 = new Core.Erp.Winform.Controles.UCGe_BarraEstadoInferior_Forms();
            this.ucGe_Menu = new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario();
            this.gc_efectividad = new DevExpress.XtraGrid.GridControl();
            this.gvw_efectividad = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.Col_IdPeriodo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Observacion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_pe_FechaIni = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_pe_FechaFin = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gc_efectividad)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvw_efectividad)).BeginInit();
            this.SuspendLayout();
            // 
            // ucGe_BarraEstadoInferior_Forms1
            // 
            this.ucGe_BarraEstadoInferior_Forms1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ucGe_BarraEstadoInferior_Forms1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ucGe_BarraEstadoInferior_Forms1.Location = new System.Drawing.Point(0, 478);
            this.ucGe_BarraEstadoInferior_Forms1.Name = "ucGe_BarraEstadoInferior_Forms1";
            this.ucGe_BarraEstadoInferior_Forms1.Size = new System.Drawing.Size(1059, 26);
            this.ucGe_BarraEstadoInferior_Forms1.TabIndex = 8;
            // 
            // ucGe_Menu
            // 
            this.ucGe_Menu.CargarTodasBodegas = false;
            this.ucGe_Menu.CargarTodasSucursales = true;
            this.ucGe_Menu.Dock = System.Windows.Forms.DockStyle.Top;
            this.ucGe_Menu.Enable_boton_anular = true;
            this.ucGe_Menu.Enable_boton_CancelarCuotas = true;
            this.ucGe_Menu.Enable_boton_CargaMarcaciónExcel = true;
            this.ucGe_Menu.Enable_boton_consultar = true;
            this.ucGe_Menu.Enable_boton_DiseñoCheque = true;
            this.ucGe_Menu.Enable_boton_DiseñoChequeComprobante = true;
            this.ucGe_Menu.Enable_boton_Duplicar = true;
            this.ucGe_Menu.Enable_boton_GenerarPeriodos = true;
            this.ucGe_Menu.Enable_boton_GenerarXml = true;
            this.ucGe_Menu.Enable_boton_Habilitar_Reg = true;
            this.ucGe_Menu.Enable_boton_Importar_XML = true;
            this.ucGe_Menu.Enable_boton_imprimir = true;
            this.ucGe_Menu.Enable_boton_LoteCheque = true;
            this.ucGe_Menu.Enable_boton_modificar = true;
            this.ucGe_Menu.Enable_boton_nuevo = true;
            this.ucGe_Menu.Enable_boton_NuevoCheque = true;
            this.ucGe_Menu.Enable_boton_periodo = true;
            this.ucGe_Menu.Enable_boton_salir = true;
            this.ucGe_Menu.Enable_btnImpExcel = true;
            this.ucGe_Menu.Enable_Descargar_Marca_Base_exter = true;
            this.ucGe_Menu.fecha_desde = new System.DateTime(2016, 8, 29, 11, 28, 51, 406);
            this.ucGe_Menu.fecha_hasta = new System.DateTime(2016, 10, 29, 11, 28, 51, 406);
            this.ucGe_Menu.FormConsulta = null;
            this.ucGe_Menu.FormMain = null;
            this.ucGe_Menu.GridControlConsulta = null;
            this.ucGe_Menu.Location = new System.Drawing.Point(0, 0);
            this.ucGe_Menu.Name = "ucGe_Menu";
            this.ucGe_Menu.Perfil_x_usuario = null;
            this.ucGe_Menu.Size = new System.Drawing.Size(1059, 158);
            this.ucGe_Menu.TabIndex = 9;
            this.ucGe_Menu.Visible_bodega = false;
            this.ucGe_Menu.Visible_boton_anular = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_CancelarCuotas = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_CargaMarcaciónExcel = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_consular = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu.Visible_boton_DiseñoCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_DiseñoChequeComprobante = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_DiseNoReport = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_Duplicar = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_GenerarPeriodos = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_GenerarXml = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_Habilitar_Reg = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_Importar_XML = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_imprimir = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_LoteCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_boton_modificar = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu.Visible_boton_nuevo = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu.Visible_boton_NuevoCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_btnImpExcel = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_Descargar_Marca_Base_exter = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu.Visible_fechas = true;
            this.ucGe_Menu.Visible_Grupo_Cancelaciones = false;
            this.ucGe_Menu.Visible_Grupo_Diseño_Reporte = false;
            this.ucGe_Menu.Visible_Grupo_filtro = false;
            this.ucGe_Menu.Visible_Grupo_Impresion = false;
            this.ucGe_Menu.Visible_Grupo_Otras_Trans = true;
            this.ucGe_Menu.Visible_Grupo_Transacciones = true;
            this.ucGe_Menu.Visible_Pie_fechas_Boton_buscar = true;
            this.ucGe_Menu.Visible_ribbon_control = true;
            this.ucGe_Menu.Visible_sucursal = false;
            this.ucGe_Menu.event_btnNuevo_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnNuevo_ItemClick(this.ucGe_Menu_event_btnNuevo_ItemClick);
            this.ucGe_Menu.event_btnModificar_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnModificar_ItemClick(this.ucGe_Menu_event_btnModificar_ItemClick);
            this.ucGe_Menu.event_btnconsultar_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnconsultar_ItemClick(this.ucGe_Menu_event_btnconsultar_ItemClick);
            this.ucGe_Menu.event_btnSalir_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnSalir_ItemClick(this.ucGe_Menu_event_btnSalir_ItemClick);
            this.ucGe_Menu.event_btnBuscar_Click += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnBuscar_Click(this.ucGe_Menu_event_btnBuscar_Click);
            // 
            // gc_efectividad
            // 
            this.gc_efectividad.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gc_efectividad.Location = new System.Drawing.Point(0, 158);
            this.gc_efectividad.MainView = this.gvw_efectividad;
            this.gc_efectividad.Name = "gc_efectividad";
            this.gc_efectividad.Size = new System.Drawing.Size(1059, 320);
            this.gc_efectividad.TabIndex = 10;
            this.gc_efectividad.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvw_efectividad});
            // 
            // gvw_efectividad
            // 
            this.gvw_efectividad.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Col_IdPeriodo,
            this.Col_Observacion,
            this.Col_pe_FechaIni,
            this.Col_pe_FechaFin});
            this.gvw_efectividad.GridControl = this.gc_efectividad;
            this.gvw_efectividad.Name = "gvw_efectividad";
            // 
            // Col_IdPeriodo
            // 
            this.Col_IdPeriodo.Caption = "IdPeriodo";
            this.Col_IdPeriodo.FieldName = "IdPeriodo";
            this.Col_IdPeriodo.Name = "Col_IdPeriodo";
            this.Col_IdPeriodo.Visible = true;
            this.Col_IdPeriodo.VisibleIndex = 0;
            this.Col_IdPeriodo.Width = 77;
            // 
            // Col_Observacion
            // 
            this.Col_Observacion.Caption = "Observacion";
            this.Col_Observacion.FieldName = "Observacion";
            this.Col_Observacion.Name = "Col_Observacion";
            this.Col_Observacion.Visible = true;
            this.Col_Observacion.VisibleIndex = 1;
            this.Col_Observacion.Width = 700;
            // 
            // Col_pe_FechaIni
            // 
            this.Col_pe_FechaIni.Caption = "Fecha Inicio";
            this.Col_pe_FechaIni.FieldName = "pe_FechaIni";
            this.Col_pe_FechaIni.Name = "Col_pe_FechaIni";
            this.Col_pe_FechaIni.Visible = true;
            this.Col_pe_FechaIni.VisibleIndex = 2;
            this.Col_pe_FechaIni.Width = 159;
            // 
            // Col_pe_FechaFin
            // 
            this.Col_pe_FechaFin.Caption = "Fecha Fin";
            this.Col_pe_FechaFin.FieldName = "pe_FechaFin";
            this.Col_pe_FechaFin.Name = "Col_pe_FechaFin";
            this.Col_pe_FechaFin.Visible = true;
            this.Col_pe_FechaFin.VisibleIndex = 3;
            this.Col_pe_FechaFin.Width = 225;
            // 
            // frmRo_Efectividad_entrega_x_periodo_xempleado_cosul
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1059, 504);
            this.Controls.Add(this.gc_efectividad);
            this.Controls.Add(this.ucGe_Menu);
            this.Controls.Add(this.ucGe_BarraEstadoInferior_Forms1);
            this.Name = "frmRo_Efectividad_entrega_x_periodo_xempleado_cosul";
            this.Text = "frmRo_Efectividad_entrega_x_periodo_xempleado_cosul";
            ((System.ComponentModel.ISupportInitialize)(this.gc_efectividad)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvw_efectividad)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Controles.UCGe_BarraEstadoInferior_Forms ucGe_BarraEstadoInferior_Forms1;
        private Controles.UCGe_Menu_Mantenimiento_x_usuario ucGe_Menu;
        private DevExpress.XtraGrid.GridControl gc_efectividad;
        private DevExpress.XtraGrid.Views.Grid.GridView gvw_efectividad;
        private DevExpress.XtraGrid.Columns.GridColumn Col_IdPeriodo;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Observacion;
        private DevExpress.XtraGrid.Columns.GridColumn Col_pe_FechaIni;
        private DevExpress.XtraGrid.Columns.GridColumn Col_pe_FechaFin;
    }
}