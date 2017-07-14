﻿CREATE TABLE [Fj_servindustrias].[ro_Grupo_empleado] (
    [IdEmpresa]                  INT           NOT NULL,
    [IdGrupo]                    INT           NOT NULL,
    [Nombre_Grupo]               VARCHAR (200) NOT NULL,
    [Calculo_Horas_extras_Sobre] INT           NOT NULL,
    [Max_num_horas_sab_dom]      INT           NOT NULL,
    [IdRubro_Alim]               VARCHAR (10)  NOT NULL,
    [IdRubro_Trans]              VARCHAR (10)  NOT NULL,
    [Valor_Alimen]               FLOAT (53)    NOT NULL,
    [Valor_Transp]               FLOAT (53)    NOT NULL,
    [Valor_bono]                 FLOAT (53)    NOT NULL,
    [IdUsuario]                  VARCHAR (20)  NULL,
    [Fecha_Transac]              DATETIME      NULL,
    [IdUsuarioUltMod]            VARCHAR (20)  NULL,
    [Fecha_UltMod]               DATETIME      NULL,
    [IdUsuarioUltAnu]            VARCHAR (20)  NULL,
    [Fecha_UltAnu]               DATETIME      NULL,
    [nom_pc]                     VARCHAR (50)  NULL,
    [ip]                         VARCHAR (25)  NULL,
    [Estado]                     CHAR (1)      NULL,
    [MotiAnula]                  VARCHAR (200) NULL,
    CONSTRAINT [PK_ro_Grupo_empleado] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdGrupo] ASC),
    CONSTRAINT [FK_ro_Grupo_empleado_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);


