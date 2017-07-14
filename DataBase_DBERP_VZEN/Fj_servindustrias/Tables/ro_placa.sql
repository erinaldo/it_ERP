CREATE TABLE [Fj_servindustrias].[ro_placa](
	[IdEmpresa] [int] NOT NULL,
	[IdPlaca] [int] NOT NULL,
	[Placa] [varchar](50) NULL,
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
 CONSTRAINT [PK_ro_placa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPlaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]