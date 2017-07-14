﻿CREATE VIEW Fj_servindustrias.vwro_empleado_x_parametro_x_pago_variable
AS
SELECT        Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa, Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo, 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado, Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.Estado, 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdUsuario, Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.Fecha_Transaccion, 
                         dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, dbo.tb_persona.pe_nombreCompleto, dbo.tb_persona.pe_cedulaRuc
FROM            Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable INNER JOIN
                         dbo.ro_empleado_x_ro_tipoNomina ON 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpresa = dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdEmpleado = dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado AND 
                         Fj_servindustrias.ro_empleado_x_parametro_x_pago_variable.IdNomina_Tipo = dbo.ro_empleado_x_ro_tipoNomina.IdTipoNomina INNER JOIN
                         dbo.ro_empleado ON dbo.ro_empleado_x_ro_tipoNomina.IdEmpresa = dbo.ro_empleado.IdEmpresa AND 
                         dbo.ro_empleado_x_ro_tipoNomina.IdEmpleado = dbo.ro_empleado.IdEmpleado INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'Fj_servindustrias', @level1type = N'VIEW', @level1name = N'vwro_empleado_x_parametro_x_pago_variable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[84] 4[5] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ro_empleado_x_parametro_x_pago_variable (Fj_servindustrias)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 279
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "tb_persona"
            Begin Extent = 
               Top = 90
               Left = 670
               Bottom = 397
               Right = 902
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ro_empleado_x_ro_tipoNomina"
            Begin Extent = 
               Top = 0
               Left = 452
               Bottom = 129
               Right = 661
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ro_empleado"
            Begin Extent = 
               Top = 131
               Left = 339
               Bottom = 260
               Right = 628
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'Fj_servindustrias', @level1type = N'VIEW', @level1name = N'vwro_empleado_x_parametro_x_pago_variable';

