
CREATE TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdSolicitud_Vacaciones] [int] NOT NULL,
	[IdNovedad] [numeric](18, 0) NOT NULL,
	[IdNomina_Tipo_Liq] [int] NOT NULL,
	[IdRubro] [varchar](50) NOT NULL,
	[Secuencia] [int] NOT NULL,
	[Valor] [float] NOT NULL,
 CONSTRAINT [PK_ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_tipo] ASC,
	[IdEmpleado] ASC,
	[IdSolicitud_Vacaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad]  WITH CHECK ADD  CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad_ro_empleado_novedad_det] FOREIGN KEY([IdEmpresa], [IdNovedad], [IdEmpleado], [Secuencia])
REFERENCES [dbo].[ro_empleado_novedad_det] ([IdEmpresa], [IdNovedad], [IdEmpleado], [Secuencia])
GO

ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad] CHECK CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad_ro_empleado_novedad_det]
GO

ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad]  WITH CHECK ADD  CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad_ro_Historico_Liquidacion_Vacaciones] FOREIGN KEY([IdEmpresa], [IdNomina_tipo], [IdSolicitud_Vacaciones], [IdEmpleado])
REFERENCES [dbo].[ro_Historico_Liquidacion_Vacaciones] ([IdEmpresa], [IdNomina_Tipo], [idliquidacion], [IdEmpleado])
GO

ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad] CHECK CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_Det_DescNovedad_ro_Historico_Liquidacion_Vacaciones]
GO
