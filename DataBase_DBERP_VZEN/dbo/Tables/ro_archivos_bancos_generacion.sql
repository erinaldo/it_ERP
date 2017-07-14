CREATE TABLE [dbo].[ro_archivos_bancos_generacion](
	[IdEmpresa] [int] NOT NULL,
	[IdArchivo] [numeric](18, 0) NOT NULL,
	[IdNomina] [int] NOT NULL,
	[IdNominaTipo] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdBanco] [varchar](10) NULL,
	[IdBanco_Acredita] [int] NULL,
	[IdProceso_Bancario] [varchar](25) NULL,
	[IdDivision] [int] NULL,
	[Cod_Empresa] [varchar](30) NULL,
	[Nom_Archivo] [varchar](200) NULL,
	[archivo] [varbinary](max) NOT NULL,
	[estado] [char](1) NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[MotiAnula] [varchar](200) NULL,
 CONSTRAINT [PK_ro_Archivos_Bancos_Generacion] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdArchivo] ASC,
	[IdNomina] ASC,
	[IdNominaTipo] ASC,
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]