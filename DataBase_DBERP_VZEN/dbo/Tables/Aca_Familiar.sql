﻿CREATE TABLE [dbo].[Aca_Familiar] (
    [IdInstitucion]          INT           NOT NULL,
    [IdFamiliar]             NUMERIC (18)  NOT NULL,
    [cod_familiar]           VARCHAR (50)  NOT NULL,
    [IdPersona]              NUMERIC (18)  NOT NULL,
    [IdNivelEducativo_cat]   VARCHAR (35)  NULL,
    [Titulo]                 VARCHAR (250) NULL,
    [OcupacionLaboral]       VARCHAR (250) NULL,
    [empresa_donde_trabaja]  VARCHAR (250) NULL,
    [empresa_direccion]      VARCHAR (250) NULL,
    [empresa_telefono]       VARCHAR (250) NULL,
    [empresa_email]          VARCHAR (150) NULL,
    [direccion_domicilio]    VARCHAR (250) NULL,
    [Calle_Principal]        VARCHAR (250) NULL,
    [Calle_Secundaria]       VARCHAR (250) NULL,
    [Sector_Urbanizacion]    VARCHAR (250) NULL,
    [IdCiudad]               VARCHAR (25)  NULL,
    [PoseeDiscapacidad]      BIT           NULL,
    [ViveFueraDelPais]       BIT           NULL,
    [Fallecido]              BIT           NULL,
    [IdCatalogoIdiomaNativo] VARCHAR (35)  NULL,
    [IdCatalogoTipoSangre]   VARCHAR (35)  NULL,
    [IdCatalogoReligion]     VARCHAR (35)  NULL,
    [FueExAlumnoGraduado]    BIT           NULL,
    [FechaCreacion]          DATETIME      NULL,
    [FechaModificacion]      DATETIME      CONSTRAINT [DF_Aca_Familiar_FechaModificacion] DEFAULT (getdate()) NULL,
    [UsuarioCreacion]        VARCHAR (50)  NULL,
    [UsuarioModificacion]    VARCHAR (50)  NULL,
    CONSTRAINT [PK_Aca_Familiar] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdFamiliar] ASC),
    CONSTRAINT [FK_Aca_Familiar_Aca_Catalogo] FOREIGN KEY ([IdNivelEducativo_cat]) REFERENCES [dbo].[Aca_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Aca_Familiar_Aca_Catalogo1] FOREIGN KEY ([IdCatalogoIdiomaNativo]) REFERENCES [dbo].[Aca_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Aca_Familiar_Aca_Catalogo2] FOREIGN KEY ([IdCatalogoTipoSangre]) REFERENCES [dbo].[Aca_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Aca_Familiar_Aca_Catalogo3] FOREIGN KEY ([IdCatalogoReligion]) REFERENCES [dbo].[Aca_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Aca_Familiar_Aca_Institucion] FOREIGN KEY ([IdInstitucion]) REFERENCES [dbo].[Aca_Institucion] ([IdInstitucion]),
    CONSTRAINT [FK_Aca_Familiar_tb_ciudad] FOREIGN KEY ([IdCiudad]) REFERENCES [dbo].[tb_ciudad] ([IdCiudad]),
    CONSTRAINT [FK_Aca_Familiar_tb_persona] FOREIGN KEY ([IdPersona]) REFERENCES [dbo].[tb_persona] ([IdPersona])
);





