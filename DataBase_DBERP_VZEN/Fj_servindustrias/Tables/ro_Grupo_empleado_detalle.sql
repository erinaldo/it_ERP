CREATE TABLE [Fj_servindustrias].[ro_Grupo_empleado_Detalle](
	[IdEmpresa] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[IdRubro] [varchar](10) NOT NULL,
	[Observacion] [varchar](100) NULL,
	[Valor] [float] NOT NULL,
 CONSTRAINT [PK_ro_Grupo_empleado_Detalle] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdGrupo] ASC,
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
