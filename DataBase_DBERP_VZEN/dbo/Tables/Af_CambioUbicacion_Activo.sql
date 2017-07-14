﻿CREATE TABLE [dbo].[Af_CambioUbicacion_Activo] (
    [IdEmpresa]                           INT           NOT NULL,
    [IdCambioUbicacion]                   INT           NOT NULL,
    [IdActivoFijo]                        INT           NOT NULL,
    [IdSucursal_Actu]                     INT           NULL,
    [IdDepartamento_Actu]                 INT           NULL,
    [IdCentroCosto_Actu]                  VARCHAR (20)  NULL,
    [IdTipoCatalogo_Ubicacion_Actu]       VARCHAR (35)  NULL,
    [IdSucursal_Ant]                      INT           NULL,
    [IdDepartamento_Ant]                  INT           NULL,
    [IdTipoCatalogo_Ubicacion_Ant]        VARCHAR (35)  NULL,
    [IdCentroCosto_Ant]                   VARCHAR (20)  NULL,
    [FechaCambio]                         DATETIME      NOT NULL,
    [MotivoCambio]                        VARCHAR (500) NOT NULL,
    [IdUsuario]                           VARCHAR (20)  NULL,
    [nom_pc]                              VARCHAR (50)  NULL,
    [ip]                                  VARCHAR (25)  NULL,
    [Af_ValorUnidad_Actu]                 FLOAT (53)    NULL,
    [IdUnidadFact_cat]                    VARCHAR (50)  NULL,
    [IdEncargado_Ant]                     DECIMAL (18)  NULL,
    [IdEncargado_Actu]                    DECIMAL (18)  NULL,
    [IdCentroCosto_sub_centro_costo_Actu] VARCHAR (20)  NULL,
    [IdCentroCosto_sub_centro_costo_Ant]  VARCHAR (20)  NULL,
    CONSTRAINT [PK_Af_CambioUbicacion_Activo] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdCambioUbicacion] ASC),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_Af_Activo_fijo] FOREIGN KEY ([IdEmpresa], [IdActivoFijo]) REFERENCES [dbo].[Af_Activo_fijo] ([IdEmpresa], [IdActivoFijo]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_Af_Catalogo] FOREIGN KEY ([IdTipoCatalogo_Ubicacion_Actu]) REFERENCES [dbo].[Af_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_Af_Catalogo1] FOREIGN KEY ([IdTipoCatalogo_Ubicacion_Ant]) REFERENCES [dbo].[Af_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_Af_Departamento] FOREIGN KEY ([IdEmpresa], [IdDepartamento_Actu]) REFERENCES [dbo].[Af_Departamento] ([IdEmpresa], [IdDepartamento]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_Af_Departamento1] FOREIGN KEY ([IdEmpresa], [IdDepartamento_Ant]) REFERENCES [dbo].[Af_Departamento] ([IdEmpresa], [IdDepartamento]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_ct_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto_Actu]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_ct_centro_costo1] FOREIGN KEY ([IdEmpresa], [IdCentroCosto_Ant]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal_Actu]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal]),
    CONSTRAINT [FK_Af_CambioUbicacion_Activo_tb_sucursal1] FOREIGN KEY ([IdEmpresa], [IdSucursal_Ant]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);



