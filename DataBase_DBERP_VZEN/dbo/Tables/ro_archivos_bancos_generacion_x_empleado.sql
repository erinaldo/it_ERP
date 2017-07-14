CREATE TABLE [dbo].[ro_archivos_bancos_generacion_x_empleado](
	[IdEmpresa] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdArchivo] [numeric](18, 0) NOT NULL,
	[Valor] [float] NOT NULL,
	[pagacheque] [bit] NULL,
 CONSTRAINT [PK_ro_archivos_bancos_generacion_x_empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEmpleado] ASC,
	[IdArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


