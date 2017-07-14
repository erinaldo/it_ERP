CREATE TABLE [Fj_servindustrias].[ro_empleado_Novedad_x_horasExtras_Pendiente_Aprobar](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](9, 0) NOT NULL,
	[IdRegistro] [varchar](50) NOT NULL,
	[IdRubro] [varchar](10) NOT NULL,
	[es_fecha_registro] [datetime] NOT NULL,
	[Num_horasExtras] [varchar](10) NOT NULL,
	[Observacion] [varchar](100) NULL,
	[Estado_aprobacion] [bit] NOT NULL,
 CONSTRAINT [PK_ro_empleado_Novedad_x_horasExtras_Pendiente_Aprobar] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC,
	[IdRegistro] ASC,
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
