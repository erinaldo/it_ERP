CREATE TABLE [dbo].[ro_Acta_Finiquito](
	[IdEmpresa] [int] NOT NULL,
	[IdActaFiniquito] [numeric](18, 0) NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdCausaTerminacion] [varchar](10) NOT NULL,
	[IdContrato] [numeric](18, 0) NULL,
	[IdCargo] [int] NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaSalida] [datetime] NOT NULL,
	[UltimaRemuneracion] [float] NOT NULL,
	[Observacion] [varchar](250) NULL,
	[Ingresos] [float] NOT NULL,
	[Egresos] [float] NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[Estado] [char](1) NOT NULL,
	[MotiAnula] [varchar](200) NULL,
	[IdCodSectorial] [int] NULL,
	[EsMujerEmbarazada] [bit] NULL,
	[EsDirigenteSindical] [bit] NULL,
	[EsPorDiscapacidad] [bit] NULL,
	[EsPorEnfermedadNoProfesional] [bit] NULL,
	[IdTipoCbte] [int] NULL,
	[IdCbteCble] [numeric](18, 0) NULL,
	[IdOrdenPago] [numeric](9, 0) NULL,
 CONSTRAINT [PK_ro_Acta_Finiquito] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdActaFiniquito] ASC,
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



ALTER TABLE [dbo].[ro_Acta_Finiquito]  WITH CHECK ADD  CONSTRAINT [FK_ro_Acta_Finiquito_ro_cargo] FOREIGN KEY([IdEmpresa], [IdCargo])
REFERENCES [dbo].[ro_cargo] ([IdEmpresa], [IdCargo])
GO

ALTER TABLE [dbo].[ro_Acta_Finiquito] CHECK CONSTRAINT [FK_ro_Acta_Finiquito_ro_cargo]
GO

ALTER TABLE [dbo].[ro_Acta_Finiquito]  WITH CHECK ADD  CONSTRAINT [FK_ro_Acta_Finiquito_ro_contrato] FOREIGN KEY([IdEmpresa], [IdEmpleado], [IdContrato])
REFERENCES [dbo].[ro_contrato] ([IdEmpresa], [IdEmpleado], [IdContrato])
GO

ALTER TABLE [dbo].[ro_Acta_Finiquito] CHECK CONSTRAINT [FK_ro_Acta_Finiquito_ro_contrato]
GO

ALTER TABLE [dbo].[ro_Acta_Finiquito]  WITH CHECK ADD  CONSTRAINT [FK_ro_Acta_Finiquito_ro_empleado] FOREIGN KEY([IdEmpresa], [IdEmpleado])
REFERENCES [dbo].[ro_empleado] ([IdEmpresa], [IdEmpleado])
GO

ALTER TABLE [dbo].[ro_Acta_Finiquito] CHECK CONSTRAINT [FK_ro_Acta_Finiquito_ro_empleado]
GO


