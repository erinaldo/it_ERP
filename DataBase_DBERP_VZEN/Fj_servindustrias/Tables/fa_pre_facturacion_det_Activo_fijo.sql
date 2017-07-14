CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_Activo_fijo] (
    [IdEmpresa]        INT          NOT NULL,
    [IdPreFacturacion] NUMERIC (18) NOT NULL,
    [IdActivoFijo]     INT          NOT NULL,
    CONSTRAINT [PK_fa_pre_facturacion_det_Activo_fijo] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdPreFacturacion] ASC, [IdActivoFijo] ASC),
   -- CONSTRAINT [FK_fa_pre_facturacion_det_Activo_fijo_fa_pre_facturacion] FOREIGN KEY ([IdEmpresa], [IdPreFacturacion]) REFERENCES [Fj_servindustrias].[fa_pre_facturacion] ([IdEmpresa], [IdPreFacturacion])
);

