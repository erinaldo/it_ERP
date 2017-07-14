CREATE TABLE [dbo].[Aca_Parametros](
        [IdEmpresa] [int] NOT NULL,
        [IdInstitucion] [int] NOT NULL,
        [IdSucursal_fact] [int] NULL,
        [IdBodega_fact] [int] NULL,
        [IdPuntoVta_fact] [int] NULL,
        [IdCaja_fact] [int] NULL,
 CONSTRAINT [PK_Aca_Parametros] PRIMARY KEY CLUSTERED 
(
        [IdEmpresa] ASC,
        [IdInstitucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]