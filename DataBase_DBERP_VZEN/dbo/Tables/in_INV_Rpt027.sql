﻿CREATE TABLE [dbo].[in_INV_Rpt027] (
    [IdEmpresa]      INT          NOT NULL,
    [IdSucursal]     INT          NOT NULL,
    [IdBodega]       INT          NOT NULL,
    [IdProducto]     NUMERIC (18) NOT NULL,
    [IdUsuario]      VARCHAR (20) NOT NULL,
    [Saldo_ini_cant] FLOAT (53)   NOT NULL,
    [Saldo_ini_cost] FLOAT (53)   NOT NULL,
    [Saldo_fin_cant] FLOAT (53)   NOT NULL,
    [Saldo_fin_cost] FLOAT (53)   NOT NULL,
    [mov_ing_cant]   FLOAT (53)   NOT NULL,
    [mov_ing_cost]   FLOAT (53)   NOT NULL,
    [mov_egr_cant]   FLOAT (53)   NOT NULL,
    [mov_egr_cost]   FLOAT (53)   NOT NULL,
    CONSTRAINT [PK_in_INV_Rpt027] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdBodega] ASC, [IdProducto] ASC, [IdUsuario] ASC)
);

