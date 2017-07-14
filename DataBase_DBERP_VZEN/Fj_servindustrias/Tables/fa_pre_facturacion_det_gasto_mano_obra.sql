CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_gasto_mano_obra](
	[Idempresa] [int] NOT NULL,
	[IdPreFacturacion] [numeric](18, 0) NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[Observacion] [varchar](100) NULL,
	[IdCentro_costo] [varchar](20) NULL,
	[IdSubCentroCosoto] [varchar](20) NULL,
 CONSTRAINT [PK_fa_pre_facturacion_det_gasto_mano_obra] PRIMARY KEY CLUSTERED 
(
	[Idempresa] ASC,
	[IdPreFacturacion] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
