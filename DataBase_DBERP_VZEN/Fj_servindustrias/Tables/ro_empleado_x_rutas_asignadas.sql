CREATE TABLE [Fj_servindustrias].[ro_empleado_x_rutas_asignadas](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
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
 CONSTRAINT [PK_ro_empleado_x_rutas_asignadas] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [Fj_servindustrias].[ro_empleado_x_rutas_asignadas]  WITH CHECK ADD  CONSTRAINT [FK_ro_empleado_x_rutas_asignadas_ro_empleado_x_ro_tipoNomina] FOREIGN KEY([IdEmpresa], [IdEmpleado], [IdNomina_Tipo])
REFERENCES [dbo].[ro_empleado_x_ro_tipoNomina] ([IdEmpresa], [IdEmpleado], [IdTipoNomina])
GO

ALTER TABLE [Fj_servindustrias].[ro_empleado_x_rutas_asignadas] CHECK CONSTRAINT [FK_ro_empleado_x_rutas_asignadas_ro_empleado_x_ro_tipoNomina]
GO


