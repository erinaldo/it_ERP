﻿CREATE TABLE [dbo].[ro_Ing_Egre_x_Empleado] (
    [IdEmpresa]          INT           NOT NULL,
    [IdEmpleado]         NUMERIC (18)  NOT NULL,
    [IdNomina_Tipo]      INT           NOT NULL,
    [IdNomina_TipoLiqui] INT           NOT NULL,
    [IdPeriodo]          INT           NOT NULL,
    [IdRubro]            VARCHAR (50)  NOT NULL,
    [IdNovedad]          NUMERIC (18)  NOT NULL,
    [SecuenciaNovedad]   INT           NOT NULL,
    [IdPrestamo]         NUMERIC (18)  NOT NULL,
    [NunCouta]           NUMERIC (18)  NOT NULL,
    [IngEgr]             CHAR (1)      NOT NULL,
    [Valor]              FLOAT (53)    NOT NULL,
    [iAnio]              INT           NOT NULL,
    [iMes]               INT           NOT NULL,
    [cerrado]            CHAR (1)      NOT NULL,
    [observacionesSys]   VARCHAR (500) NULL,
    [TipoRegistro]       CHAR (3)      NULL,
    [Unid_Medida]        VARCHAR (5)   NULL,
    CONSTRAINT [PK_ro_Ing_Egre_x_Empleado] PRIMARY KEY CLUSTERED ([IdEmpresa] ASC, [IdEmpleado] ASC, [IdNomina_Tipo] ASC, [IdNomina_TipoLiqui] ASC, [IdPeriodo] ASC, [IdRubro] ASC, [IdNovedad] ASC, [SecuenciaNovedad] ASC, [IdPrestamo] ASC, [NunCouta] ASC),
    CONSTRAINT [FK_ro_Ing_Egre_x_Empleado_ro_empleado] FOREIGN KEY ([IdEmpresa], [IdEmpleado]) REFERENCES [dbo].[ro_empleado] ([IdEmpresa], [IdEmpleado]),
    CONSTRAINT [FK_ro_Ing_Egre_x_Empleado_ro_Nomina_Tipoliqui] FOREIGN KEY ([IdEmpresa], [IdNomina_Tipo], [IdNomina_TipoLiqui]) REFERENCES [dbo].[ro_Nomina_Tipoliqui] ([IdEmpresa], [IdNomina_Tipo], [IdNomina_TipoLiqui]),
    CONSTRAINT [FK_ro_Ing_Egre_x_Empleado_ro_periodo] FOREIGN KEY ([IdEmpresa], [IdPeriodo]) REFERENCES [dbo].[ro_periodo] ([IdEmpresa], [IdPeriodo])
);







