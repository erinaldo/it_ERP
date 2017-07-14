﻿CREATE TABLE [dbo].[Aca_Documento_Bancario_x_Rep_Economico] (
    [IdInstitucion]         INT           NOT NULL,
    [IdFamiliar]            NUMERIC (18)  NOT NULL,
    [IdParentesco_cat]      VARCHAR (35)  NOT NULL,
    [IdDocumento_Bancario]  INT           NOT NULL,
    [Id_tipo_meca_pago]     INT           NOT NULL,
    [Id_tb_banco_x_mgbanco] INT           NOT NULL,
    [IdBanco]               INT           NULL,
    [Tipo_documento_cat]    VARCHAR (10)  NULL,
    [Numero_Documento]      VARCHAR (50)  NULL,
    [Fecha_Expiracion]      DATETIME      NULL,
    [Observacion]           VARCHAR (200) NOT NULL,
    [IdUsuario]             VARCHAR (20)  NULL,
    [Fecha_Transac]         DATETIME      NULL,
    [IdUsuarioUltMod]       VARCHAR (20)  NULL,
    [Fecha_UltMod]          DATETIME      NULL,
    [IdUsuarioUltAnu]       VARCHAR (20)  NULL,
    [Fecha_UltAnu]          DATETIME      NULL,
    [Nom_pc]                VARCHAR (200) NULL,
    [Ip]                    VARCHAR (25)  NULL,
    [Motivo_anulacion]      VARCHAR (100) NULL,
    [Estado]                BIT           NULL,
    CONSTRAINT [PK_Aca_Documento_Bancario_x_Rep_Economico_1] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdFamiliar] ASC, [IdParentesco_cat] ASC, [IdDocumento_Bancario] ASC),
    CONSTRAINT [FK_Aca_Documento_Bancario_x_Rep_Economico_Aca_Catalogo] FOREIGN KEY ([IdParentesco_cat]) REFERENCES [dbo].[Aca_Catalogo] ([IdCatalogo]),
    CONSTRAINT [FK_Aca_Documento_Bancario_x_Rep_Economico_Aca_Familiar] FOREIGN KEY ([IdInstitucion], [IdFamiliar]) REFERENCES [dbo].[Aca_Familiar] ([IdInstitucion], [IdFamiliar]),
    CONSTRAINT [FK_Aca_Documento_Bancario_x_Rep_Economico_Aca_Tipo_Mecanismo_Pago] FOREIGN KEY ([Id_tipo_meca_pago]) REFERENCES [dbo].[Aca_Tipo_Mecanismo_Pago] ([Id_tipo_meca_pago]),
    CONSTRAINT [FK_Aca_Documento_Bancario_x_Rep_Economico_tb_banco] FOREIGN KEY ([IdBanco]) REFERENCES [dbo].[tb_banco] ([IdBanco]),
    CONSTRAINT [FK_Aca_Documento_Bancario_x_Rep_Economico_tb_banco_x_mg_banco] FOREIGN KEY ([Id_tb_banco_x_mgbanco]) REFERENCES [CAH].[tb_banco_x_mg_banco] ([Id_tb_banco_x_mgbanco])
);







GO



GO


GO


GO


GO


GO


GO
