CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_resumen] (
    [IdEmpresa]        INT          NOT NULL,
    [IdPreFacturacion] NUMERIC (18) NOT NULL,
    [secuencia]        INT          NOT NULL,
    CONSTRAINT [PK_fa_pre_facturacion_det_resumen] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdPreFacturacion] ASC, [secuencia] ASC),
    CONSTRAINT [FK_fa_pre_facturacion_det_resumen_fa_pre_facturacion] FOREIGN KEY ([IdEmpresa], [IdPreFacturacion]) REFERENCES [Fj_servindustrias].[fa_pre_facturacion] ([IdEmpresa], [IdPreFacturacion])
);

