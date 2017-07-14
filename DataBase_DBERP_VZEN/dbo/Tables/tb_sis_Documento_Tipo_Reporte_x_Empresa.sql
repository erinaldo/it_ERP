CREATE TABLE [dbo].[tb_sis_Documento_Tipo_Reporte_x_Empresa](
	[IdEmpresa] [int] NOT NULL,
	[codDocumentoTipo] [varchar](20) NOT NULL,
	[File_Disenio_Reporte] [varbinary](max) NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[MotivoAnula] [varchar](100) NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
 CONSTRAINT [PK_tb_sis_Documento_Tipo_Reporte_x_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[codDocumentoTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



ALTER TABLE [dbo].[tb_sis_Documento_Tipo_Reporte_x_Empresa]  WITH CHECK ADD  CONSTRAINT [FK_tb_sis_Documento_Tipo_Reporte_x_Empresa_tb_sis_Documento_Tipo] FOREIGN KEY([codDocumentoTipo])
REFERENCES [dbo].[tb_sis_Documento_Tipo] ([codDocumentoTipo])
GO

ALTER TABLE [dbo].[tb_sis_Documento_Tipo_Reporte_x_Empresa] CHECK CONSTRAINT [FK_tb_sis_Documento_Tipo_Reporte_x_Empresa_tb_sis_Documento_Tipo]
GO





