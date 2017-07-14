﻿CREATE TABLE [dbo].[Aca_Rubro] (
    [IdInstitucion]       INT           NOT NULL,
    [IdRubro]             INT           NOT NULL,
    [IdSede]              INT           NULL,
    [IdEmpresa_inv]       INT           NULL,
    [IdProducto_inv]      NUMERIC (18)  NULL,
    [CodRubro]            VARCHAR (50)  NULL,
    [CodAlterno]          VARCHAR (50)  NOT NULL,
    [Descripcion_rubro]   VARCHAR (250) NOT NULL,
    [IdTipoRubro]         INT           NOT NULL,
    [IdGrupoFE]           INT           NULL,
    [IdCtaCble]           VARCHAR (20)  NULL,
    [estado]              CHAR (1)      NOT NULL,
    [deb_cred]            CHAR (1)      NOT NULL,
    [IdTipoServicio_cata] VARCHAR (35)  NOT NULL,
    [FechaModificacion]   DATETIME      NULL,
    [FechaCreacion]       DATETIME      NULL,
    [UsuarioModificacion] VARCHAR (50)  NULL,
    [UsuarioCreacion]     VARCHAR (50)  NULL,
    [FechaAnulacion]      DATETIME      NULL,
    [UsuarioAnulacion]    VARCHAR (50)  NULL,
    [MotivoAnulacion]     VARCHAR (150) NULL,
    [IdEmpresa_ct]        INT           NULL,
    [IdCentroCosto_ct]    VARCHAR (20)  NULL,
    CONSTRAINT [PK_Aca_Rubro] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdRubro] ASC),
    CONSTRAINT [FK_Aca_Rubro_Aca_Catalogo] FOREIGN KEY ([IdTipoServicio_cata]) REFERENCES [dbo].[Aca_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Aca_Rubro_Aca_Institucion] FOREIGN KEY ([IdInstitucion]) REFERENCES [dbo].[Aca_Institucion] ([IdInstitucion]),
    CONSTRAINT [FK_Aca_Rubro_Aca_Rubro_Tipo] FOREIGN KEY ([IdTipoRubro]) REFERENCES [dbo].[Aca_Rubro_Tipo] ([IdTipoRubro]),
    CONSTRAINT [FK_Aca_Rubro_Aca_Sede] FOREIGN KEY ([IdSede]) REFERENCES [dbo].[Aca_Sede] ([IdSede]),
    CONSTRAINT [FK_Aca_Rubro_ct_centro_costo] FOREIGN KEY ([IdEmpresa_ct], [IdCentroCosto_ct]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_Aca_Rubro_in_Producto] FOREIGN KEY ([IdEmpresa_inv], [IdProducto_inv]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto])
);













