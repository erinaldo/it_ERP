﻿namespace Core.Erp.Winform.Produccion_Edehsa
{
    partial class FrmPrd_ListadoMaterialesDisponiblesConsulta
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPrd_ListadoMaterialesDisponiblesConsulta));
            this.gridCtrlListMaterialesDisponibles = new DevExpress.XtraGrid.GridControl();
            this.comListadoMaterialesDisponiblesInfoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridViewListMaterialesDisponibles = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colIdEmpresa = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIdSucursal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIdOrdenTaller = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIdListadoMaterialesDisponibles = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCodObra = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFechaReg = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEstado = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colsu_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colot_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colob_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.collm_Observacion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.prdListadoMaterialesDisponiblesInfoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.printingSystem1 = new DevExpress.XtraPrinting.PrintingSystem(this.components);
            this.printableComponentLink1 = new DevExpress.XtraPrinting.PrintableComponentLink(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.ucGe_Menu_Mantenimiento_x_usuario = new Core.Erp.Winform.Controles.UCGe_Menu_Mantenimiento_x_usuario();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            ((System.ComponentModel.ISupportInitialize)(this.gridCtrlListMaterialesDisponibles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comListadoMaterialesDisponiblesInfoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewListMaterialesDisponibles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.prdListadoMaterialesDisponiblesInfoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.printingSystem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.printableComponentLink1.ImageCollection)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridCtrlListMaterialesDisponibles
            // 
            this.gridCtrlListMaterialesDisponibles.DataSource = this.comListadoMaterialesDisponiblesInfoBindingSource;
            this.gridCtrlListMaterialesDisponibles.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridCtrlListMaterialesDisponibles.Location = new System.Drawing.Point(0, 0);
            this.gridCtrlListMaterialesDisponibles.MainView = this.gridViewListMaterialesDisponibles;
            this.gridCtrlListMaterialesDisponibles.Name = "gridCtrlListMaterialesDisponibles";
            this.gridCtrlListMaterialesDisponibles.Size = new System.Drawing.Size(746, 303);
            this.gridCtrlListMaterialesDisponibles.TabIndex = 13;
            this.gridCtrlListMaterialesDisponibles.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridViewListMaterialesDisponibles});
            // 
            // comListadoMaterialesDisponiblesInfoBindingSource
            // 
            this.comListadoMaterialesDisponiblesInfoBindingSource.DataSource = typeof(Core.Erp.Info.Compras_Edehsa.com_ListadoMaterialesDisponibles_Info);
            // 
            // gridViewListMaterialesDisponibles
            // 
            this.gridViewListMaterialesDisponibles.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colIdEmpresa,
            this.colIdSucursal,
            this.colIdOrdenTaller,
            this.colIdListadoMaterialesDisponibles,
            this.colCodObra,
            this.colFechaReg,
            this.colEstado,
            this.colsu_descripcion,
            this.colot_descripcion,
            this.colob_descripcion,
            this.collm_Observacion});
            this.gridViewListMaterialesDisponibles.GridControl = this.gridCtrlListMaterialesDisponibles;
            this.gridViewListMaterialesDisponibles.Name = "gridViewListMaterialesDisponibles";
            this.gridViewListMaterialesDisponibles.OptionsBehavior.Editable = false;
            this.gridViewListMaterialesDisponibles.OptionsFind.AlwaysVisible = true;
            this.gridViewListMaterialesDisponibles.OptionsView.ShowAutoFilterRow = true;
            this.gridViewListMaterialesDisponibles.OptionsView.ShowViewCaption = true;
            this.gridViewListMaterialesDisponibles.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colIdListadoMaterialesDisponibles, DevExpress.Data.ColumnSortOrder.Descending)});
            this.gridViewListMaterialesDisponibles.ViewCaption = "Listado de Requerimientos de MaterialesDisponibles";
            this.gridViewListMaterialesDisponibles.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.gridViewListMaterialesDisponibles_RowCellStyle);
            this.gridViewListMaterialesDisponibles.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridViewListMaterialesDisponibles_FocusedRowChanged);
            // 
            // colIdEmpresa
            // 
            this.colIdEmpresa.FieldName = "IdEmpresa";
            this.colIdEmpresa.Name = "colIdEmpresa";
            // 
            // colIdSucursal
            // 
            this.colIdSucursal.FieldName = "IdSucursal";
            this.colIdSucursal.Name = "colIdSucursal";
            // 
            // colIdOrdenTaller
            // 
            //this.colIdOrdenTaller.FieldName = "IdOrdenTaller";
            //this.colIdOrdenTaller.Name = "colIdOrdenTaller";
            // 
            // colIdListadoMaterialesDisponibles
            // 
            this.colIdListadoMaterialesDisponibles.Caption = "#Reg";
            this.colIdListadoMaterialesDisponibles.FieldName = "IdListadoMaterialesDisponibles";
            this.colIdListadoMaterialesDisponibles.Name = "colIdListadoMaterialesDisponibles";
            this.colIdListadoMaterialesDisponibles.Visible = true;
            this.colIdListadoMaterialesDisponibles.VisibleIndex = 2;
            this.colIdListadoMaterialesDisponibles.Width = 56;
            // 
            // colCodObra
            // 
            this.colCodObra.Caption = "Obra";
            this.colCodObra.FieldName = "CodObra";
            this.colCodObra.Name = "colCodObra";
            // 
            // colFechaReg
            // 
            this.colFechaReg.FieldName = "FechaReg";
            this.colFechaReg.Name = "colFechaReg";
            this.colFechaReg.Visible = true;
            this.colFechaReg.VisibleIndex = 0;
            this.colFechaReg.Width = 78;
            // 
            // colEstado
            // 
            this.colEstado.FieldName = "Estado";
            this.colEstado.Name = "colEstado";
            this.colEstado.Visible = true;
            this.colEstado.VisibleIndex = 6;
            this.colEstado.Width = 101;
            // 
            // colsu_descripcion
            // 
            this.colsu_descripcion.Caption = "Sucursal";
            this.colsu_descripcion.FieldName = "su_descripcion";
            this.colsu_descripcion.Name = "colsu_descripcion";
            this.colsu_descripcion.Visible = true;
            this.colsu_descripcion.VisibleIndex = 1;
            this.colsu_descripcion.Width = 115;
            // 
            // colot_descripcion
            // 
            //this.colot_descripcion.Caption = "Orden Taller";
            //this.colot_descripcion.FieldName = "ot_descripcion";
            //this.colot_descripcion.Name = "colot_descripcion";
            //this.colot_descripcion.Visible = true;
            //this.colot_descripcion.VisibleIndex = 4;
            //this.colot_descripcion.Width = 134;
            // 
            // colob_descripcion
            // 
            this.colob_descripcion.Caption = "Obra";
            this.colob_descripcion.FieldName = "ob_descripcion";
            this.colob_descripcion.Name = "colob_descripcion";
            this.colob_descripcion.Visible = true;
            this.colob_descripcion.VisibleIndex = 3;
            this.colob_descripcion.Width = 146;
            // 
            // collm_Observacion
            // 
            this.collm_Observacion.Caption = "Observación";
            this.collm_Observacion.FieldName = "lm_Observacion";
            this.collm_Observacion.Name = "collm_Observacion";
            this.collm_Observacion.Visible = true;
            this.collm_Observacion.VisibleIndex = 5;
            this.collm_Observacion.Width = 88;
            // 
            // prdListadoMaterialesDisponiblesInfoBindingSource
            // 
            this.prdListadoMaterialesDisponiblesInfoBindingSource.DataSource = typeof(Core.Erp.Info.Compras_Edehsa.com_ListadoMaterialesDisponibles_Info);
            // 
            // printingSystem1
            // 
            this.printingSystem1.Links.AddRange(new object[] {
            this.printableComponentLink1});
            // 
            // printableComponentLink1
            // 
            // 
            // 
            // 
            this.printableComponentLink1.ImageCollection.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("printableComponentLink1.ImageCollection.ImageStream")));
            this.printableComponentLink1.Owner = null;
            this.printableComponentLink1.PrintingSystem = this.printingSystem1;
            this.printableComponentLink1.PrintingSystemBase = this.printingSystem1;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.gridCtrlListMaterialesDisponibles);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 93);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(746, 303);
            this.panel1.TabIndex = 14;
            // 
            // ucGe_Menu_Mantenimiento_x_usuario
            // 
            this.ucGe_Menu_Mantenimiento_x_usuario.Dock = System.Windows.Forms.DockStyle.Top;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_anular = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_CancelarCuotas = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_CargaMarcaciónExcel = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_consultar = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_DiseñoCheque = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_Duplicar = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_GenerarPeriodos = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_GenerarXml = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_imprimir = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_modificar = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_nuevo = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_periodo = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Enable_boton_salir = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.fecha_desde = new System.DateTime(2014, 9, 7, 15, 50, 27, 938);
            this.ucGe_Menu_Mantenimiento_x_usuario.fecha_hasta = new System.DateTime(2014, 11, 7, 15, 50, 27, 938);
            this.ucGe_Menu_Mantenimiento_x_usuario.FormConsulta = null;
            this.ucGe_Menu_Mantenimiento_x_usuario.FormMain = null;
            this.ucGe_Menu_Mantenimiento_x_usuario.Location = new System.Drawing.Point(0, 0);
            this.ucGe_Menu_Mantenimiento_x_usuario.Name = "ucGe_Menu_Mantenimiento_x_usuario";
            this.ucGe_Menu_Mantenimiento_x_usuario.Perfil_x_usuario = null;
            this.ucGe_Menu_Mantenimiento_x_usuario.Size = new System.Drawing.Size(746, 93);
            this.ucGe_Menu_Mantenimiento_x_usuario.TabIndex = 15;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_bodega = false;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_anular = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_CancelarCuotas = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_CargaMarcaciónExcel = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_consular = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_DiseñoCheque = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_Duplicar = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_GenerarPeriodos = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_GenerarXml = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_imprimir = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_modificar = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_boton_nuevo = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_fechas = false;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_Grupo_Cancelaciones = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_Grupo_filtro = false;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_Grupo_Impresion = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_Grupo_Otras_Trans = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_Grupo_Transacciones = true;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_Pie_fechas_Boton_buscar = false;
            this.ucGe_Menu_Mantenimiento_x_usuario.Visible_sucursal = false;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Location = new System.Drawing.Point(0, 396);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(746, 22);
            this.statusStrip1.TabIndex = 16;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // FrmPrd_ListadoMaterialesDisponiblesConsulta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(746, 418);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.ucGe_Menu_Mantenimiento_x_usuario);
            this.Name = "FrmPrd_ListadoMaterialesDisponiblesConsulta";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Requerimiento de MaterialesDisponibles Consulta";
            this.Load += new System.EventHandler(this.FrmPrd_ListadoMaterialesDisponiblesConsulta_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridCtrlListMaterialesDisponibles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comListadoMaterialesDisponiblesInfoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridViewListMaterialesDisponibles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.prdListadoMaterialesDisponiblesInfoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.printingSystem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.printableComponentLink1.ImageCollection)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridCtrlListMaterialesDisponibles;
        private System.Windows.Forms.BindingSource prdListadoMaterialesDisponiblesInfoBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colIdEmpresa;
        private DevExpress.XtraGrid.Columns.GridColumn colIdSucursal;
        private DevExpress.XtraGrid.Columns.GridColumn colIdOrdenTaller;
        private DevExpress.XtraGrid.Columns.GridColumn colIdListadoMaterialesDisponibles;
        private DevExpress.XtraGrid.Columns.GridColumn colCodObra;
        private DevExpress.XtraGrid.Columns.GridColumn colFechaReg;
        private DevExpress.XtraGrid.Columns.GridColumn colEstado;
        private DevExpress.XtraGrid.Columns.GridColumn colsu_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn colot_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn colob_descripcion;
        private System.Windows.Forms.BindingSource comListadoMaterialesDisponiblesInfoBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridViewListMaterialesDisponibles;
        private DevExpress.XtraGrid.Columns.GridColumn collm_Observacion;
        private DevExpress.XtraPrinting.PrintingSystem printingSystem1;
        private DevExpress.XtraPrinting.PrintableComponentLink printableComponentLink1;
        private System.Windows.Forms.Panel panel1;
        private Controles.UCGe_Menu_Mantenimiento_x_usuario ucGe_Menu_Mantenimiento_x_usuario;
        private System.Windows.Forms.StatusStrip statusStrip1;
    }
}