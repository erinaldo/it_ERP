﻿CREATE TABLE [dbo].[tb_empresa] (
    [IdEmpresa]               INT            NOT NULL,
    [codigo]                  VARCHAR (50)   NOT NULL,
    [em_nombre]               NVARCHAR (50)  NOT NULL,
    [RazonSocial]             VARCHAR (300)  NOT NULL,
    [NombreComercial]         VARCHAR (300)  NOT NULL,
    [ContribuyenteEspecial]   VARCHAR (5)    NOT NULL,
    [ObligadoAllevarConta]    VARCHAR (2)    NOT NULL,
    [em_ruc]                  NVARCHAR (13)  NOT NULL,
    [em_gerente]              NVARCHAR (50)  NULL,
    [em_contador]             NVARCHAR (150) NULL,
    [em_rucContador]          NVARCHAR (20)  NULL,
    [em_telefonos]            VARCHAR (100)  NULL,
    [em_fax]                  CHAR (20)      NULL,
    [em_notificacion]         INT            NULL,
    [em_direccion]            VARCHAR (300)  NOT NULL,
    [em_tel_int]              VARCHAR (50)   NULL,
    [em_logo]                 IMAGE          NULL,
    [em_fondo]                IMAGE          NULL,
    [em_fechaInicioContable]  DATETIME       NOT NULL,
    [Estado]                  CHAR (1)       NOT NULL,
    [em_fechaInicioActividad] DATETIME       NULL,
    [cod_entidad_dinardap]    VARCHAR (50)   NULL,
    [em_Email] [varchar](300) NULL,
    CONSTRAINT [PK_tb_empresa] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC)
);



