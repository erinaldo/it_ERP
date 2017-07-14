CREATE TABLE [dbo].[ba_Cbte_Ban_Datos_Entrega_cheq](
	[IdEmpresa] [int] NOT NULL,
	[IdCbteCble] [numeric](18, 0) NOT NULL,
	[IdTipocbte] [int] NOT NULL,
	[fecha_hora_entrega] [datetime] NOT NULL,
	[IdEstado_cheque_cat] [varchar](50) NOT NULL,
	[IdPersona_Entrega] [numeric](18, 0) NOT NULL,
	[Nota_entrega] [varchar](1500) NOT NULL,
	[fecha_trans] [datetime] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ba_Cbte_Ban_Datos_Entrega_cheq] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdCbteCble] ASC,
	[IdTipocbte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
