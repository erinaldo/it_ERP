
CREATE TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdRegistro] [varchar](50) NOT NULL,
	[IdTurno] [numeric](18, 0) NOT NULL,
	[es_fecha_registro] [datetime] NOT NULL,
	[Id_catalogo_Cat] [varchar](10) NOT NULL,
	[Observacion] [varchar](100) NULL,
	[es_jornada_desfasada] [bit] NOT NULL,
	[IdDisco] [int] NULL,
	[IdRuta] [int] NULL,
	[IdSala] [int] NULL,
 CONSTRAINT [PK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_1] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC,
	[IdRegistro] ASC,
	[IdTurno] ASC,
	[es_fecha_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm]  WITH CHECK ADD  CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_catalogo] FOREIGN KEY([Id_catalogo_Cat])
REFERENCES [dbo].[ro_catalogo] ([CodCatalogo])
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm] CHECK CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_catalogo]
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm]  WITH CHECK ADD  CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_disco] FOREIGN KEY([IdEmpresa], [IdDisco])
REFERENCES [Fj_servindustrias].[ro_disco] ([IdEmpresa], [IdDisco])
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm] CHECK CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_disco]
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm]  WITH CHECK ADD  CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_ruta] FOREIGN KEY([IdEmpresa], [IdRuta])
REFERENCES [Fj_servindustrias].[ro_ruta] ([IdEmpresa], [IdRuta])
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm] CHECK CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_ruta]
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm]  WITH CHECK ADD  CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_sala] FOREIGN KEY([IdEmpresa], [IdSala])
REFERENCES [Fj_servindustrias].[ro_sala] ([IdEmpresa], [IdSala])
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm] CHECK CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_sala]
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm]  WITH CHECK ADD  CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_turno] FOREIGN KEY([IdEmpresa], [IdTurno])
REFERENCES [dbo].[ro_turno] ([IdEmpresa], [IdTurno])
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm] CHECK CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_ro_turno]
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm]  WITH CHECK ADD  CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_tb_empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
GO

ALTER TABLE [Fj_servindustrias].[ro_marcaciones_x_empleado_x_incidentes_falt_Perm] CHECK CONSTRAINT [FK_ro_marcaciones_x_empleado_x_incidentes_falt_Perm_tb_empresa]
GO


