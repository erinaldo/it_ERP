﻿CREATE VIEW dbo.vwin_devolucion_inven_det_cantidad_devuelta
AS
SELECT        dbo.in_devolucion_inven_det.IdEmpresa, dbo.in_devolucion_inven_det.IdEmpresa_movi_inv, dbo.in_devolucion_inven_det.IdSucursal_movi_inv, 
                         dbo.in_devolucion_inven_det.IdBodega_movi_inv, dbo.in_devolucion_inven_det.IdMovi_inven_tipo_movi_inv, dbo.in_devolucion_inven_det.IdNumMovi_movi_inv, 
                         dbo.in_devolucion_inven_det.Secuencia_movi_inv, SUM(dbo.in_devolucion_inven_det.cantidad_a_devolver) AS cantidad_devuelta
FROM            dbo.in_devolucion_inven_det INNER JOIN
                         dbo.in_movi_inve_detalle ON dbo.in_devolucion_inven_det.IdEmpresa_movi_inv = dbo.in_movi_inve_detalle.IdEmpresa AND 
                         dbo.in_devolucion_inven_det.IdSucursal_movi_inv = dbo.in_movi_inve_detalle.IdSucursal AND 
                         dbo.in_devolucion_inven_det.IdBodega_movi_inv = dbo.in_movi_inve_detalle.IdBodega AND 
                         dbo.in_devolucion_inven_det.IdMovi_inven_tipo_movi_inv = dbo.in_movi_inve_detalle.IdMovi_inven_tipo AND 
                         dbo.in_devolucion_inven_det.IdNumMovi_movi_inv = dbo.in_movi_inve_detalle.IdNumMovi AND 
                         dbo.in_devolucion_inven_det.Secuencia_movi_inv = dbo.in_movi_inve_detalle.Secuencia
GROUP BY dbo.in_devolucion_inven_det.IdEmpresa, dbo.in_devolucion_inven_det.IdEmpresa_movi_inv, dbo.in_devolucion_inven_det.IdSucursal_movi_inv, 
                         dbo.in_devolucion_inven_det.IdBodega_movi_inv, dbo.in_devolucion_inven_det.IdMovi_inven_tipo_movi_inv, dbo.in_devolucion_inven_det.IdNumMovi_movi_inv, 
                         dbo.in_devolucion_inven_det.Secuencia_movi_inv
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_devolucion_inven_det_cantidad_devuelta';


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
         Begin Table = "in_devolucion_inven_det"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "in_movi_inve_detalle"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 317
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_devolucion_inven_det_cantidad_devuelta';

