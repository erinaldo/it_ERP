﻿namespace Core.Erp.Winform.Academico
{
    partial class FrmAca_Rubro_x_fa_descuento_Cons
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
            this.ucGe_Menu_Mantenimiento_x_usuario1 = new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario();
            this.gridControlRubroDescuento = new DevExpress.XtraGrid.GridControl();
            this.gridViewRubroDescuento = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.col_IdInstitucion_rub = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_IdRubro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_IdDescuento = new DevExpress.XtraGrid.Columns.GridColumn();
            this.col_IdEmpresa_fadesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Sede = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Rubro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Descuento = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_PorcentajeDescuento = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Estado = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlRubroDescuento)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewRubroDescuento)).BeginInit();
            this.SuspendLayout();
            // 
            // ucGe_Menu_Mantenimiento_x_usuario1
            // 
            this.ucGe_Menu_Mantenimiento_x_usuario1.CargarTodasBodegas = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.CargarTodasSucursales = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Dock = System.Windows.Forms.DockStyle.Top;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_anular = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_CancelarCuotas = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_CargaMarcaciónExcel = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_consultar = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_DiseñoCheque = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_DiseñoChequeComprobante = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_Duplicar = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_GenerarPeriodos = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_GenerarXml = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_Habilitar_Reg = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_Importar_XML = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_imprimir = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_LoteCheque = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_modificar = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_nuevo = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_NuevoCheque = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_periodo = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_boton_salir = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_btnImpExcel = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Enable_Descargar_Marca_Base_exter = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.fecha_desde = new System.DateTime(2017, 6, 4, 9, 32, 49, 868);
            this.ucGe_Menu_Mantenimiento_x_usuario1.fecha_hasta = new System.DateTime(2017, 8, 4, 9, 32, 49, 868);
            this.ucGe_Menu_Mantenimiento_x_usuario1.FormConsulta = null;
            this.ucGe_Menu_Mantenimiento_x_usuario1.FormMain = null;
            this.ucGe_Menu_Mantenimiento_x_usuario1.GridControlConsulta = null;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Location = new System.Drawing.Point(0, 0);
            this.ucGe_Menu_Mantenimiento_x_usuario1.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.ucGe_Menu_Mantenimiento_x_usuario1.Name = "ucGe_Menu_Mantenimiento_x_usuario1";
            this.ucGe_Menu_Mantenimiento_x_usuario1.Perfil_x_usuario = null;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Size = new System.Drawing.Size(912, 117);
            this.ucGe_Menu_Mantenimiento_x_usuario1.TabIndex = 0;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_bodega = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_anular = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_CancelarCuotas = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_CargaMarcaciónExcel = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_consular = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_DiseñoCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_DiseñoChequeComprobante = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_DiseNoReport = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_Duplicar = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_GenerarPeriodos = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_GenerarXml = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_Habilitar_Reg = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_Importar_XML = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_imprimir = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_LoteCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_modificar = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_nuevo = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_boton_NuevoCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_btn_imprimir_lote = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_btnImpExcel = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Descargar_Marca_Base_exter = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_fechas = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Grupo_Cancelaciones = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Grupo_Diseño_Reporte = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Grupo_filtro = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Grupo_Impresion = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Grupo_Otras_Trans = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Grupo_Transacciones = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_Pie_fechas_Boton_buscar = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_ribbon_control = true;
            this.ucGe_Menu_Mantenimiento_x_usuario1.Visible_sucursal = false;
            this.ucGe_Menu_Mantenimiento_x_usuario1.event_btnNuevo_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnNuevo_ItemClick(this.ucGe_Menu_Mantenimiento_x_usuario1_event_btnNuevo_ItemClick);
            this.ucGe_Menu_Mantenimiento_x_usuario1.event_btnModificar_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnModificar_ItemClick(this.ucGe_Menu_Mantenimiento_x_usuario1_event_btnModificar_ItemClick);
            this.ucGe_Menu_Mantenimiento_x_usuario1.event_btnconsultar_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnconsultar_ItemClick(this.ucGe_Menu_Mantenimiento_x_usuario1_event_btnconsultar_ItemClick);
            this.ucGe_Menu_Mantenimiento_x_usuario1.event_btnAnular_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnAnular_ItemClick(this.ucGe_Menu_Mantenimiento_x_usuario1_event_btnAnular_ItemClick);
            this.ucGe_Menu_Mantenimiento_x_usuario1.event_btnImprimir_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnImprimir_ItemClick(this.ucGe_Menu_Mantenimiento_x_usuario1_event_btnImprimir_ItemClick);
            this.ucGe_Menu_Mantenimiento_x_usuario1.event_btnSalir_ItemClick += new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario.delegate_btnSalir_ItemClick(this.ucGe_Menu_Mantenimiento_x_usuario1_event_btnSalir_ItemClick);
            // 
            // gridControlRubroDescuento
            // 
            this.gridControlRubroDescuento.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControlRubroDescuento.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.gridControlRubroDescuento.Location = new System.Drawing.Point(0, 117);
            this.gridControlRubroDescuento.MainView = this.gridViewRubroDescuento;
            this.gridControlRubroDescuento.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.gridControlRubroDescuento.Name = "gridControlRubroDescuento";
            this.gridControlRubroDescuento.Size = new System.Drawing.Size(912, 327);
            this.gridControlRubroDescuento.TabIndex = 1;
            this.gridControlRubroDescuento.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewRubroDescuento});
            // 
            // gridViewRubroDescuento
            // 
            this.gridViewRubroDescuento.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.col_IdInstitucion_rub,
            this.Col_IdRubro,
            this.Col_IdDescuento,
            this.col_IdEmpresa_fadesc,
            this.Col_Sede,
            this.Col_Rubro,
            this.Col_Descuento,
            this.Col_PorcentajeDescuento,
            this.Col_Estado});
            this.gridViewRubroDescuento.GridControl = this.gridControlRubroDescuento;
            this.gridViewRubroDescuento.Name = "gridViewRubroDescuento";
            this.gridViewRubroDescuento.OptionsView.ShowAutoFilterRow = true;
            this.gridViewRubroDescuento.OptionsView.ShowGroupPanel = false;
            this.gridViewRubroDescuento.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.gridViewDescuento_RowCellStyle);
            // 
            // col_IdInstitucion_rub
            // 
            this.col_IdInstitucion_rub.Caption = "IdInstitucion_rub";
            this.col_IdInstitucion_rub.FieldName = "IdInstitucion_rub";
            this.col_IdInstitucion_rub.Name = "col_IdInstitucion_rub";
            this.col_IdInstitucion_rub.OptionsColumn.AllowEdit = false;
            // 
            // Col_IdRubro
            // 
            this.Col_IdRubro.Caption = "IdRubro";
            this.Col_IdRubro.FieldName = "IdRubro";
            this.Col_IdRubro.Name = "Col_IdRubro";
            this.Col_IdRubro.OptionsColumn.AllowEdit = false;
            // 
            // Col_IdDescuento
            // 
            this.Col_IdDescuento.Caption = "IdDescuento";
            this.Col_IdDescuento.FieldName = "IdDescuento";
            this.Col_IdDescuento.Name = "Col_IdDescuento";
            this.Col_IdDescuento.OptionsColumn.AllowEdit = false;
            // 
            // col_IdEmpresa_fadesc
            // 
            this.col_IdEmpresa_fadesc.Caption = "IdEmpresa_fadesc";
            this.col_IdEmpresa_fadesc.FieldName = "IdEmpresa_fadesc";
            this.col_IdEmpresa_fadesc.Name = "col_IdEmpresa_fadesc";
            this.col_IdEmpresa_fadesc.OptionsColumn.AllowEdit = false;
            // 
            // Col_Sede
            // 
            this.Col_Sede.Caption = "Sede";
            this.Col_Sede.FieldName = "sede";
            this.Col_Sede.Name = "Col_Sede";
            this.Col_Sede.Visible = true;
            this.Col_Sede.VisibleIndex = 0;
            // 
            // Col_Rubro
            // 
            this.Col_Rubro.Caption = "Rubro";
            this.Col_Rubro.FieldName = "rubro";
            this.Col_Rubro.Name = "Col_Rubro";
            this.Col_Rubro.Visible = true;
            this.Col_Rubro.VisibleIndex = 1;
            // 
            // Col_Descuento
            // 
            this.Col_Descuento.Caption = "Descuento";
            this.Col_Descuento.FieldName = "descuento";
            this.Col_Descuento.Name = "Col_Descuento";
            this.Col_Descuento.Visible = true;
            this.Col_Descuento.VisibleIndex = 2;
            // 
            // Col_PorcentajeDescuento
            // 
            this.Col_PorcentajeDescuento.Caption = "%";
            this.Col_PorcentajeDescuento.FieldName = "porcentaje_descuento";
            this.Col_PorcentajeDescuento.Name = "Col_PorcentajeDescuento";
            this.Col_PorcentajeDescuento.Visible = true;
            this.Col_PorcentajeDescuento.VisibleIndex = 3;
            // 
            // Col_Estado
            // 
            this.Col_Estado.Caption = "Estado";
            this.Col_Estado.FieldName = "Estado";
            this.Col_Estado.Name = "Col_Estado";
            this.Col_Estado.Visible = true;
            this.Col_Estado.VisibleIndex = 4;
            // 
            // FrmAca_Rubro_x_fa_descuento_Cons
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(912, 444);
            this.Controls.Add(this.gridControlRubroDescuento);
            this.Controls.Add(this.ucGe_Menu_Mantenimiento_x_usuario1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "FrmAca_Rubro_x_fa_descuento_Cons";
            this.Text = "Descuentos por Rubro";
            ((System.ComponentModel.ISupportInitialize)(this.gridControlRubroDescuento)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewRubroDescuento)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Controles.UCGe_Menu_Mantenimiento_x_usuario ucGe_Menu_Mantenimiento_x_usuario1;
        private DevExpress.XtraGrid.GridControl gridControlRubroDescuento;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewRubroDescuento;
        private DevExpress.XtraGrid.Columns.GridColumn col_IdInstitucion_rub;
        private DevExpress.XtraGrid.Columns.GridColumn Col_IdRubro;
        private DevExpress.XtraGrid.Columns.GridColumn Col_IdDescuento;
        private DevExpress.XtraGrid.Columns.GridColumn col_IdEmpresa_fadesc;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Sede;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Rubro;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Descuento;
        private DevExpress.XtraGrid.Columns.GridColumn Col_PorcentajeDescuento;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Estado;
    }
}