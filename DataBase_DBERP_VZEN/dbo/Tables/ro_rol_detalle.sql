CREATE TABLE [dbo].[ro_rol_detalle](
	[IdEmpresa] [int] NOT NULL,
	[IdNominaTipo] [int] NOT NULL,
	[IdNominaTipoLiqui] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdRubro] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL,
	[Valor] [float] NOT NULL,
	[rub_visible_reporte] [bit] NULL,
	[Observacion] [varchar](255) NULL,
	[TipoMovimiento] [varchar](3) NULL,
 CONSTRAINT [PK_ro_rol_detalle] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNominaTipo] ASC,
	[IdNominaTipoLiqui] ASC,
	[IdPeriodo] ASC,
	[IdEmpleado] ASC,
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[ro_rol_detalle]  WITH CHECK ADD  CONSTRAINT [FK_ro_rol_detalle_ro_empleado] FOREIGN KEY([IdEmpresa], [IdEmpleado])
REFERENCES [dbo].[ro_empleado] ([IdEmpresa], [IdEmpleado])
GO

ALTER TABLE [dbo].[ro_rol_detalle] CHECK CONSTRAINT [FK_ro_rol_detalle_ro_empleado]
GO

ALTER TABLE [dbo].[ro_rol_detalle]  WITH CHECK ADD  CONSTRAINT [FK_ro_rol_detalle_ro_rol] FOREIGN KEY([IdEmpresa], [IdNominaTipo], [IdNominaTipoLiqui], [IdPeriodo])
REFERENCES [dbo].[ro_rol] ([IdEmpresa], [IdNominaTipo], [IdNominaTipoLiqui], [IdPeriodo])
GO

ALTER TABLE [dbo].[ro_rol_detalle] CHECK CONSTRAINT [FK_ro_rol_detalle_ro_rol]
GO

ALTER TABLE [dbo].[ro_rol_detalle]  WITH CHECK ADD  CONSTRAINT [FK_ro_rol_detalle_ro_rubro_tipo] FOREIGN KEY([IdEmpresa], [IdRubro])
REFERENCES [dbo].[ro_rubro_tipo] ([IdEmpresa], [IdRubro])
GO

ALTER TABLE [dbo].[ro_rol_detalle] CHECK CONSTRAINT [FK_ro_rol_detalle_ro_rubro_tipo]
GO


