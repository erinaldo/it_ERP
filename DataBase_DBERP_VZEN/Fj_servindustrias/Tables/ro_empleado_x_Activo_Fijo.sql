CREATE TABLE [Fj_servindustrias].[ro_empleado_x_Activo_Fijo](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_tipo] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdActivo_fijo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[Fecha_Asignacion] [date] NOT NULL,
	[Fecha_Hasta] [date] NOT NULL,
 CONSTRAINT [PK_ro_empleado_x_Activo_Fijo] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_tipo] ASC,
	[IdPeriodo] ASC,
	[IdActivo_fijo] ASC,
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]