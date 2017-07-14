
CREATE TABLE [dbo].[ro_DiasFaltados_x_Empleado](
	[IdEmpresa] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdFalta] [int] NOT NULL,
	[IdNominaTipo] [int] NOT NULL,
	[IdNominaTipoLiq] [int] NOT NULL,
	[CodCatalogo] [varchar](10) NOT NULL,
	[IdNovedad] [int] NULL,
	[FechaFaltaDesde] [datetime] NOT NULL,
	[FechaFaltaHasta] [datetime] NOT NULL,
	[DiasFaltados] [varchar](5) NOT NULL,
	[DiasDescuento] [int] NULL,
	[FechaDescuentaRol] [datetime] NULL,
	[ValorDescuentaRol] [decimal](18, 2) NULL,
	[Observacion] [varchar](200) NOT NULL,
	[CatalogoDescripcion] [varchar](50) NOT NULL,
	[estado] [char](1) NOT NULL,
	[IdUsuario] [varchar](20) NOT NULL,
	[Fecha_Transac] [datetime] NOT NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[MotiAnula] [varchar](200) NULL,
 CONSTRAINT [PK_ro_DiasFaltados_x_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEmpleado] ASC,
	[IdFalta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



ALTER TABLE [dbo].[ro_DiasFaltados_x_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_ro_DiasFaltados_x_Empleado_ro_empleado] FOREIGN KEY([IdEmpresa], [IdEmpleado])
REFERENCES [dbo].[ro_empleado] ([IdEmpresa], [IdEmpleado])
GO

ALTER TABLE [dbo].[ro_DiasFaltados_x_Empleado] CHECK CONSTRAINT [FK_ro_DiasFaltados_x_Empleado_ro_empleado]
GO


