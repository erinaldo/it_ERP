CREATE TABLE [dbo].[ro_periodo](
	[IdEmpresa] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[pe_anio] [int] NULL,
	[pe_mes] [int] NULL,
	[pe_FechaIni] [smalldatetime] NOT NULL,
	[pe_FechaFin] [smalldatetime] NOT NULL,
	[pe_estado] [nvarchar](1) NOT NULL,
	[Fecha_Transac] [datetime] NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](25) NULL,
	[FechaHoraAnul] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](25) NULL,
	[MotivoAnulacion] [varchar](100) NULL,
	[Cod_region] [varchar](10) NULL,
	[Carga_Todos_Empleados] [bit] NULL,
 CONSTRAINT [PK_ro_periodo] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]