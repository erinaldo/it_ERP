﻿CREATE TABLE [dbo].[ro_rubro_tipo](
	[IdEmpresa] [int] NOT NULL,
	[IdRubro] [varchar](50) NOT NULL,
	[rub_codigo] [varchar](50) NOT NULL,
	[ru_codRolGen] [varchar](30) NOT NULL,
	[ru_descripcion] [varchar](50) NOT NULL,
	[NombreCorto] [varchar](50) NOT NULL,
	[ru_tipo] [char](1) NOT NULL,
	[ru_estado] [char](1) NOT NULL,
	[ru_orden] [int] NOT NULL,
	[ru_EditablexUser] [char](1) NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
	[rub_concep] [bit] NULL,
	[rub_tipcal] [int] NULL,
	[rub_formul] [varchar](4000) NULL,
	[rub_valfij] [money] NULL,
	[rub_legal] [varchar](10) NULL,
	[rub_foract] [varchar](1000) NULL,
	[rub_fornom] [varchar](1000) NULL,
	[rub_gencon] [varchar](20) NULL,
	[rub_antici] [bit] NULL,
	[rub_ctacon] [varchar](20) NULL,
	[rub_grupo] [int] NULL,
	[rub_liquida] [bit] NULL,
	[rub_provision] [bit] NULL,
	[rub_noafecta] [bit] NULL,
	[rub_acumula] [bit] NULL,
	[rub_prorrateo] [bit] NULL,
	[rub_nocontab] [bit] NULL,
	[rub_utilid] [bit] NULL,
	[rub_guarda_rol] [bit] NULL,
	[rub_aplica_IESS] [bit] NULL,
	[rub_AplicaEmpleado_Vac] [bit] NULL,
	[ru_aplica_empleado_Subsidio] [bit] NULL,
	[rub_Contabiliza_x_empleado] [bit] NULL,
	[rub_mustra_liquidacion_cliente] [bit] NULL,
	[rub_Acuerdo_Descuento] [varchar](max) NULL,
 CONSTRAINT [PK_ro_rubro_tipo] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
