CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_Parametro_x_Anio_x_Fuerza_MO_RRHH](
	[IdEmpresa] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[IdFuerza] [int] NOT NULL,
	[Porcentaje_Calculo_BS] [numeric](18, 10) NOT NULL,
	[Porcentaje_Calculo_MO] [numeric](18, 10) NOT NULL,
	[Fecha_Inicio] [date] NOT NULL,
	[Fecha_Fin] [date] NOT NULL,
 CONSTRAINT [PK_fa_pre_facturacion_Parametro_x_Anio_x_Fuerza_MO_RRHH] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[Anio] ASC,
	[Mes] ASC,
	[IdFuerza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
