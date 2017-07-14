﻿CREATE TABLE [dbo].[Aca_Aspirante] (
    [IdInstitucion]       INT           NOT NULL,
    [IdAspirante]         NUMERIC (18)  NOT NULL,
    [cod_aspirante]       VARCHAR (50)  NOT NULL,
    [lugar]               VARCHAR (50)  NOT NULL,
    [IdPais_Nacionalidad] VARCHAR (10)  NOT NULL,
    [barrio]              NCHAR (10)    NOT NULL,
    [foto]                IMAGE         NULL,
    [estado]              VARCHAR (1)   NOT NULL,
    [cod_alterno]         VARCHAR (50)  NULL,
    [IdPersona]           NUMERIC (18)  NOT NULL,
    [FechaModificacion]   DATETIME      NULL,
    [FechaCreacion]       DATETIME      NULL,
    [UsuarioModificacion] VARCHAR (50)  NULL,
    [UsuarioCreacion]     VARCHAR (50)  NULL,
    [MotivoAnulacion]     VARCHAR (150) NULL,
    [FechaAnulacion]      DATETIME      NULL,
    [UsuarioAnulacion]    VARCHAR (50)  NULL,
    [estado_alumno]       VARCHAR (50)  NULL,
    [estado_admision]     VARCHAR (50)  NULL,
    CONSTRAINT [PK_Aca_Aspirante] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdAspirante] ASC),
    CONSTRAINT [FK_Aca_Aspirante_Aca_Institucion] FOREIGN KEY ([IdInstitucion]) REFERENCES [dbo].[Aca_Institucion] ([IdInstitucion]),
    CONSTRAINT [FK_Aca_Aspirante_tb_pais] FOREIGN KEY ([IdPais_Nacionalidad]) REFERENCES [dbo].[tb_pais] ([IdPais]),
    CONSTRAINT [FK_Aca_Aspirante_tb_persona] FOREIGN KEY ([IdPersona]) REFERENCES [dbo].[tb_persona] ([IdPersona])
);



