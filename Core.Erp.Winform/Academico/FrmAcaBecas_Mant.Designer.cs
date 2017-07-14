﻿namespace Core.Erp.Winform.Academico
{
    partial class FrmAcaBecas_Mant
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
            this.panelMain = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.cmb_FaDescuento = new DevExpress.XtraEditors.SearchLookUpEdit();
            this.searchLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.lblAnulado = new System.Windows.Forms.Label();
            this.txt_porcentaje = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.chkActivo = new System.Windows.Forms.CheckBox();
            this.txt_descripcion = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtIdBeca = new System.Windows.Forms.TextBox();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.Col_IdDescuento = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_Descuento = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_de_IdCtaCble = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Col_de_porcentaje = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Rubro = new Core.Erp.Winform.Controles.UCAca_Rubro();
            this.ucGe_BarraEstadoInferior_Forms1 = new Core.Erp.Winform.Controles.UCGe_BarraEstadoInferior_Forms();
            this.ucGe_Menu = new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant();
            this.panelMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cmb_FaDescuento.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.searchLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_porcentaje.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.Controls.Add(this.label3);
            this.panelMain.Controls.Add(this.cmb_FaDescuento);
            this.panelMain.Controls.Add(this.Rubro);
            this.panelMain.Controls.Add(this.lblAnulado);
            this.panelMain.Controls.Add(this.txt_porcentaje);
            this.panelMain.Controls.Add(this.label2);
            this.panelMain.Controls.Add(this.chkActivo);
            this.panelMain.Controls.Add(this.txt_descripcion);
            this.panelMain.Controls.Add(this.label1);
            this.panelMain.Controls.Add(this.txtIdBeca);
            this.panelMain.Controls.Add(this.lblCodigo);
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelMain.Location = new System.Drawing.Point(0, 36);
            this.panelMain.Margin = new System.Windows.Forms.Padding(4);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(785, 201);
            this.panelMain.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(28, 56);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(158, 17);
            this.label3.TabIndex = 22;
            this.label3.Text = "Descuento Facturacion:";
            // 
            // cmb_FaDescuento
            // 
            this.cmb_FaDescuento.Location = new System.Drawing.Point(216, 55);
            this.cmb_FaDescuento.Name = "cmb_FaDescuento";
            this.cmb_FaDescuento.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmb_FaDescuento.Properties.DisplayMember = "de_nombre";
            this.cmb_FaDescuento.Properties.ValueMember = "IdDescuento";
            this.cmb_FaDescuento.Properties.View = this.searchLookUpEdit1View;
            this.cmb_FaDescuento.Size = new System.Drawing.Size(413, 22);
            this.cmb_FaDescuento.TabIndex = 21;
            this.cmb_FaDescuento.EditValueChanged += new System.EventHandler(this.cmb_FaDescuento_EditValueChanged);
            // 
            // searchLookUpEdit1View
            // 
            this.searchLookUpEdit1View.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Col_IdDescuento,
            this.Col_Descuento,
            this.Col_de_IdCtaCble,
            this.Col_de_porcentaje});
            this.searchLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.searchLookUpEdit1View.Name = "searchLookUpEdit1View";
            this.searchLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.searchLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // lblAnulado
            // 
            this.lblAnulado.AutoSize = true;
            this.lblAnulado.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAnulado.ForeColor = System.Drawing.Color.Red;
            this.lblAnulado.Location = new System.Drawing.Point(439, 135);
            this.lblAnulado.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAnulado.Name = "lblAnulado";
            this.lblAnulado.Size = new System.Drawing.Size(188, 25);
            this.lblAnulado.TabIndex = 19;
            this.lblAnulado.Text = "****ANULADO****";
            this.lblAnulado.Visible = false;
            // 
            // txt_porcentaje
            // 
            this.txt_porcentaje.EditValue = "0";
            this.txt_porcentaje.Location = new System.Drawing.Point(120, 132);
            this.txt_porcentaje.Margin = new System.Windows.Forms.Padding(4);
            this.txt_porcentaje.Name = "txt_porcentaje";
            this.txt_porcentaje.Properties.Mask.EditMask = "d";
            this.txt_porcentaje.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            this.txt_porcentaje.Size = new System.Drawing.Size(69, 22);
            this.txt_porcentaje.TabIndex = 18;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(28, 135);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 17);
            this.label2.TabIndex = 17;
            this.label2.Text = "% Beca:";
            // 
            // chkActivo
            // 
            this.chkActivo.AutoSize = true;
            this.chkActivo.Location = new System.Drawing.Point(559, 176);
            this.chkActivo.Margin = new System.Windows.Forms.Padding(4);
            this.chkActivo.Name = "chkActivo";
            this.chkActivo.Size = new System.Drawing.Size(68, 21);
            this.chkActivo.TabIndex = 16;
            this.chkActivo.Text = "Activo";
            this.chkActivo.UseVisualStyleBackColor = true;
            // 
            // txt_descripcion
            // 
            this.txt_descripcion.Location = new System.Drawing.Point(122, 88);
            this.txt_descripcion.Margin = new System.Windows.Forms.Padding(4);
            this.txt_descripcion.Name = "txt_descripcion";
            this.txt_descripcion.Size = new System.Drawing.Size(507, 22);
            this.txt_descripcion.TabIndex = 15;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 93);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 17);
            this.label1.TabIndex = 14;
            this.label1.Text = "Descripcion:";
            // 
            // txtIdBeca
            // 
            this.txtIdBeca.Enabled = false;
            this.txtIdBeca.Location = new System.Drawing.Point(120, 20);
            this.txtIdBeca.Margin = new System.Windows.Forms.Padding(4);
            this.txtIdBeca.Name = "txtIdBeca";
            this.txtIdBeca.Size = new System.Drawing.Size(69, 22);
            this.txtIdBeca.TabIndex = 13;
            this.txtIdBeca.Text = "0";
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.Location = new System.Drawing.Point(28, 23);
            this.lblCodigo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(55, 17);
            this.lblCodigo.TabIndex = 12;
            this.lblCodigo.Text = "IdBeca:";
            // 
            // Col_IdDescuento
            // 
            this.Col_IdDescuento.Caption = "Id";
            this.Col_IdDescuento.FieldName = "IdDescuento";
            this.Col_IdDescuento.Name = "Col_IdDescuento";
            this.Col_IdDescuento.Visible = true;
            this.Col_IdDescuento.VisibleIndex = 1;
            // 
            // Col_Descuento
            // 
            this.Col_Descuento.Caption = "Descuento";
            this.Col_Descuento.FieldName = "de_nombre";
            this.Col_Descuento.Name = "Col_Descuento";
            this.Col_Descuento.Visible = true;
            this.Col_Descuento.VisibleIndex = 0;
            // 
            // Col_de_IdCtaCble
            // 
            this.Col_de_IdCtaCble.Caption = "CtaCble";
            this.Col_de_IdCtaCble.FieldName = "de_IdCtaCble";
            this.Col_de_IdCtaCble.Name = "Col_de_IdCtaCble";
            this.Col_de_IdCtaCble.Visible = true;
            this.Col_de_IdCtaCble.VisibleIndex = 2;
            // 
            // Col_de_porcentaje
            // 
            this.Col_de_porcentaje.Caption = "%";
            this.Col_de_porcentaje.FieldName = "de_porcentaje";
            this.Col_de_porcentaje.Name = "Col_de_porcentaje";
            this.Col_de_porcentaje.Visible = true;
            this.Col_de_porcentaje.VisibleIndex = 3;
            // 
            // Rubro
            // 
            this.Rubro.Location = new System.Drawing.Point(225, 20);
            this.Rubro.Margin = new System.Windows.Forms.Padding(4);
            this.Rubro.Name = "Rubro";
            this.Rubro.Size = new System.Drawing.Size(413, 28);
            this.Rubro.TabIndex = 20;
            this.Rubro.Visible = false;
            // 
            // ucGe_BarraEstadoInferior_Forms1
            // 
            this.ucGe_BarraEstadoInferior_Forms1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ucGe_BarraEstadoInferior_Forms1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ucGe_BarraEstadoInferior_Forms1.Location = new System.Drawing.Point(0, 237);
            this.ucGe_BarraEstadoInferior_Forms1.Margin = new System.Windows.Forms.Padding(5);
            this.ucGe_BarraEstadoInferior_Forms1.Name = "ucGe_BarraEstadoInferior_Forms1";
            this.ucGe_BarraEstadoInferior_Forms1.Size = new System.Drawing.Size(785, 32);
            this.ucGe_BarraEstadoInferior_Forms1.TabIndex = 2;
            // 
            // ucGe_Menu
            // 
            this.ucGe_Menu.Dock = System.Windows.Forms.DockStyle.Top;
            this.ucGe_Menu.Enabled_bnRetImprimir = true;
            this.ucGe_Menu.Enabled_bntAnular = true;
            this.ucGe_Menu.Enabled_bntAprobar = true;
            this.ucGe_Menu.Enabled_bntGuardar_y_Salir = true;
            this.ucGe_Menu.Enabled_bntImprimir = true;
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
            this.ucGe_Menu.Margin = new System.Windows.Forms.Padding(5);
            this.ucGe_Menu.Name = "ucGe_Menu";
            this.ucGe_Menu.Size = new System.Drawing.Size(785, 36);
            this.ucGe_Menu.TabIndex = 1;
            this.ucGe_Menu.Visible_bntAnular = true;
            this.ucGe_Menu.Visible_bntAprobar = false;
            this.ucGe_Menu.Visible_bntDiseñoReporte = false;
            this.ucGe_Menu.Visible_bntGuardar_y_Salir = true;
            this.ucGe_Menu.Visible_bntImprimir = false;
            this.ucGe_Menu.Visible_bntImprimir_Guia = false;
            this.ucGe_Menu.Visible_bntLimpiar = true;
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
            this.ucGe_Menu.event_btnGuardar_Click += new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant.delegate_btnGuardar_Click(this.ucGe_Menu_event_btnGuardar_Click);
            this.ucGe_Menu.event_btnGuardar_y_Salir_Click += new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant.delegate_btnGuardar_y_Salir_Click(this.ucGe_Menu_event_btnGuardar_y_Salir_Click);
            this.ucGe_Menu.event_btnlimpiar_Click += new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant.delegate_btnlimpiar_Click(this.ucGe_Menu_event_btnlimpiar_Click);
            this.ucGe_Menu.event_btnAnular_Click += new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant.delegate_btnAnular_Click(this.ucGe_Menu_event_btnAnular_Click);
            this.ucGe_Menu.event_btnSalir_Click += new Core.Erp.Winform.Controles.UCGe_Menu_Superior_Mant.delegate_btnSalir_Click(this.ucGe_Menu_event_btnSalir_Click);
            // 
            // FrmAcaBecas_Mant
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(785, 269);
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.ucGe_BarraEstadoInferior_Forms1);
            this.Controls.Add(this.ucGe_Menu);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "FrmAcaBecas_Mant";
            this.Text = "Becas";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmAcaBecas_Mant_FormClosing);
            this.Load += new System.EventHandler(this.FrmAcaBecas_Mant_Load);
            this.panelMain.ResumeLayout(false);
            this.panelMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cmb_FaDescuento.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.searchLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_porcentaje.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Controles.UCGe_Menu_Superior_Mant ucGe_Menu;
        private Controles.UCGe_BarraEstadoInferior_Forms ucGe_BarraEstadoInferior_Forms1;
        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Label lblAnulado;
        private DevExpress.XtraEditors.TextEdit txt_porcentaje;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.CheckBox chkActivo;
        private System.Windows.Forms.TextBox txt_descripcion;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtIdBeca;
        private System.Windows.Forms.Label lblCodigo;
        private Controles.UCAca_Rubro Rubro;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.SearchLookUpEdit cmb_FaDescuento;
        private DevExpress.XtraGrid.Views.Grid.GridView searchLookUpEdit1View;
        private DevExpress.XtraGrid.Columns.GridColumn Col_IdDescuento;
        private DevExpress.XtraGrid.Columns.GridColumn Col_Descuento;
        private DevExpress.XtraGrid.Columns.GridColumn Col_de_IdCtaCble;
        private DevExpress.XtraGrid.Columns.GridColumn Col_de_porcentaje;
    }
}