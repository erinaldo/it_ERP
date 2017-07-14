CREATE TABLE [dbo].[ro_parametro_Egreso_Ingreso_x_implementos]
(
	[IdEmpresa] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[IdBodega] [int] NOT NULL,
	[IdTipo_mov_Ingreso] [int] NOT NULL,
	[IdTipo_mov_Egreso] [int] NOT NULL,
 CONSTRAINT [PK_ro_parametro_Egreso_Ingreso_x_implementos] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdSucursal] ASC,
	[IdBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

