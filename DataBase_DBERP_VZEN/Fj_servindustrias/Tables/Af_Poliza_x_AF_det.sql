

CREATE TABLE [Fj_servindustrias].[Af_Poliza_x_AF_det](
	[IdEmpresa] [int] NOT NULL,
	[IdPoliza] [numeric](18, 0) NOT NULL,
	[IdActivoFijo] [int] NOT NULL,
	[secuencia] [int] NOT NULL,
	[Subtotal_0] [float] NULL,
	[Subtotal_12] [float] NULL,
	[Iva] [float] NULL,
	[Prima] [float] NULL,
	[observacion_det] [varchar](150) NULL,
	[IdEstadoFacturacion_cat] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Af_Poliza_x_AF_det] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPoliza] ASC,
	[secuencia] ASC,
	[IdActivoFijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [Fj_servindustrias].[Af_Poliza_x_AF_det]  WITH CHECK ADD  CONSTRAINT [FK_Af_Poliza_x_AF_det_Af_Activo_fijo] FOREIGN KEY([IdEmpresa], [IdActivoFijo])
REFERENCES [dbo].[Af_Activo_fijo] ([IdEmpresa], [IdActivoFijo])
GO

ALTER TABLE [Fj_servindustrias].[Af_Poliza_x_AF_det] CHECK CONSTRAINT [FK_Af_Poliza_x_AF_det_Af_Activo_fijo]
GO







