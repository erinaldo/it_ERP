CREATE TABLE [Grafinpren].[fa_Equipo_graf](
	[IdEmpresa] [int] NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[nom_Equipo] [varchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
	[IdUsuario] [varchar](50) NULL,
	[Fecha_Transaccion] [datetime] NULL,
	[IdUsuarioUltModi] [varchar](50) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](50) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[MotivoAnulacion] [varchar](50) NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
 CONSTRAINT [PK_fa_Equipo_graf] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO