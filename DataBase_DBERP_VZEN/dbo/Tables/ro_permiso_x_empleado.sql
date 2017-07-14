CREATE TABLE [dbo].[ro_permiso_x_empleado](
	[IdEmpresa] [int] NOT NULL,
	[IdNomina_Tipo] [int] NOT NULL,
	[IdEmpleado] [numeric](18, 0) NOT NULL,
	[IdPermiso] [numeric](18, 0) NOT NULL,
	[IdEstadoAprob] [varchar](10) NOT NULL,
	[IdEmpleado_Apro] [numeric](18, 0) NULL,
	[IdEmpleado_Soli] [numeric](18, 0) NULL,
	[IdTipoLicencia] [varchar](10) NULL,
	[Id_Forma_descuento_permiso_Cat] [varchar](10) NULL,
	[Dias_tomados] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[MotivoAusencia] [varchar](250) NOT NULL,
	[TiempoAusencia] [time](7) NOT NULL,
	[FormaRecuperacion] [varchar](250) NOT NULL,
	[MotivoAproba] [varchar](250) NULL,
	[Observacion] [varchar](250) NULL,
	[EsLicencia] [bit] NULL,
	[EsPermiso] [bit] NULL,
	[FechaSalida] [datetime] NULL,
	[FechaEntrada] [datetime] NULL,
	[LLegoAtrasado] [bit] NULL,
	[HorasAtraso] [time](7) NULL,
	[HoraSalida] [time](7) NULL,
	[HoraRegreso] [time](7) NULL,
	[Estado] [char](1) NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[IdUsuario_Anu] [varchar](20) NULL,
	[FechaAnulacion] [datetime] NULL,
	[Fecha_Transac] [datetime] NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[ip] [varchar](25) NULL,
	[nom_pc] [nchar](10) NULL,
	[MotivoAnulacion] [varchar](250) NULL,
	[IdNovedad] [numeric](9, 0) NULL,
 CONSTRAINT [PK_ro_permiso_x_empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdNomina_Tipo] ASC,
	[IdEmpleado] ASC,
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



