CREATE TABLE [dbo].[fa_factura_x_in_Ing_Egr_Inven](
	[IdEmpresa_fa] [int] NOT NULL,
	[IdSucursal_fa] [int] NOT NULL,
	[IdBodega_fa] [int] NOT NULL,
	[IdCbteVta_fa] [numeric](18, 0) NOT NULL,
	[IdEmpresa_in_eg_x_inv] [int] NOT NULL,
	[IdSucursal_in_eg_x_inv] [int] NOT NULL,
	[IdMovi_inven_tipo_in_eg_x_inv] [int] NOT NULL,
	[IdNumMovi_in_eg_x_inv] [numeric](18, 0) NOT NULL,
	[observacion] [varchar](50) NULL,
 CONSTRAINT [PK_fa_factura_x_in_Ing_Egr_Inven] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa_fa] ASC,
	[IdSucursal_fa] ASC,
	[IdBodega_fa] ASC,
	[IdCbteVta_fa] ASC,
	[IdEmpresa_in_eg_x_inv] ASC,
	[IdSucursal_in_eg_x_inv] ASC,
	[IdMovi_inven_tipo_in_eg_x_inv] ASC,
	[IdNumMovi_in_eg_x_inv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[fa_factura_x_in_Ing_Egr_Inven]  WITH CHECK ADD  CONSTRAINT [FK_fa_factura_x_in_Ing_Egr_Inven_fa_factura] FOREIGN KEY([IdEmpresa_fa], [IdSucursal_fa], [IdBodega_fa], [IdCbteVta_fa])
REFERENCES [dbo].[fa_factura] ([IdEmpresa], [IdSucursal], [IdBodega], [IdCbteVta])
GO

ALTER TABLE [dbo].[fa_factura_x_in_Ing_Egr_Inven] CHECK CONSTRAINT [FK_fa_factura_x_in_Ing_Egr_Inven_fa_factura]
GO

ALTER TABLE [dbo].[fa_factura_x_in_Ing_Egr_Inven]  WITH CHECK ADD  CONSTRAINT [FK_fa_factura_x_in_Ing_Egr_Inven_in_Ing_Egr_Inven] FOREIGN KEY([IdEmpresa_in_eg_x_inv], [IdSucursal_in_eg_x_inv], [IdMovi_inven_tipo_in_eg_x_inv], [IdNumMovi_in_eg_x_inv])
REFERENCES [dbo].[in_Ing_Egr_Inven] ([IdEmpresa], [IdSucursal], [IdMovi_inven_tipo], [IdNumMovi])
GO

ALTER TABLE [dbo].[fa_factura_x_in_Ing_Egr_Inven] CHECK CONSTRAINT [FK_fa_factura_x_in_Ing_Egr_Inven_in_Ing_Egr_Inven]
GO


