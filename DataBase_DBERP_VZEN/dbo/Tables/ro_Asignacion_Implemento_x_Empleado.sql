CREATE TABLE [dbo].[ro_Asignacion_Implemento_x_Empleado](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdAsignacion_Impl] [numeric](18, 0) NOT NULL,
	[Tipo_Movimiento] [varchar](5) NOT NULL,
	[Fecha_Entrega] [date] NOT NULL,
	[Observacion] [varchar](250) NOT NULL,
	[Estado] [char](1) NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[MotivoAnulacion] [varchar](100) NULL,
 CONSTRAINT [PK_ro_Asignacion_Implemento_x_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC,
	[IdAsignacion_Impl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]