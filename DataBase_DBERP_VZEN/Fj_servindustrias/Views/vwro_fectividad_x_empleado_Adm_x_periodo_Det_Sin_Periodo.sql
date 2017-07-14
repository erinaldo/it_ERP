CREATE VIEW [Fj_servindustrias].[vwro_fectividad_x_empleado_Adm_x_periodo_Det_Sin_Periodo]
AS
SELECT        Fj_servindustrias.ro_parametro_x_pago_variable_Det.Idempresa, Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdNomina_Tipo, 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable, Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdRubro, 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.Secuencia, Fj_servindustrias.ro_parametro_x_pago_variable_Det.Meta, 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.Real, Fj_servindustrias.ro_parametro_x_pago_variable_Det.Cumplimiento, 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.Variable_porcentaje_prorrateado, dbo.ro_rubro_tipo.ru_descripcion, 
                         Fj_servindustrias.ro_Grupo_empleado.Valor_bono, dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, dbo.tb_persona.pe_cedulaRuc, 
                         dbo.ro_empleado.IdEmpleado
FROM            Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det INNER JOIN
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable ON 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo AND
                          Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpleado = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo AND
                          Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpleado = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo AND
                          Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpleado = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo AND
                          Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpleado = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo AND
                          Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpleado = Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado INNER
                          JOIN
                         Fj_servindustrias.ro_parametro_x_pago_variable ON 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable
                          AND Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable
                          AND Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable
                          AND Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable
                          AND Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable
                          INNER JOIN
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det ON 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Idempresa AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Idempresa AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Idempresa AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdEmpresa = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Idempresa AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.IdNomina_Tipo = Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdNomina_Tipo AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable.Id_Tipo_Pago_Variable = Fj_servindustrias.ro_parametro_x_pago_variable_Det.Id_Tipo_Pago_Variable INNER JOIN
                         dbo.ro_rubro_tipo ON Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdRubro = dbo.ro_rubro_tipo.IdRubro AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdRubro = dbo.ro_rubro_tipo.IdRubro AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdRubro = dbo.ro_rubro_tipo.IdRubro AND 
                         Fj_servindustrias.ro_parametro_x_pago_variable_Det.IdRubro = dbo.ro_rubro_tipo.IdRubro INNER JOIN
                         dbo.ro_empleado_x_ro_tipoNomina ON 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa = dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado = dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo = dbo.ro_empleado_x_ro_tipoNomina.IdTipoNomina AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa = dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado = dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo = dbo.ro_empleado_x_ro_tipoNomina.IdTipoNomina AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa = dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado = dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo = dbo.ro_empleado_x_ro_tipoNomina.IdTipoNomina INNER JOIN
                         dbo.ro_empleado ON dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado = dbo.ro_empleado.IdEmpleado AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado = dbo.ro_empleado.IdEmpleado AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado = dbo.ro_empleado.IdEmpleado AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado = dbo.ro_empleado.IdEmpleado AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado = dbo.ro_empleado.IdEmpleado INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona AND dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona AND 
                         dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona AND dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona AND 
                         dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona AND dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona INNER JOIN
                         Fj_servindustrias.ro_Grupo_empleado ON dbo.ro_empleado.IdEmpresa = Fj_servindustrias.ro_Grupo_empleado.IdEmpresa AND 
                         dbo.ro_empleado.IdGrupo = Fj_servindustrias.ro_Grupo_empleado.IdGrupo

GO