
CREATE TABLE [dbo].[ro_Solicitud_Vacaciones_x_empleado](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdSolicitudVaca] [int] NOT NULL,
	[IdEmpleado] [numeric](9, 0) NOT NULL,
	[IdEmpleado_aprue] [numeric](9, 0) NOT NULL,
	[IdEmpleado_remp] [numeric](9, 0) NULL,
	[IdEstadoAprobacion] [varchar](10) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[AnioServicio] [nchar](10) NOT NULL,
	[Dias_q_Corresponde] [nchar](10) NOT NULL,
	[Dias_a_disfrutar] [int] NOT NULL,
	[Dias_pendiente] [int] NOT NULL,
	[Anio_Desde] [date] NOT NULL,
	[Anio_Hasta] [date] NOT NULL,
	[Fecha_Desde] [date] NOT NULL,
	[Fecha_Hasta] [date] NOT NULL,
	[Fecha_Retorno] [date] NOT NULL,
	[Observacion] [varchar](250) NOT NULL,
	[IdUsuario] [varchar](25) NULL,
	[IdUsuario_Anu] [varchar](25) NULL,
	[FechaAnulacion] [datetime] NULL,
	[Fecha_Transac] [datetime] NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](25) NULL,
	[Estado] [varchar](1) NULL,
	[MotivoAnulacion] [varchar](250) NULL,
	[ip] [varchar](250) NULL,
	[nom_pc] [varchar](250) NULL,
	[Gozadas_Pgadas] [bit] NULL,
	[Canceladas] [bigint] NULL,
 CONSTRAINT [PK_ro_Solicitud_Vacaciones_x_empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdSolicitudVaca] ASC,
	[IdEmpleado] ASC,
	[IdEmpleado_aprue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



