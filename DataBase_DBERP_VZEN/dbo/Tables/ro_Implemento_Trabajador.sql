CREATE TABLE [dbo].[ro_Implemento_Trabajador] (
    [IdEmpresa]        INT           NOT NULL,
    [IdImplemento]     NUMERIC (18)  NOT NULL,
    [descripcion]      VARCHAR (250) NOT NULL,
    [IdProducto_Inv]   NUMERIC (18)  NULL,
    [IdTipoImplemento] INT           NOT NULL,
    [FechaCompra]      DATETIME      NOT NULL,
    [CostoCompra]      FLOAT (53)    NOT NULL,
    [Estado]           CHAR (1)      NOT NULL,
    [Maneja_Invent]    BIT           NULL,
    CONSTRAINT [PK_ro_Implemento_Trabajador] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdImplemento] ASC),
    CONSTRAINT [FK_ro_Implemento_Trabajador_in_Producto] FOREIGN KEY ([IdEmpresa], [IdProducto_Inv]) REFERENCES [dbo].[in_Producto] ([IdEmpresa], [IdProducto]),
    CONSTRAINT [FK_ro_Implemento_Trabajador_ro_implemento_Trabajador_Tipo] FOREIGN KEY ([IdEmpresa], [IdTipoImplemento]) REFERENCES [dbo].[ro_implemento_Trabajador_Tipo] ([IdEmpresa], [IdTipoImplemento]),
    CONSTRAINT [FK_ro_Implemento_Trabajador_tb_empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[tb_empresa] ([IdEmpresa])
);



