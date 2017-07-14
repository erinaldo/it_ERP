CREATE TABLE [Fj_servindustrias].[fa_registro_unidades_x_equipo_det](
	[IdEmpresa] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdRegistro] [decimal](18, 0) NOT NULL,
	[IdFecha] [int] NOT NULL,
	[IdActivoFijo] [int] NOT NULL,
	[IdUnidad_Medida] [varchar](25) NOT NULL,
	[IdTipo_Reg_cat] [varchar](15) NOT NULL,
	[Valor] [float] NOT NULL,
	[fecha_reg] [datetime] NULL,
	[fecha_modi] [datetime] NULL,
 CONSTRAINT [PK_fa_registro_unidades_x_equipo_det] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPeriodo] ASC,
	[IdRegistro] ASC,
	[IdFecha] ASC,
	[IdActivoFijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]




