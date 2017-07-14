﻿CREATE TABLE [dbo].[in_categorias] (
    [IdEmpresa]                 INT           NOT NULL,
    [IdCategoria]               VARCHAR (25)  NOT NULL,
    [ca_Categoria]              VARCHAR (100) NOT NULL,
    [IdCategoriaPadre]          VARCHAR (25)  NULL,
    [ca_Posicion]               INT           NOT NULL,
    [ca_indexIcono]             INT           NOT NULL,
    [Estado]                    CHAR (1)      NOT NULL,
    [ca_nivel]                  INT           NOT NULL,
    [RutaPadre]                 VARCHAR (500) NOT NULL,
    [IdCtaCtble_Inve]           VARCHAR (20)  NULL,
    [IdCtaCtble_Costo]          VARCHAR (20)  NULL,
    [IdCentro_Costo_Inventario] VARCHAR (20)  NULL,
    [IdCentro_Costo_Costo]      VARCHAR (20)  NULL,
    [IdUsuario]                 VARCHAR (20)  NOT NULL,
    [Fecha_Transac]             DATETIME      NOT NULL,
    [nom_pc]                    VARCHAR (50)  NULL,
    [ip]                        VARCHAR (25)  NULL,
    [MotiAnula]                 VARCHAR (200) NULL,
    [IdUsuarioUltMod]           VARCHAR (20)  NULL,
    [Fecha_UltMod]              DATETIME      NULL,
    [IdUsuarioUltAnu]           VARCHAR (20)  NULL,
    [Fecha_UltAnu]              DATETIME      NULL,
    [MotivoAnulacion]           VARCHAR (50)  NULL,
    [cod_categoria]             VARCHAR (50)  NULL,
    CONSTRAINT [PK_in_categorias] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCategoria] ASC),
    CONSTRAINT [FK_in_categorias_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);



