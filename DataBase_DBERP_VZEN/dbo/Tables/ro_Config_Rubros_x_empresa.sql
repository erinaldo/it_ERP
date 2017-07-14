CREATE TABLE [dbo].[ro_Config_Rubros_x_empresa] (
    [IdEmpresa]       INT          NOT NULL,
    [IdRubro]         VARCHAR (50) NOT NULL,
    [Orden]           INT          NOT NULL,
    [Valor]           FLOAT (53)   NOT NULL,
    [IdUsuario]       VARCHAR (20) NOT NULL,
    [Fecha_Transac]   DATETIME     NOT NULL,
    [IdUsuarioUltMod] VARCHAR (20) NULL,
    [Fecha_UltMod]    DATETIME     NULL,
    [IdUsuarioUltAnu] VARCHAR (20) NULL,
    [Fecha_UltAnu]    DATETIME     NULL,
    [nom_pc]          VARCHAR (50) NOT NULL,
    [ip]              VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ro_Config_Rubros_x_empresa_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdRubro] ASC),
    CONSTRAINT [FK_ro_Config_Rubros_x_empresa_ro_rubro_tipo] FOREIGN KEY ([IdRubro]) REFERENCES [dbo].[ro_rubro_tipo] ([IdRubro])
);



