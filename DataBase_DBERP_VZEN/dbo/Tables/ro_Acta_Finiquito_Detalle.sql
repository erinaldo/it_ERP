CREATE TABLE [dbo].[ro_Acta_Finiquito_Detalle](
	[IdEmpresa] [int] NOT NULL,
	[IdActaFiniquito] [numeric](18, 0) NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdSecuencia] [int] NOT NULL,
	[Observacion] [varchar](250) NOT NULL,
	[Signo] [varchar](1) NOT NULL,
	[Valor] [float] NOT NULL,
	[IdUsuario] [varchar](20) NOT NULL,
	[Fecha_Transac] [datetime] NOT NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
    [Otros_valor] [float] NULL,
 CONSTRAINT [PK_ro_Acta_Finiquito_Detalle] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdActaFiniquito] ASC,
	[IdEmpleado] ASC,
	[IdSecuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ro_Acta_Finiquito_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_ro_Acta_Finiquito_Detalle_ro_Acta_Finiquito] FOREIGN KEY([IdEmpresa], [IdActaFiniquito], [IdEmpleado])
REFERENCES [dbo].[ro_Acta_Finiquito] ([IdEmpresa], [IdActaFiniquito], [IdEmpleado])
GO

ALTER TABLE [dbo].[ro_Acta_Finiquito_Detalle] CHECK CONSTRAINT [FK_ro_Acta_Finiquito_Detalle_ro_Acta_Finiquito]
GO

