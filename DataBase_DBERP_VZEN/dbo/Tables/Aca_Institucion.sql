﻿CREATE TABLE [dbo].[Aca_Institucion] (
    [IdInstitucion]        INT           NOT NULL,
    [IdEmpresa]            INT           NOT NULL,
    [Ruc]                  VARCHAR (50)  NULL,
    [codInstitucion]       VARCHAR (25)  NULL,
    [Nombre]               VARCHAR (50)  NOT NULL,
    [Direccion]            VARCHAR (100) NULL,
    [IdPais]               VARCHAR (10)  NOT NULL,
    [IdProvincia]          VARCHAR (25)  NOT NULL,
    [IdCiudad]             VARCHAR (25)  NOT NULL,
    [Telefono]             VARCHAR (25)  NULL,
    [Fax]                  VARCHAR (50)  NULL,
    [Rector]               VARCHAR (60)  NULL,
    [Cordinador]           VARCHAR (60)  NULL,
    [Secretario]           VARCHAR (60)  NULL,
    [Resolucion_academica] VARCHAR (100) NULL,
    [Sitio_web]            VARCHAR (100) NULL,
    [Logo]                 IMAGE         NULL,
    [Estado]               CHAR (1)      NULL,
    [UsuarioCreacion]      VARCHAR (25)  NULL,
    [UsuarioModificacion]  VARCHAR (25)  NULL,
    [FechaCreacion]        DATETIME      NULL,
    [FechaModificacion]    DATETIME      NULL,
    [FechaAnulacion]       DATETIME      NULL,
    [UsuarioAnulacion]     VARCHAR (25)  NULL,
    [MotivoAnulacion]      VARCHAR (150) NULL,
    CONSTRAINT [PK_Aca_Institucion_1] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC),
    CONSTRAINT [FK_Aca_Institucion_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);





