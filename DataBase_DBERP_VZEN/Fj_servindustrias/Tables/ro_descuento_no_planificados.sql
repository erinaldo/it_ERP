CREATE TABLE [Fj_servindustrias].[ro_descuento_no_planificados](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdDescuento] [int] NOT NULL,
	[IdNovedad] [numeric](18, 0) NULL,
	[IdRubro] [varchar](50) NOT NULL,
	[Observacion] [varchar](200) NOT NULL,
	[Valor] [float] NOT NULL,
	[Fecha_Incidente] [date] NOT NULL,
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
 CONSTRAINT [PK_ro_descuento_no_planificados] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC,
	[IdDescuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go


ALTER TABLE [Fj_servindustrias].[ro_descuento_no_planificados]  WITH CHECK ADD  CONSTRAINT [FK_ro_descuento_no_planificados_ro_empleado_Novedad] FOREIGN KEY([IdEmpresa], [IdNovedad], [IdEmpleado])
REFERENCES [dbo].[ro_empleado_Novedad] ([IdEmpresa], [IdNovedad], [IdEmpleado])

go
ALTER TABLE [Fj_servindustrias].[ro_descuento_no_planificados] CHECK CONSTRAINT [FK_ro_descuento_no_planificados_ro_empleado_Novedad]


