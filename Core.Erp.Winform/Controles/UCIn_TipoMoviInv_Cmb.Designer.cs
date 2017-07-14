﻿namespace Core.Erp.Winform.Controles
{
    partial class UCIn_TipoMoviInv_Cmb
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UCIn_TipoMoviInv_Cmb));
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition2 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colSestado = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cmb_Acciones = new DevExpress.XtraEditors.DropDownButton();
            this.MenuAcciones = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.nuevoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modificarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.cmbCatalogo = new DevExpress.XtraEditors.SearchLookUpEdit();
            this.searchLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colIdTipoCatalogo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.MenuAcciones.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cmbCatalogo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.searchLookUpEdit1View)).BeginInit();
            this.SuspendLayout();
            // 
            // colSestado
            // 
            this.colSestado.Caption = "Estado";
            this.colSestado.FieldName = "Estado";
            this.colSestado.Name = "colSestado";
            this.colSestado.Visible = true;
            this.colSestado.VisibleIndex = 2;
            this.colSestado.Width = 182;
            // 
            // cmb_Acciones
            // 
            this.cmb_Acciones.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cmb_Acciones.ContextMenuStrip = this.MenuAcciones;
            this.cmb_Acciones.ImageIndex = 1;
            this.cmb_Acciones.ImageList = this.imageList1;
            this.cmb_Acciones.Location = new System.Drawing.Point(249, 1);
            this.cmb_Acciones.Name = "cmb_Acciones";
            this.cmb_Acciones.ShowArrowButton = false;
            this.cmb_Acciones.Size = new System.Drawing.Size(36, 26);
            this.cmb_Acciones.TabIndex = 112;
            this.cmb_Acciones.Click += new System.EventHandler(this.cmb_Acciones_Click);
            // 
            // MenuAcciones
            // 
            this.MenuAcciones.AllowDrop = true;
            this.MenuAcciones.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevoToolStripMenuItem,
            this.modificarToolStripMenuItem,
            this.consultarToolStripMenuItem});
            this.MenuAcciones.Name = "MenuAcciones";
            this.MenuAcciones.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            this.MenuAcciones.Size = new System.Drawing.Size(126, 70);
            this.MenuAcciones.Text = "Acciones";
            // 
            // nuevoToolStripMenuItem
            // 
            this.nuevoToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("nuevoToolStripMenuItem.Image")));
            this.nuevoToolStripMenuItem.Name = "nuevoToolStripMenuItem";
            this.nuevoToolStripMenuItem.Size = new System.Drawing.Size(125, 22);
            this.nuevoToolStripMenuItem.Text = "Nuevo";
            this.nuevoToolStripMenuItem.Click += new System.EventHandler(this.nuevoToolStripMenuItem_Click);
            // 
            // modificarToolStripMenuItem
            // 
            this.modificarToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("modificarToolStripMenuItem.Image")));
            this.modificarToolStripMenuItem.Name = "modificarToolStripMenuItem";
            this.modificarToolStripMenuItem.Size = new System.Drawing.Size(125, 22);
            this.modificarToolStripMenuItem.Text = "Modificar";
            this.modificarToolStripMenuItem.Click += new System.EventHandler(this.modificarToolStripMenuItem_Click);
            // 
            // consultarToolStripMenuItem
            // 
            this.consultarToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("consultarToolStripMenuItem.Image")));
            this.consultarToolStripMenuItem.Name = "consultarToolStripMenuItem";
            this.consultarToolStripMenuItem.Size = new System.Drawing.Size(125, 22);
            this.consultarToolStripMenuItem.Text = "Consultar";
            this.consultarToolStripMenuItem.Click += new System.EventHandler(this.consultarToolStripMenuItem_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "empleado.ico");
            this.imageList1.Images.SetKeyName(1, "nuevo_32x32.png");
            this.imageList1.Images.SetKeyName(2, "admin_32x32.png");
            this.imageList1.Images.SetKeyName(3, "downloads1.ico");
            this.imageList1.Images.SetKeyName(4, "ico_insert1.png");
            // 
            // cmbCatalogo
            // 
            this.cmbCatalogo.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cmbCatalogo.Location = new System.Drawing.Point(3, 3);
            this.cmbCatalogo.Name = "cmbCatalogo";
            this.cmbCatalogo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cmbCatalogo.Properties.DisplayMember = "tm_descripcion2";
            this.cmbCatalogo.Properties.ValueMember = "IdMovi_inven_tipo";
            this.cmbCatalogo.Properties.View = this.searchLookUpEdit1View;
            this.cmbCatalogo.Size = new System.Drawing.Size(240, 20);
            this.cmbCatalogo.TabIndex = 111;
            this.cmbCatalogo.EditValueChanged += new System.EventHandler(this.cmbCatalogo_EditValueChanged);
            // 
            // searchLookUpEdit1View
            // 
            this.searchLookUpEdit1View.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colIdTipoCatalogo,
            this.colDescripcion,
            this.colSestado});
            this.searchLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            styleFormatCondition2.Appearance.ForeColor = System.Drawing.Color.Red;
            styleFormatCondition2.Appearance.Options.UseForeColor = true;
            styleFormatCondition2.ApplyToRow = true;
            styleFormatCondition2.Column = this.colSestado;
            styleFormatCondition2.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition2.Value1 = "**ANULADO**";
            this.searchLookUpEdit1View.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition2});
            this.searchLookUpEdit1View.Name = "searchLookUpEdit1View";
            this.searchLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.searchLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // colIdTipoCatalogo
            // 
            this.colIdTipoCatalogo.Caption = "Id";
            this.colIdTipoCatalogo.FieldName = "IdMovi_inven_tipo";
            this.colIdTipoCatalogo.Name = "colIdTipoCatalogo";
            this.colIdTipoCatalogo.Visible = true;
            this.colIdTipoCatalogo.VisibleIndex = 0;
            this.colIdTipoCatalogo.Width = 145;
            // 
            // colDescripcion
            // 
            this.colDescripcion.Caption = "Descripción";
            this.colDescripcion.FieldName = "tm_descripcion";
            this.colDescripcion.Name = "colDescripcion";
            this.colDescripcion.Visible = true;
            this.colDescripcion.VisibleIndex = 1;
            this.colDescripcion.Width = 831;
            // 
            // UCIn_TipoMoviInv_Cmb
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.cmb_Acciones);
            this.Controls.Add(this.cmbCatalogo);
            this.Name = "UCIn_TipoMoviInv_Cmb";
            this.Size = new System.Drawing.Size(293, 33);
            this.MenuAcciones.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.cmbCatalogo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.searchLookUpEdit1View)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.DropDownButton cmb_Acciones;
        private DevExpress.XtraEditors.SearchLookUpEdit cmbCatalogo;
        private DevExpress.XtraGrid.Views.Grid.GridView searchLookUpEdit1View;
        private DevExpress.XtraGrid.Columns.GridColumn colIdTipoCatalogo;
        private DevExpress.XtraGrid.Columns.GridColumn colDescripcion;
        private DevExpress.XtraGrid.Columns.GridColumn colSestado;
        private System.Windows.Forms.ContextMenuStrip MenuAcciones;
        private System.Windows.Forms.ToolStripMenuItem nuevoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modificarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultarToolStripMenuItem;
        private System.Windows.Forms.ImageList imageList1;
    }
}
