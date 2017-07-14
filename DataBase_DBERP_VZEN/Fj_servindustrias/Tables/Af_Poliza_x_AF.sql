

CREATE TABLE [Fj_servindustrias].[Af_Poliza_x_AF](
	[IdEmpresa] [int] NOT NULL,
	[IdPoliza] [numeric](18, 0) NOT NULL,
	[IdProveedor] [numeric](18, 0) NOT NULL,
	[IdCentroCosto] [varchar](20) NULL,
	[IdCentroCosto_sub_centro_costo] [varchar](20) NULL,
	[cod_poliza] [varchar](50) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[observacion] [varchar](250) NOT NULL,
	[fecha_vigencia_desde] [datetime] NOT NULL,
	[fecha_vigencia_hasta] [datetime] NOT NULL,
	[num_cuotas] [int] NOT NULL,
	[valor_cuota] [float] NOT NULL,
	[fecha_1era_cuota] [datetime] NOT NULL,
	[suma_asegurada] [float] NOT NULL,
	[total_meses] [int] NOT NULL,
	[subtotal] [float] NOT NULL,
	[porc_iva] [float] NOT NULL,
	[iva] [float] NOT NULL,
	[Total] [float] NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[MotivoAnulacion] [nchar](10) NULL,
	[Estado] [char](1) NOT NULL,
	[subtotal_noIva] [float] NULL,
	[pago_contado] [float] NULL,
 CONSTRAINT [PK_Af_Poliza_x_AF] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPoliza] ASC,
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



ALTER TABLE [Fj_servindustrias].[Af_Poliza_x_AF]  WITH CHECK ADD  CONSTRAINT [FK_Af_Poliza_x_AF_cp_proveedor] FOREIGN KEY([IdEmpresa], [IdProveedor])
REFERENCES [dbo].[cp_proveedor] ([IdEmpresa], [IdProveedor])
GO

ALTER TABLE [Fj_servindustrias].[Af_Poliza_x_AF] CHECK CONSTRAINT [FK_Af_Poliza_x_AF_cp_proveedor]
GO


