﻿CREATE TABLE [dbo].[ro_prestamo](
	[IdEmpresa] [int] NOT NULL,
	[IdPrestamo] [numeric](18, 0) NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdNominaTipoLiqui] [int] NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdRubro] [varchar](10) NOT NULL,
	[IdEmpleado_Aprueba] [numeric](18, 0) NOT NULL,
	[IdMotivo_Prestamo] [varchar](10) NOT NULL,
	[Estado] [char](1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[MontoSol] [float] NOT NULL,
	[TasaInteres] [float] NOT NULL,
	[TotalPrestamo] [float] NOT NULL,
	[NumCuotas] [int] NOT NULL,
	[IdTipo_Pago] [varchar](10) NOT NULL,
	[Fecha_PriPago] [datetime] NOT NULL,
	[Observacion] [varchar](250) NOT NULL,
	[Tipo_Calculo] [varchar](1) NULL,
	[IdUsuario] [varchar](20) NOT NULL,
	[Fecha_Transac] [datetime] NOT NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[MotiAnula] [varchar](200) NULL,
	[IdTipoCbte] [int] NULL,
	[IdCbteCble] [numeric](9, 0) NULL,
	[IdOrdenPago] [numeric](9, 0) NULL,
 CONSTRAINT [PK_ro_prestamo] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


