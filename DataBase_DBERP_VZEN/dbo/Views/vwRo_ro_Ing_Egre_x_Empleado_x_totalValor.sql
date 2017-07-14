﻿CREATE VIEW [dbo].[vwRo_ro_Ing_Egre_x_Empleado_x_totalValor]
AS
SELECT     dbo.ro_Ing_Egre_x_Empleado.IdEmpresa, dbo.ro_Ing_Egre_x_Empleado.IdEmpleado, dbo.ro_Ing_Egre_x_Empleado.IdNomina_Tipo, 
                      dbo.ro_Ing_Egre_x_Empleado.IdNomina_TipoLiqui, dbo.ro_Ing_Egre_x_Empleado.IdPeriodo, dbo.ro_Ing_Egre_x_Empleado.IdRubro, 
                      SUM(dbo.ro_Ing_Egre_x_Empleado.Valor) AS Valor
FROM         dbo.ro_Ing_Egre_x_Empleado INNER JOIN
                      dbo.vwro_empleadoXdepXcargo ON dbo.ro_Ing_Egre_x_Empleado.IdEmpresa = dbo.vwro_empleadoXdepXcargo.IdEmpresa
WHERE     (dbo.ro_Ing_Egre_x_Empleado.Unid_Medida = '$$$')
GROUP BY dbo.ro_Ing_Egre_x_Empleado.IdEmpresa, dbo.ro_Ing_Egre_x_Empleado.IdEmpleado, dbo.ro_Ing_Egre_x_Empleado.IdNomina_Tipo, 
                      dbo.ro_Ing_Egre_x_Empleado.IdNomina_TipoLiqui, dbo.ro_Ing_Egre_x_Empleado.IdPeriodo, dbo.ro_Ing_Egre_x_Empleado.IdRubro




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "ro_Ing_Egre_x_Empleado"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 213
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwro_empleadoXdepXcargo"
            Begin Extent = 
               Top = 0
               Left = 591
               Bottom = 194
               Right = 859
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRo_ro_Ing_Egre_x_Empleado_x_totalValor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRo_ro_Ing_Egre_x_Empleado_x_totalValor';

