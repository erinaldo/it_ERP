﻿CREATE TABLE [dbo].[in_Ing_Egr_Inven] (
    [IdEmpresa]                      INT            NOT NULL,
    [IdSucursal]                     INT            NOT NULL,
    [IdMovi_inven_tipo]              INT            NOT NULL,
    [IdNumMovi]                      NUMERIC (18)   NOT NULL,
    [IdBodega]                       INT            NULL,
    [signo]                          CHAR (1)       NOT NULL,
    [CodMoviInven]                   VARCHAR (25)   NOT NULL,
    [cm_observacion]                 VARCHAR (1000) NOT NULL,
    [cm_fecha]                       DATETIME       NOT NULL,
    [IdUsuario]                      VARCHAR (20)   NULL,
    [Estado]                         CHAR (1)       NOT NULL,
    [IdCentroCosto]                  VARCHAR (20)   NULL,
    [IdCentroCosto_sub_centro_costo] VARCHAR (20)   NULL,
    [MotivoAnulacion]                VARCHAR (100)  NULL,
    [IdMotivo_oc]                    INT            NULL,
    [Fecha_Transac]                  DATETIME       NULL,
    [IdUsuarioUltModi]               VARCHAR (20)   NULL,
    [Fecha_UltMod]                   DATETIME       NULL,
    [IdusuarioUltAnu]                VARCHAR (20)   NULL,
    [Fecha_UltAnu]                   DATETIME       NULL,
    [nom_pc]                         VARCHAR (50)   NULL,
    [ip]                             VARCHAR (30)   NULL,
    [IdMotivo_Inv]                   INT            NULL,
    [IdResponsable]                  NUMERIC (18)   NULL,
    CONSTRAINT [PK_in_Ing_Egr_Inven] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdMovi_inven_tipo] ASC, [IdNumMovi] ASC),
    CONSTRAINT [FK_in_Ing_Egr_Inven_com_Motivo_Orden_Compra] FOREIGN KEY ([IdEmpresa], [IdMotivo_oc]) REFERENCES [dbo].[com_Motivo_Orden_Compra] ([IdEmpresa], [IdMotivo]),
    CONSTRAINT [FK_in_Ing_Egr_Inven_ct_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto]) REFERENCES [dbo].[ct_centro_costo] ([IdEmpresa], [IdCentroCosto]),
    CONSTRAINT [FK_in_Ing_Egr_Inven_ct_centro_costo_sub_centro_costo] FOREIGN KEY ([IdEmpresa], [IdCentroCosto], [IdCentroCosto_sub_centro_costo]) REFERENCES [dbo].[ct_centro_costo_sub_centro_costo] ([IdEmpresa], [IdCentroCosto], [IdCentroCosto_sub_centro_costo]),
    CONSTRAINT [FK_in_Ing_Egr_Inven_in_Motivo_Inven] FOREIGN KEY ([IdEmpresa], [IdMotivo_Inv]) REFERENCES [dbo].[in_Motivo_Inven] ([IdEmpresa], [IdMotivo_Inv]),
    CONSTRAINT [FK_in_Ing_Egr_Inven_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);



