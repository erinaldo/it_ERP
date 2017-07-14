CREATE TABLE [Fj_servindustrias].[in_movi_inve_detalle_egreso_x_item](
	[IdEmpresa_egr] [int] NOT NULL,
	[IdPrefacturacion] [numeric](18, 0) NOT NULL,
	[Secuencia] [int] NULL,
	[IdSucursal_egr] [int] NULL,
	[IdBodega_egr] [int] NULL,
	[IdMovi_inven_tipo_egr] [int] NULL,
	[IdNumMovi_egr] [numeric](18, 0) NULL,
	[Secuencia_egr] [int] NULL,
	[codigo_reg_egr] [varchar](100) NULL,
	[cantidad_egr] [float] NULL,
	[dm_cantidad] [float] NULL,
	[cm_fecha] [datetime] NULL,
	[IdEmpresa_Oc] [int] NULL,
	[IdSucursal_Oc] [int] NULL,
	[IdOrdenCompra_Oc] [numeric](18, 0) NULL,
	[oc_NumDocumento] [varchar](50) NULL,
	[IdProveedor] [numeric](18, 0) NULL,
	[IdProducto] [numeric](18, 0) NULL,
	[dm_precio] [float] NULL,
	[IdCentro_Costo] [varchar](20) NOT NULL,
	[IdCentroCosto_sub_centro_costo] [varchar](20) NULL,
	[IdPunto_cargo] [int] NULL,
	[Observacion_det] [varchar](200) NULL,
	[Aplica_Iva] [bit] NOT NULL,
	[Por_Iva] [float] NOT NULL,
	[Subtotal] [float] NOT NULL,
	[Valor_Iva] [float] NOT NULL,
	[Total] [float] NOT NULL,
	[IdTarifario] [numeric](18, 0) NULL,
	[Facturar] [bit] NOT NULL,
	[Porc_ganancia] [float] NOT NULL
) ON [PRIMARY]







