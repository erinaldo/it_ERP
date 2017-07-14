CREATE TABLE [dbo].[ro_implemento_Trabajador_Tipo] (
    [IdEmpresa]        INT           NOT NULL,
    [IdTipoImplemento] INT           NOT NULL,
    [descripcion]      VARCHAR (150) NOT NULL,
    [Estado]           CHAR (1)      NOT NULL,
    CONSTRAINT [PK_ro_implemento_Trabajador_Tipo] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdTipoImplemento] ASC)
);

