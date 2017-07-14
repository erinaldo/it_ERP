
CREATE TABLE [dbo].[ro_Parametros](
	[IdEmpresa] [int] NOT NULL,
	[IdTipoCbte_AsientoSueldoXPagar] [int] NULL,
	[IdTipoCbte_AsientoProvision] [int] NULL,
	[IdTipo_mov_Ingreso] [int] NULL,
	[IdTipo_mov_Egreso] [int] NULL,
	[Dias_considerado_ultimo_pago_quincela_Liq] [int] NULL,
	[IdNomina_Tipo_Para_Desc_Automat] [int] NULL,
	[IdNominatipoLiq_Para_Desc_Automat] [int] NULL,
	[GeneraraOP_PagoTerceros] [bit] NULL,
	[IdTipoOP_PagoTerceros] [varchar](20) NULL,
	[IdTipoFlujoOP_PagoTerceros] [int] NULL,
	[IdFormaOP_PagoTerceros] [varchar](20) NULL,
	[IdBancoOP_PagoTerceros] [int] NULL,
	[GeneraOP_PagoPrestamos] [bit] NULL,
	[IdTipoOP_PagoPrestamos] [varchar](20) NULL,
	[IdTipoFlujoOP_PagoPrestamos] [int] NULL,
	[IdFormaOP_PagoPrestamos] [varchar](20) NULL,
	[IdBancoOP_PagoPrestamos] [int] NULL,
	[GeneraOP_LiquidacionVacaciones] [bit] NULL,
	[IdTipoOP_LiquidacionVacaciones] [varchar](20) NULL,
	[IdTipoFlujoOP_LiquidacionVacaciones] [int] NULL,
	[IdFormaOP_LiquidacionVacaciones] [varchar](20) NULL,
	[IdBancoOP_LiquidacionVacaciones] [int] NULL,
	[DescuentaIESS_LiquidacionVacaciones] [bit] NULL,
	[cta_contable_IESS_Vacaciones] [varchar](20) NULL,
	[GeneraOP_ActaFiniquito] [bit] NULL,
	[IdTipoOP_ActaFiniquito] [varchar](20) NULL,
	[IdTipoFlujoOP_ActaFiniquito] [int] NULL,
	[IdFormaPagoOP_ActaFiniquito] [varchar](20) NULL,
	[IdBancoOP_ActaFiniquito] [int] NULL,
 CONSTRAINT [PK_ro_Parametros] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



