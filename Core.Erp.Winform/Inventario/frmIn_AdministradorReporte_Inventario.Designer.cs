﻿namespace Core.Erp.Winform.Inventario
{
    partial class frmIn_AdministradorReporte_Inventario
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
            this.ucGe_Admin = new Core.Erp.Winform.Controles.UCGe_Administrador_Reporte();
            this.SuspendLayout();
            // 
            // ucGe_Admin
            // 
            this.ucGe_Admin.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ucGe_Admin.FormMain = null;
            this.ucGe_Admin.Location = new System.Drawing.Point(0, 0);
            this.ucGe_Admin.Name = "ucGe_Admin";
            this.ucGe_Admin.Size = new System.Drawing.Size(614, 343);
            this.ucGe_Admin.TabIndex = 1;
            this.ucGe_Admin.event_ucGe_Menu_event_btnSalir_ItemClick += new Core.Erp.Winform.Controles.UCGe_Administrador_Reporte.delegate_ucGe_Menu_event_btnSalir_ItemClick(this.ucGe_Admin_event_ucGe_Menu_event_btnSalir_ItemClick);
            // 
            // frmIn_AdministradorReporte_Inventario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(614, 343);
            this.Controls.Add(this.ucGe_Admin);
            this.Name = "frmIn_AdministradorReporte_Inventario";
            this.Text = "frmIn_AdministradorReporte_Inventario";
            this.Load += new System.EventHandler(this.frmIn_AdministradorReporte_Inventario_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private Controles.UCGe_Administrador_Reporte ucGe_Admin;
    }
}