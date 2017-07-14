CREATE TABLE [Fj_servindustrias].[fa_pre_facturacion_det_poliza] (
    [IdEmpresa]        INT          NOT NULL,
    [IdPreFacturacion] NUMERIC (18) NOT NULL,
    [secuencia]        INT          NOT NULL,
    [IdEmpresa_pol]    INT          NOT NULL,
    [IdPoliza_pol]     NUMERIC (18) NOT NULL,
    [cod_couta_pol]    VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_fa_pre_facturacion_det_poliza] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdPreFacturacion] ASC, [secuencia] ASC),
    CONSTRAINT [FK_fa_pre_facturacion_det_poliza_fa_pre_facturacion] FOREIGN KEY ([IdEmpresa], [IdPreFacturacion]) REFERENCES [Fj_servindustrias].[fa_pre_facturacion] ([IdEmpresa], [IdPreFacturacion])
);

