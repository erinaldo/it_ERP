CREATE TABLE [dbo].[ro_turno](
	[IdEmpresa] [int] NOT NULL,
	[IdTurno] [numeric](18, 0) NOT NULL,
	[tu_descripcion] [varchar](50) NOT NULL,
	[Estado] [char](1) NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[MotiAnula] [varchar](200) NULL,
	[es_jornada_desfasada] [bit] NULL,
 CONSTRAINT [PK_ro_turno_1] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
