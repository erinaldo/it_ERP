﻿CREATE TABLE [dbo].[tb_sis_reporte] (
    [CodReporte]               VARCHAR (50)    NOT NULL,
    [Nombre]                   VARCHAR (150)   NOT NULL,
    [NombreCorto]              VARCHAR (150)   NOT NULL,
    [Modulo]                   VARCHAR (20)    NOT NULL,
    [VistaRpt]                 VARCHAR (50)    NOT NULL,
    [Formulario]               VARCHAR (50)    NOT NULL,
    [Class_NomReporte]         VARCHAR (50)    NULL,
    [nom_Asembly]              VARCHAR (50)    NULL,
    [Orden]                    INT             NOT NULL,
    [Observacion]              TEXT            NULL,
    [imagen]                   IMAGE           NULL,
    [VersionActual]            INT             NULL,
    [Tipo_Balance]             VARCHAR (10)    NULL,
    [SQuery]                   VARCHAR (MAX)   NULL,
    [Class_Info]               VARCHAR (50)    NULL,
    [Class_Bus]                VARCHAR (50)    NULL,
    [Class_Data]               VARCHAR (50)    NOT NULL,
    [IdGrupo_Reporte]          INT             NULL,
    [se_Muestra_Admin_Reporte] BIT             NULL,
    [Estado]                   CHAR (1)        NULL,
    [Store_proce_rpt]          VARCHAR (50)    NULL,
    [Disenio_reporte]          VARBINARY (MAX) NULL,
    CONSTRAINT [PK_tb_sis_reporte] PRIMARY KEY CLUSTERED ([CodReporte] ASC),
    CONSTRAINT [FK_tb_sis_reporte_tb_modulo] FOREIGN KEY ([Modulo]) REFERENCES [dbo].[tb_modulo] ([CodModulo]),
    CONSTRAINT [FK_tb_sis_reporte_tb_sis_reporte_Grupo] FOREIGN KEY ([IdGrupo_Reporte]) REFERENCES [dbo].[tb_sis_reporte_Grupo] ([IdGrupo_Reporte])
);





