﻿CREATE TABLE [dbo].[Aca_matricula] (
    [IdInstitucion]           INT           NOT NULL,
    [IdSede]                  INT           NOT NULL,
    [IdMatricula]             NUMERIC (18)  NOT NULL,
    [CodMatricula]            VARCHAR (50)  NOT NULL,
    [Fecha_matricula]         DATE          NOT NULL,
    [IdEstudiante]            NUMERIC (18)  NOT NULL,
    [IdAnioLectivo]           INT           NOT NULL,
    [IdFamiliar_repre_legal]  NUMERIC (18)  NULL,
    [IdFamiliar_repre_econ]   NUMERIC (18)  NULL,
    [Observacion]             VARCHAR (250) NOT NULL,
    [estado]                  CHAR (1)      NOT NULL,
    [IdParalelo]              INT           NOT NULL,
    [Si_estoy_deacuerdo_foto] BIT           NOT NULL,
    [Cod_convivencia_doy_fe]  BIT           NOT NULL,
    [No_estoy_deacuerdo_foto] BIT           NOT NULL,
    [tiene_seguro]            BIT           NULL,
    [FechaCreacion]           DATETIME      NOT NULL,
    [FechaModificacion]       DATETIME      NULL,
    [FechaAnulacion]          DATETIME      NULL,
    [UsuarioCreacion]         VARCHAR (50)  NOT NULL,
    [UsuarioModificacion]     VARCHAR (50)  NULL,
    [UsuarioAnulacion]        VARCHAR (50)  NULL,
    [MotivoAnulacion]         VARCHAR (150) NULL,
    [IdPersonaFacturar]       DECIMAL (18)  NULL,
    CONSTRAINT [PK_Aca_matricula] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdSede] ASC, [IdMatricula] ASC),
    CONSTRAINT [FK_Aca_matricula_Aca_Anio_Lectivo] FOREIGN KEY ([IdInstitucion], [IdAnioLectivo]) REFERENCES [dbo].[Aca_Anio_Lectivo] ([IdInstitucion], [IdAnioLectivo]),
    CONSTRAINT [FK_Aca_matricula_Aca_estudiante] FOREIGN KEY ([IdInstitucion], [IdEstudiante]) REFERENCES [dbo].[Aca_estudiante] ([IdInstitucion], [IdEstudiante]),
    CONSTRAINT [FK_Aca_matricula_Aca_Familiar] FOREIGN KEY ([IdInstitucion], [IdFamiliar_repre_legal]) REFERENCES [dbo].[Aca_Familiar] ([IdInstitucion], [IdFamiliar]),
    CONSTRAINT [FK_Aca_matricula_Aca_Familiar1] FOREIGN KEY ([IdInstitucion], [IdFamiliar_repre_econ]) REFERENCES [dbo].[Aca_Familiar] ([IdInstitucion], [IdFamiliar]),
    CONSTRAINT [FK_Aca_matricula_Aca_matricula] FOREIGN KEY ([IdInstitucion], [IdSede], [IdMatricula]) REFERENCES [dbo].[Aca_matricula] ([IdInstitucion], [IdSede], [IdMatricula]),
    CONSTRAINT [FK_Aca_matricula_Aca_Paralelo] FOREIGN KEY ([IdParalelo]) REFERENCES [dbo].[Aca_Paralelo] ([IdParalelo])
);











