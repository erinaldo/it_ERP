﻿
CREATE TABLE [Fj_servindustrias].[ro_Remplazo_x_emplado](
	[IdEmpresa] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdEmpleado_Remplazo] [numeric](18, 0) NOT NULL,
	[Id_remplazo] [int] NOT NULL,
	[IdNomina_Tipo] [int] NULL,
	[IdNomina_TipoLiqui] [int] NULL,
	[IdPeriodo] [int] NULL,
	[IdRubro] [varchar](10) NULL,
	[IdNovedad] [numeric](9, 0) NULL,
	[Valor_descuento_empleado] [float] NULL,
	[Fecha_descuenta_rol] [date] NULL,
	[valor_x_dia_remplazo] [float] NOT NULL,
	[Total_pagar_remplazo] [float] NOT NULL,
	[Descuenta_rol] [bit] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Id_Motivo_Ausencia_Cat] [int] NOT NULL,
	[Id_Tipo_tipo_Remplazo_Cat] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Fecha_Entrada] [date] NOT NULL,
	[Hora_salida] [time](7) NULL,
	[Hora_regreso] [time](7) NULL,
	[Observacion] [varchar](300) NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[Estado] [char](1) NULL,
	[MotiAnula] [varchar](200) NULL,
	[IdTipo_op] [varchar](20) NULL,
	[IdOrdenPago] [numeric](9, 0) NULL,
 CONSTRAINT [PK_ro_Remplazo_x_emplado] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEmpleado] ASC,
	[Id_remplazo] ASC,
	[IdEmpleado_Remplazo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
