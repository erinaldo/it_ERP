
CREATE TABLE [Fj_servindustrias].[DepreciacionTransgandia_Rpt](
	[IdEmpresa] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdActivofijo] [int] NOT NULL,
	[Secuencia] [int] NOT NULL,
	[Fecha_adquisicion] [date] NULL,
	[Proveedor] [varchar](100) NULL,
	[Factura] [varchar](30) NULL,
	[Cantidad] [int] NULL,
	[Af_nombre] [varchar](200) NULL,
	[Costo_Unitario_Camion] [float] NULL,
	[Costo_unitario_carroceria] [float] NULL,
	[ValorSalvamento] [float] NULL,
	[TotalDepreciar] [float] NULL,
	[DepreciacionMensual] [float] NULL,
 CONSTRAINT [PK_DepreciacionTransgandia_Rpt] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPeriodo] ASC,
	[IdActivofijo] ASC,
	[Secuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]