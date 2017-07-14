create VIEW dbo.vwRo_Archivos_Bancos_Generacion
AS

SELECT        dbo.ro_Nomina_Tipo.Descripcion, dbo.ro_Nomina_Tipoliqui.DescripcionProcesoNomina, dbo.ro_Division.Descripcion AS Descripcion_Division, 
                         dbo.ro_periodo.pe_FechaIni, dbo.ro_periodo.pe_FechaFin, dbo.ro_archivos_bancos_generacion.IdEmpresa, dbo.ro_archivos_bancos_generacion.IdArchivo, 
                         dbo.ro_archivos_bancos_generacion.IdNomina, dbo.ro_archivos_bancos_generacion.IdNominaTipo, dbo.ro_archivos_bancos_generacion.IdPeriodo, 
                         dbo.ro_archivos_bancos_generacion.IdBanco, dbo.ro_archivos_bancos_generacion.IdDivision, dbo.ro_archivos_bancos_generacion.Cod_Empresa, 
                         dbo.ro_archivos_bancos_generacion.Nom_Archivo, dbo.ro_archivos_bancos_generacion.archivo, dbo.ro_archivos_bancos_generacion.estado, 
                         dbo.ro_archivos_bancos_generacion.IdUsuario, dbo.ro_archivos_bancos_generacion.Fecha_Transac, dbo.ro_archivos_bancos_generacion.MotiAnula, 
                         dbo.tb_banco.ba_descripcion, dbo.tb_banco.CodigoLegal, dbo.ro_archivos_bancos_generacion.IdBanco_Acredita, 
                         dbo.ro_archivos_bancos_generacion.IdProceso_Bancario, dbo.vwRo_Archivos_Bancos_Generacion_total_archivo.Valor
FROM            dbo.ro_Nomina_Tipo INNER JOIN
                         dbo.ro_Nomina_Tipoliqui ON dbo.ro_Nomina_Tipo.IdEmpresa = dbo.ro_Nomina_Tipoliqui.IdEmpresa AND 
                         dbo.ro_Nomina_Tipo.IdNomina_Tipo = dbo.ro_Nomina_Tipoliqui.IdNomina_Tipo INNER JOIN
                         dbo.ro_archivos_bancos_generacion ON dbo.ro_Nomina_Tipoliqui.IdNomina_TipoLiqui = dbo.ro_archivos_bancos_generacion.IdNominaTipo AND 
                         dbo.ro_Nomina_Tipoliqui.IdEmpresa = dbo.ro_archivos_bancos_generacion.IdEmpresa AND 
                         dbo.ro_Nomina_Tipoliqui.IdNomina_Tipo = dbo.ro_archivos_bancos_generacion.IdNomina INNER JOIN
                         dbo.ro_periodo ON dbo.ro_archivos_bancos_generacion.IdEmpresa = dbo.ro_periodo.IdEmpresa AND 
                         dbo.ro_archivos_bancos_generacion.IdPeriodo = dbo.ro_periodo.IdPeriodo INNER JOIN
                         dbo.tb_banco ON dbo.ro_archivos_bancos_generacion.IdBanco = dbo.tb_banco.IdBanco INNER JOIN
                         dbo.vwRo_Archivos_Bancos_Generacion_total_archivo ON 
                         dbo.ro_archivos_bancos_generacion.IdEmpresa = dbo.vwRo_Archivos_Bancos_Generacion_total_archivo.IdEmpresa AND 
                         dbo.ro_archivos_bancos_generacion.IdArchivo = dbo.vwRo_Archivos_Bancos_Generacion_total_archivo.IdArchivo LEFT OUTER JOIN
                         dbo.ro_Division ON dbo.ro_archivos_bancos_generacion.IdDivision = dbo.ro_Division.IdDivision AND 
                         dbo.ro_archivos_bancos_generacion.IdEmpresa = dbo.ro_Division.IdEmpresa



