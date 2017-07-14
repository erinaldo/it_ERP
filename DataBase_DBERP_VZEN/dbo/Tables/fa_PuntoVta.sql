﻿CREATE TABLE [dbo].[fa_PuntoVta] (
    [IdEmpresa]    INT           NOT NULL,
    [IdSucursal]   INT           NOT NULL,
    [IdPuntoVta]   INT           NOT NULL,
    [cod_PuntoVta] VARCHAR (50)  NOT NULL,
    [nom_PuntoVta] VARCHAR (150) NOT NULL,
    [estado]       BIT           NOT NULL,
    [IdBodega]     INT           NULL,
    CONSTRAINT [PK_fa_PuntoVta] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdPuntoVta] ASC),
    CONSTRAINT [FK_fa_PuntoVta_tb_sucursal] FOREIGN KEY ([IdEmpresa], [IdSucursal]) REFERENCES [dbo].[tb_sucursal] ([IdEmpresa], [IdSucursal])
);



