﻿CREATE TABLE [dbo].[ro_Departamento] (
    [IdEmpresa]           INT           NOT NULL,
    [IdDepartamento]      INT           NOT NULL,
    [IdDepartamentoPadre] INT           NULL,
    [de_descripcion]      NCHAR (50)    NOT NULL,
    [IdUsuario]           VARCHAR (20)  NOT NULL,
    [Fecha_Transac]       DATETIME      NOT NULL,
    [IdUsuarioUltMod]     VARCHAR (20)  NULL,
    [Fecha_UltMod]        DATETIME      NULL,
    [IdUsuarioUltAnu]     VARCHAR (20)  NULL,
    [Fecha_UltAnu]        DATETIME      NULL,
    [nom_pc]              VARCHAR (50)  NULL,
    [ip]                  VARCHAR (25)  NULL,
    [Estado]              CHAR (1)      NOT NULL,
    [MotiAnula]           VARCHAR (200) NULL,
    CONSTRAINT [PK_ro_Departamento_1] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdDepartamento] ASC),
    CONSTRAINT [FK_ro_Departamento_ro_Departamento] FOREIGN KEY ([IdEmpresa], [IdDepartamentoPadre]) REFERENCES [dbo].[ro_Departamento] ([IdEmpresa], [IdDepartamento]),
    CONSTRAINT [FK_ro_Departamento_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);



