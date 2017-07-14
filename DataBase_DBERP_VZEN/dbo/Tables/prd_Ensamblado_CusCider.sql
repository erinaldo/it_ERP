﻿CREATE TABLE [dbo].[prd_Ensamblado_CusCider] (
    [IdEmpresa]        INT            NOT NULL,
    [IdSucursal]       INT            NOT NULL,
    [IdEnsamblado]     NUMERIC (18)   NOT NULL,
    [IdBodega]         INT            NOT NULL,
    [IdGrupoTrabajo]   NUMERIC (18)   NOT NULL,
    [IdProducto]       NUMERIC (18)   NOT NULL,
    [CodigoBarra]      NVARCHAR (100) NULL,
    [CodObra]          VARCHAR (20)   NOT NULL,
    [IdOrdenTaller]    NUMERIC (18)   NOT NULL,
    [IdUsuario]        VARCHAR (20)   NOT NULL,
    [IdUsuarioAnu]     VARCHAR (20)   NULL,
    [MotivoAnu]        VARCHAR (100)  NULL,
    [IdUsuarioUltModi] VARCHAR (20)   NULL,
    [FechaAnu]         DATETIME       NULL,
    [FechaTransac]     DATETIME       NOT NULL,
    [FechaUltModi]     DATETIME       NULL,
    [Estado]           CHAR (1)       NOT NULL,
    [Observacion]      VARCHAR (1000) NULL,
    [IdDespacho]       NUMERIC (18)   NULL,
    CONSTRAINT [PK_prd_Ensamblado_CusCider] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdSucursal] ASC, [IdEnsamblado] ASC),
    CONSTRAINT [FK_prd_Ensamblado_CusCider_prd_Ensamblado_CusCider] FOREIGN KEY ([IdEmpresa], [IdProducto]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto]),
    CONSTRAINT [FK_prd_Ensamblado_CusCider_prd_Orden_Taller] FOREIGN KEY ([IdEmpresa], [IdSucursal], [IdOrdenTaller]) REFERENCES [dbo].[prd_Orden_Taller] ([IdEmpresa], [IdSucursal], [IdOrdenTaller])
);





