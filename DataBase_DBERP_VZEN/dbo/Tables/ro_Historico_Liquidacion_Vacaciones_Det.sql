CREATE TABLE [dbo].[ro_Historico_Liquidacion_Vacaciones_Det](
	[IdEmpresa] [int] NOT NULL,
	[IdNominatipo] [int] NOT NULL,
	[IdSolicitud_Vacaciones] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[Sec] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Total_Remuneracion] [float] NOT NULL,
	[Total_Vacaciones] [float] NOT NULL,
	[Valor_Cancelar] [float] NOT NULL,
 CONSTRAINT [PK_ro_Historico_Liquidacion_Vacaciones_Det] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNominatipo] ASC,
	[IdSolicitud_Vacaciones] ASC,
	[IdEmpleado] ASC,
	[Sec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]