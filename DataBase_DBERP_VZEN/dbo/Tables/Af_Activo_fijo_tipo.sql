CREATE TABLE [dbo].[Af_Activo_fijo_tipo] (
   [IdEmpresa] [int] NOT NULL,
	[IdActijoFijoTipo] [int] NOT NULL,
	[CodActivoFijo] [varchar](50) NOT NULL,
	[Af_Descripcion] [varchar](150) NOT NULL,
	[Af_Porcentaje_depre] [float] NOT NULL,
	[Af_anio_depreciacion] [int] NOT NULL,
	[IdCtaCble_Activo] [varchar](20) NULL,
	[IdCtaCble_Dep_Acum] [varchar](20) NULL,
	[IdCtaCble_Gastos_Depre] [varchar](20) NULL,
	[IdCentroCosto_Activo] [varchar](20) NULL,
	[IdCentroCosto_Dep_Acum] [varchar](20) NULL,
	[IdCentroCosto_Gasto_Depre] [varchar](20) NULL,
	[Se_Deprecia] [bit] NULL,
	[IdUsuario] [varchar](20) NULL,
	[Fecha_Transac] [datetime] NULL,
	[IdUsuarioUltMod] [varchar](20) NULL,
	[Fecha_UltMod] [datetime] NULL,
	[IdUsuarioUltAnu] [varchar](20) NULL,
	[Fecha_UltAnu] [datetime] NULL,
	[nom_pc] [varchar](50) NULL,
	[ip] [varchar](25) NULL,
	[Estado] [char](1) NOT NULL,
	[MotiAnula] [varchar](100) NULL,
    CONSTRAINT [PK_Af_Activo_fijo_tipo_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdActijoFijoTipo] ASC),
    CONSTRAINT [FK_Af_Activo_fijo_tipo_ct_plancta] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Activo]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_Af_Activo_fijo_tipo_ct_plancta1] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Dep_Acum]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble]),
    CONSTRAINT [FK_Af_Activo_fijo_tipo_ct_plancta2] FOREIGN KEY ([IdEmpresa], [IdCtaCble_Gastos_Depre]) REFERENCES [dbo].[ct_plancta] ([IdEmpresa], [IdCtaCble])
);



