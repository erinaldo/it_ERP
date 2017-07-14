
  CREATE TABLE [Fj_servindustrias].[GatosTransgandia_Rpt](
	[IdEmpresa] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[secuencia] [int] NOT NULL,
	[IdProveedor] [numeric](18, 0) NOT NULL,
	[Fecha] [date] NULL,
	[Proveedor] [varchar](100) NULL,
	[Cantidad] [int] NULL,
	[Factura] [varchar](20) NULL,
	[Descripcion] [varchar](200) NULL,
	[Costounitario] [float] NULL,
	[Total] [float] NULL,
	[Fuerza] [varchar](100) NULL,
	[NombreServicio] [varchar](200) NULL,
 CONSTRAINT [PK_ROLES_Rpt008_Tmp] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPeriodo] ASC,
	[secuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
