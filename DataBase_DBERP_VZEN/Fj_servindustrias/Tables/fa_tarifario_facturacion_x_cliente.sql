CREATE TABLE [Fj_servindustrias].[fa_tarifario_facturacion_x_cliente] (
   [IdEmpresa] [int] NOT NULL,
	[IdTarifario] [numeric](18, 0) NOT NULL,
	[IdCliente] [numeric](18, 0) NOT NULL,
	[IdEstadoVigencia_cat] [varchar](15) NULL,
	[codTarifario] [varchar](50) NOT NULL,
	[nom_tarifario] [varchar](50) NOT NULL,
	[observacion] [varchar](250) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[fecha_inicio] [datetime] NOT NULL,
	[fecha_fin] [datetime] NOT NULL,
	[Movilizacion] [float] NOT NULL,
	[se_fact_depreciacion] [bit] NOT NULL,
	[se_fact_seguro] [bit] NOT NULL,
	[se_fact_movilizacion] [bit] NOT NULL,
	[se_fact_gatos] [bit] NOT NULL,
	[se_fact_egreso_bodega] [bit] NOT NULL,
	[se_factura_gastos_roles] [bit] NOT NULL,
	[se_fact_margen_ganacia] [bit] NOT NULL,
	[se_fact_horometro] [bit] NOT NULL,
	[se_fact_horas_minimas] [bit] NOT NULL,
	[se_fact_otros] [bit] NOT NULL,
	[se_fact_recargo_interes] [bit] NULL,
	[Porcentaje_recargo_iteres_poliza] [float] NULL,
	[IdUsuario] [varchar](20) NULL,
	[Estado] [varchar](1) NOT NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[FechaUltMod] [date] NULL,
	[IdUsuarioUltAnu] [varchar](25) NULL,
	[Fecha_UltAnu] [date] NULL,
	[MotiAnula] [varchar](100) NULL,
    CONSTRAINT [PK_fa_contrato_facturacion_x_cliente] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdTarifario] ASC)
);







