CREATE TABLE [Fj_servindustrias].[ro_parametros_reporte](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdNomina_tipo_Liq] [int] NOT NULL,
	[IdRubro] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL,
	[Id_Catalogo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Id_catalogo_repor] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ro_parametros_reporte_1] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdNomina_tipo_Liq] ASC,
	[IdRubro] ASC,
	[Orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
