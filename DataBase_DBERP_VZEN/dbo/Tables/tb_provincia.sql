CREATE TABLE [dbo].[tb_provincia](
	[IdProvincia] [varchar](25) NOT NULL,
	[Cod_Provincia] [varchar](25) NOT NULL,
	[Descripcion_Prov] [varchar](50) NOT NULL,
	[Estado] [char](1) NOT NULL,
	[IdPais] [varchar](10) NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[MotivoAnula] [varchar](100) NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[Cod_Region] [varchar](10) NULL,
 CONSTRAINT [PK_tb_provincia] PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_provincia]  WITH CHECK ADD  CONSTRAINT [FK_tb_provincia_tb_pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[tb_pais] ([IdPais])
GO

ALTER TABLE [dbo].[tb_provincia] CHECK CONSTRAINT [FK_tb_provincia_tb_pais]
GO

ALTER TABLE [dbo].[tb_provincia]  WITH CHECK ADD  CONSTRAINT [FK_tb_provincia_tb_region] FOREIGN KEY([Cod_Region])
REFERENCES [dbo].[tb_region] ([Cod_Region])
GO

ALTER TABLE [dbo].[tb_provincia] CHECK CONSTRAINT [FK_tb_provincia_tb_region]
GO



