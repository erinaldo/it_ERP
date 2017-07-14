﻿namespace Core.Erp.Winform.Roles
{
    partial class frmRo_Periodo_Mant
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.groupBoxPeriodo = new System.Windows.Forms.GroupBox();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.CheckEstado = new DevExpress.XtraEditors.CheckEdit();
            this.cmb_region = new DevExpress.XtraEditors.SearchLookUpEdit();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Cod_Region = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Nom_region = new DevExpress.XtraGrid.Columns.GridColumn();
            this.lblEstado = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtIdPeriodo = new System.Windows.Forms.TextBox();
            this.dtFechaIni = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.dtFechaFin = new System.Windows.Forms.DateTimePicker();
            this.ucGe_Menu = new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant();
            this.check_pasico = new DevExpress.XtraEditors.CheckEdit();
            this.panel1.SuspendLayout();
            this.groupBoxPeriodo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CheckEstado.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmb_region.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.check_pasico.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.groupBoxPeriodo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 29);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(489, 139);
            this.panel1.TabIndex = 1;
            // 
            // groupBoxPeriodo
            // 
            this.groupBoxPeriodo.Controls.Add(this.check_pasico);
            this.groupBoxPeriodo.Controls.Add(this.labelControl5);
            this.groupBoxPeriodo.Controls.Add(this.CheckEstado);
            this.groupBoxPeriodo.Controls.Add(this.cmb_region);
            this.groupBoxPeriodo.Controls.Add(this.lblEstado);
            this.groupBoxPeriodo.Controls.Add(this.label1);
            this.groupBoxPeriodo.Controls.Add(this.label2);
            this.groupBoxPeriodo.Controls.Add(this.txtIdPeriodo);
            this.groupBoxPeriodo.Controls.Add(this.dtFechaIni);
            this.groupBoxPeriodo.Controls.Add(this.label3);
            this.groupBoxPeriodo.Controls.Add(this.dtFechaFin);
            this.groupBoxPeriodo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBoxPeriodo.Location = new System.Drawing.Point(0, 0);
            this.groupBoxPeriodo.Name = "groupBoxPeriodo";
            this.groupBoxPeriodo.Size = new System.Drawing.Size(489, 139);
            this.groupBoxPeriodo.TabIndex = 80;
            this.groupBoxPeriodo.TabStop = false;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(42, 97);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(37, 13);
            this.labelControl5.TabIndex = 131;
            this.labelControl5.Text = "Region:";
            // 
            // CheckEstado
            // 
            this.CheckEstado.Location = new System.Drawing.Point(375, 21);
            this.CheckEstado.Name = "CheckEstado";
            this.CheckEstado.Properties.Caption = "Activo";
            this.CheckEstado.Size = new System.Drawing.Size(75, 19);
            this.CheckEstado.TabIndex = 81;
            // 
            // cmb_region
            // 
            this.cmb_region.Location = new System.Drawing.Point(124, 94);
            this.cmb_region.Name = "cmb_region";
            this.cmb_region.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmb_region.Properties.DisplayMember = "Nom_region";
            this.cmb_region.Properties.NullText = "";
            this.cmb_region.Properties.PopupSizeable = false;
            this.cmb_region.Properties.ValueMember = "Cod_Region";
            this.cmb_region.Properties.View = this.gridView1;
            this.cmb_region.Size = new System.Drawing.Size(326, 20);
            this.cmb_region.TabIndex = 132;
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn4,
            this.Col_Cod_Region,
            this.Col_Nom_region});
            this.gridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "IdPais";
            this.gridColumn4.FieldName = "IdPais";
            this.gridColumn4.Name = "gridColumn4";
            // 
            // Col_Cod_Region
            // 
            this.Col_Cod_Region.Caption = "Codigo";
            this.Col_Cod_Region.FieldName = "Cod_Region";
            this.Col_Cod_Region.Name = "Col_Cod_Region";
            this.Col_Cod_Region.Visible = true;
            this.Col_Cod_Region.VisibleIndex = 0;
            // 
            // Col_Nom_region
            // 
            this.Col_Nom_region.Caption = "Nombre";
            this.Col_Nom_region.FieldName = "Nom_region";
            this.Col_Nom_region.Name = "Col_Nom_region";
            this.Col_Nom_region.Visible = true;
            this.Col_Nom_region.VisibleIndex = 1;
            // 
            // lblEstado
            // 
            this.lblEstado.Dock = System.Windows.Forms.DockStyle.Top;
            this.lblEstado.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.ForeColor = System.Drawing.Color.Red;
            this.lblEstado.Location = new System.Drawing.Point(3, 16);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(483, 24);
            this.lblEstado.TabIndex = 80;
            this.lblEstado.Text = "***Anulado***";
            this.lblEstado.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(39, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 13);
            this.label1.TabIndex = 74;
            this.label1.Text = "Código:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(39, 72);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 13);
            this.label2.TabIndex = 75;
            this.label2.Text = "Fecha Inicial:";
            // 
            // txtIdPeriodo
            // 
            this.txtIdPeriodo.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.txtIdPeriodo.Enabled = false;
            this.txtIdPeriodo.Location = new System.Drawing.Point(120, 42);
            this.txtIdPeriodo.Name = "txtIdPeriodo";
            this.txtIdPeriodo.ReadOnly = true;
            this.txtIdPeriodo.Size = new System.Drawing.Size(109, 20);
            this.txtIdPeriodo.TabIndex = 78;
            // 
            // dtFechaIni
            // 
            this.dtFechaIni.CalendarTitleBackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.dtFechaIni.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtFechaIni.Location = new System.Drawing.Point(121, 68);
            this.dtFechaIni.Name = "dtFechaIni";
            this.dtFechaIni.Size = new System.Drawing.Size(106, 20);
            this.dtFechaIni.TabIndex = 72;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(260, 72);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 76;
            this.label3.Text = "Fecha Final:";
            // 
            // dtFechaFin
            // 
            this.dtFechaFin.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtFechaFin.Location = new System.Drawing.Point(342, 68);
            this.dtFechaFin.Name = "dtFechaFin";
            this.dtFechaFin.Size = new System.Drawing.Size(108, 20);
            this.dtFechaFin.TabIndex = 73;
            // 
            // ucGe_Menu
            // 
            this.ucGe_Menu.Dock = System.Windows.Forms.DockStyle.Top;
            this.ucGe_Menu.Enabled_bnRetImprimir = true;
            this.ucGe_Menu.Enabled_bntAnular = true;
            this.ucGe_Menu.Enabled_bntAprobar = true;
            this.ucGe_Menu.Enabled_bntGuardar_y_Salir = true;
            this.ucGe_Menu.Enabled_bntImprimir = false;
            this.ucGe_Menu.Enabled_bntImprimir_Guia = true;
            this.ucGe_Menu.Enabled_bntLimpiar = true;
            this.ucGe_Menu.Enabled_bntSalir = true;
            this.ucGe_Menu.Enabled_btn_conciliacion_Auto = true;
            this.ucGe_Menu.Enabled_btn_DiseñoReporte = true;
            this.ucGe_Menu.Enabled_btn_Generar_XML = true;
            this.ucGe_Menu.Enabled_btn_Imprimir_Cbte = true;
            this.ucGe_Menu.Enabled_btn_Imprimir_Cheq = true;
            this.ucGe_Menu.Enabled_btn_Imprimir_Reten = true;
            this.ucGe_Menu.Enabled_btnAceptar = true;
            this.ucGe_Menu.Enabled_btnAprobarGuardarSalir = true;
            this.ucGe_Menu.Enabled_btnEstadosOC = true;
            this.ucGe_Menu.Enabled_btnGuardar = true;
            this.ucGe_Menu.Enabled_btnImpFrm = true;
            this.ucGe_Menu.Enabled_btnImpLote = true;
            this.ucGe_Menu.Enabled_btnImpRep = true;
            this.ucGe_Menu.Enabled_btnImprimirSoporte = true;
            this.ucGe_Menu.Enabled_btnproductos = true;
            this.ucGe_Menu.Location = new System.Drawing.Point(0, 0);
            this.ucGe_Menu.Name = "ucGe_Menu";
            this.ucGe_Menu.Size = new System.Drawing.Size(489, 29);
            this.ucGe_Menu.TabIndex = 0;
            this.ucGe_Menu.Visible_bntAnular = true;
            this.ucGe_Menu.Visible_bntAprobar = false;
            this.ucGe_Menu.Visible_bntDiseñoReporte = false;
            this.ucGe_Menu.Visible_bntGuardar_y_Salir = true;
            this.ucGe_Menu.Visible_bntImprimir = false;
            this.ucGe_Menu.Visible_bntImprimir_Guia = false;
            this.ucGe_Menu.Visible_bntLimpiar = false;
            this.ucGe_Menu.Visible_bntReImprimir = false;
            this.ucGe_Menu.Visible_bntSalir = true;
            this.ucGe_Menu.Visible_btn_Actualizar = false;
            this.ucGe_Menu.Visible_btn_conciliacion_Auto = false;
            this.ucGe_Menu.Visible_btn_Generar_XML = false;
            this.ucGe_Menu.Visible_btn_Imprimir_Cbte = false;
            this.ucGe_Menu.Visible_btn_Imprimir_Cheq = false;
            this.ucGe_Menu.Visible_btn_Imprimir_Reten = false;
            this.ucGe_Menu.Visible_btnAceptar = false;
            this.ucGe_Menu.Visible_btnAprobarGuardarSalir = false;
            this.ucGe_Menu.Visible_btnContabilizar = false;
            this.ucGe_Menu.Visible_btnEstadosOC = false;
            this.ucGe_Menu.Visible_btnGuardar = true;
            this.ucGe_Menu.Visible_btnImpFrm = false;
            this.ucGe_Menu.Visible_btnImpLote = false;
            this.ucGe_Menu.Visible_btnImpRep = false;
            this.ucGe_Menu.Visible_btnImprimirSoporte = false;
            this.ucGe_Menu.Visible_btnModificar = false;
            this.ucGe_Menu.Visible_btnproductos = false;
            // 
            // check_pasico
            // 
            this.check_pasico.Location = new System.Drawing.Point(120, 117);
            this.check_pasico.Name = "check_pasico";
            this.check_pasico.Properties.Caption = "Se cargan los empleados pasivos al procesar este periodo";
            this.check_pasico.Size = new System.Drawing.Size(328, 19);
            this.check_pasico.TabIndex = 133;
            // 
            // frmRo_Periodo_Mant
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(489, 168);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.ucGe_Menu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.KeyPreview = true;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmRo_Periodo_Mant";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Mantenimiento - Períodos";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmRo_Periodo_Mant_FormClosing);
            this.Load += new System.EventHandler(this.frmRo_Periodo_Mant_Load);
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.frmRo_Periodo_Mant_KeyPress);
            this.panel1.ResumeLayout(false);
            this.groupBoxPeriodo.ResumeLayout(false);
            this.groupBoxPeriodo.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CheckEstado.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cmb_region.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.check_pasico.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Controles.UCGe_Menu_Superior_Mant ucGe_Menu;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox groupBoxPeriodo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtIdPeriodo;
        private System.Windows.Forms.DateTimePicker dtFechaIni;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtFechaFin;
        private System.Windows.Forms.Label lblEstado;
        private DevExpress.XtraEditors.CheckEdit CheckEstado;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.SearchLookUpEdit cmb_region;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Cod_Region;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Nom_region;
        private DevExpress.XtraEditors.CheckEdit check_pasico;

    }
}