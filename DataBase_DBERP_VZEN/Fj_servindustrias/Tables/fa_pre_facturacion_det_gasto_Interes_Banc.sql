CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_gasto_Interes_Banc](
	[IdEmpresa] [int] NOT NULL,
	[IdPreFacturacion] [numeric](18, 0) NOT NULL,
	[secuencia] [int] NOT NULL,
	[IdPrestamo] [numeric](9, 0) NOT NULL,
	[IdSecuencia_Prestamo] [int] NOT NULL,
	[IdCliente] [numeric](9, 0) NOT NULL,
	[Valor] [float] NOT NULL,
	[Observacion] [varchar](200) NULL,
 CONSTRAINT [PK_fa_pre_facturacion_det_gasto_Interes_Banc] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPreFacturacion] ASC,
	[secuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]