CREATE TABLE [dbo].[ro_Asignacion_Implemento_x_Empleado_det] (
   [IdEmpresa] [int] NOT NULL,
	[IdAsignacion_Impl] [numeric](18, 0) NOT NULL,
	[IdProducto] [numeric](18, 0) NOT NULL,
	[secuencia] [int] NOT NULL,
	[Detalle] [varchar](250) NOT NULL,
	[Vida_Util] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Fecha_Caducidad] [date] NOT NULL,
	[Estado_implemnto] [varchar](25) NOT NULL,
 CONSTRAINT [PK_ro_Asignacion_Implemento_x_Empleado_det] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdAsignacion_Impl] ASC,
	[IdProducto] ASC,
	[secuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]