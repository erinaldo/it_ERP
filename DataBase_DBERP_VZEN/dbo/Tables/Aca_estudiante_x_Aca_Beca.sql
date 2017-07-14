CREATE TABLE [dbo].[Aca_estudiante_x_Aca_Beca] (
    [IdInstitucion]     INT          NOT NULL,
    [IdEstudiante]      NUMERIC (18) NOT NULL,
    [IdBeca1]           INT          NULL,
    [IdBeca2]           INT          NULL,
    [IdBeca3]           INT          NULL,
    [FechaEmisionBeca1] DATETIME     NULL,
    [FechaEmisionBeca2] DATETIME     NULL,
    [FechaEmisionBeca3] DATETIME     NULL,
    CONSTRAINT [PK_Aca_estudiante_x_Aca_Beca] PRIMARY KEY CLUSTERED ([IdInstitucion] ASC, [IdEstudiante] ASC),
    CONSTRAINT [FK_Aca_estudiante_x_Aca_Beca_Aca_Beca] FOREIGN KEY ([IdInstitucion], [IdBeca1]) REFERENCES [dbo].[Aca_Beca] ([IdInstitucion], [IdBeca]),
    CONSTRAINT [FK_Aca_estudiante_x_Aca_Beca_Aca_Beca1] FOREIGN KEY ([IdInstitucion], [IdBeca2]) REFERENCES [dbo].[Aca_Beca] ([IdInstitucion], [IdBeca]),
    CONSTRAINT [FK_Aca_estudiante_x_Aca_Beca_Aca_Beca2] FOREIGN KEY ([IdInstitucion], [IdBeca3]) REFERENCES [dbo].[Aca_Beca] ([IdInstitucion], [IdBeca]),
    CONSTRAINT [FK_Aca_estudiante_x_Aca_Beca_Aca_estudiante] FOREIGN KEY ([IdInstitucion], [IdEstudiante]) REFERENCES [dbo].[Aca_estudiante] ([IdInstitucion], [IdEstudiante])
);

