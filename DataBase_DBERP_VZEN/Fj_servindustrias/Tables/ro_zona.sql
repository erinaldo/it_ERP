CREATE TABLE [Fj_servindustrias].[ro_zona](
	[IdEmpresa] [int] NOT NULL,
	[IdZona] [int] NOT NULL,
	[zo_descripcion] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
	[IdUsuario] [varchar](50) NULL,
	[Fecha_Transaccion] [datetime] NULL,
	[IdUsuarioUltModi] [varchar](50) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](50) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[MotivoAnulacion] [varchar](50) NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
 CONSTRAINT [PK_ro_zona] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
