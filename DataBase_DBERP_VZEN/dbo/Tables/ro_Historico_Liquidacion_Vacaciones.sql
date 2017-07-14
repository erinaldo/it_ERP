CREATE TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdLiquidacion] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdOrdenPago] [numeric](9, 0) NOT NULL,
	[IdEmpresa_OP] [int] NOT NULL,
	[ValorCancelado] [float] NOT NULL,
	[FechaPago] [date] NOT NULL,
	[Observaciones] [varchar](500) NOT NULL,
	[IdUsuario] [varchar](25) NULL,
	[Estado] [varchar](1) NULL,
	[Fecha_Transac] [datetime] NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](25) NULL,
	[FechaHoraAnul] [datetime] NULL,
	[MotiAnula] [varchar](200) NULL,
	[IdUsuarioUltAnu] [varchar](25) NULL,
	[EstadoContrato] [varchar](10) NULL,
	[Iess] [float] NULL,
	[IdTipo_op] [varchar](20) NULL,
	[Gozadas_Pagadas] [varchar](10) NULL,
	[IdSolicitud] [int] NULL,
 CONSTRAINT [PK_ro_Historico_Liquidacion_Vacaciones_1] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdLiquidacion] ASC,
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones]  WITH CHECK ADD  CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_tb_empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
GO

ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones] CHECK CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_tb_empresa]
GO

ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones]  WITH CHECK ADD  CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_tb_empresa1] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
GO

ALTER TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones] CHECK CONSTRAINT [FK_ro_Historico_Liquidacion_Vacaciones_tb_empresa1]
GO
