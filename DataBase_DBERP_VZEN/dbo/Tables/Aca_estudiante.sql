﻿CREATE TABLE [dbo].[Aca_estudiante] (
    [IdInstitucion]        INT           NOT NULL,
    [IdEstudiante]         NUMERIC (18)  NOT NULL,
    [cod_estudiante]       VARCHAR (50)  NOT NULL,
    [lugar]                VARCHAR (50)  NOT NULL,
    [IdPais_Nacionalidad]  VARCHAR (10)  NOT NULL,
    [barrio]               NCHAR (10)    NOT NULL,
    [foto]                 IMAGE         NULL,
    [estado]               VARCHAR (1)   NOT NULL,
    [cod_alterno]          VARCHAR (50)  NOT NULL,
    [IdPersona]            NUMERIC (18)  NOT NULL,
    [FechaModificacion]    DATETIME      NULL,
    [FechaCreacion]        DATETIME      NULL,
    [UsuarioModificacion]  VARCHAR (25)  NULL,
    [UsuarioCreacion]      VARCHAR (25)  NULL,
    [IdAspirante]          NUMERIC (18)  NULL,
    [MotivoAnulacion]      VARCHAR (150) NULL,
    [FechaAnulacion]       DATETIME      NULL,
    [UsuarioAnulacion]     VARCHAR (25)  NULL,
    [IdPais_Nacionalidad2] VARCHAR (10)  NULL,
    [IdPais_Nacionalidad3] VARCHAR (10)  NULL,
    [cod_estudiante2]      VARCHAR (50)  NULL,
    CONSTRAINT [PK_aca_estudiante] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdEstudiante] ASC),
    CONSTRAINT [FK_Aca_estudiante_Aca_Institucion] FOREIGN KEY ([IdInstitucion]) REFERENCES [dbo].[Aca_Institucion] ([IdInstitucion]),
    CONSTRAINT [FK_Aca_estudiante_tb_pais] FOREIGN KEY ([IdPais_Nacionalidad]) REFERENCES [dbo].[tb_pais] ([IdPais]),
    CONSTRAINT [FK_Aca_estudiante_tb_pais1] FOREIGN KEY ([IdPais_Nacionalidad2]) REFERENCES [dbo].[tb_pais] ([IdPais]),
    CONSTRAINT [FK_Aca_estudiante_tb_pais2] FOREIGN KEY ([IdPais_Nacionalidad3]) REFERENCES [dbo].[tb_pais] ([IdPais]),
    CONSTRAINT [FK_Aca_estudiante_tb_persona] FOREIGN KEY ([IdPersona]) REFERENCES [dbo].[tb_persona] ([IdPersona])
);



