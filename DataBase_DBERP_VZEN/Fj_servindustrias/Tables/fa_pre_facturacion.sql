CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion](
	[IdEmpresa] [int] NOT NULL,
	[IdPreFacturacion] [numeric](18, 0) NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[Observacion] [varchar](50) NOT NULL,
	[IdEstado_Proceso] [varchar](25) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_fa_pre_facturacion] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPreFacturacion] ASC,
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]




