﻿CREATE view vwPRO_CUS_CID_Rpt001
as 
SELECT     dbo.in_movi_inve_detalle_x_Producto_CusCider.IdEmpresa, dbo.in_movi_inve_detalle_x_Producto_CusCider.IdSucursal, 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdBodega, dbo.in_movi_inve_detalle_x_Producto_CusCider.IdMovi_inven_tipo, 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdNumMovi, dbo.in_movi_inve_detalle_x_Producto_CusCider.mv_Secuencia, 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.Secuencia, dbo.in_movi_inve_detalle_x_Producto_CusCider.IdProducto, 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.CodigoBarra, dbo.in_movi_inve_detalle_x_Producto_CusCider.mv_tipo_movi, 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.dm_cantidad, dbo.in_movi_inve_detalle_x_Producto_CusCider.dm_observacion, 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.dm_precio, dbo.in_movi_inve_detalle_x_Producto_CusCider.mv_costo, dbo.in_Producto.pr_descripcion, 
                      dbo.in_Producto.pr_observacion, dbo.in_movi_inve.Fecha_Transac
FROM         dbo.in_movi_inve_detalle_x_Producto_CusCider INNER JOIN
                      dbo.in_Producto ON dbo.in_movi_inve_detalle_x_Producto_CusCider.IdEmpresa = dbo.in_Producto.IdEmpresa AND 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdProducto = dbo.in_Producto.IdProducto INNER JOIN
                      dbo.in_movi_inve ON dbo.in_movi_inve_detalle_x_Producto_CusCider.IdEmpresa = dbo.in_movi_inve.IdEmpresa AND 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdSucursal = dbo.in_movi_inve.IdSucursal AND 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdBodega = dbo.in_movi_inve.IdBodega AND 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdMovi_inven_tipo = dbo.in_movi_inve.IdMovi_inven_tipo AND 
                      dbo.in_movi_inve_detalle_x_Producto_CusCider.IdNumMovi = dbo.in_movi_inve.IdNumMovi 




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[4] 2[4] 3) )"
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
         Begin Table = "com_cotizacion_compra"
            Begin Extent = 
               Top = 18
               Left = 0
               Bottom = 147
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "com_cotizacion_compra_det"
            Begin Extent = 
               Top = 22
               Left = 399
               Bottom = 151
               Right = 608
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_sucursal"
            Begin Extent = 
               Top = 55
               Left = 635
               Bottom = 184
               Right = 865
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "in_Producto"
            Begin Extent = 
               Top = 48
               Left = 626
               Bottom = 177
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwcom_ListadoMateriales_Detalle"
            Begin Extent = 
               Top = 112
               Left = 315
               Bottom = 241
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cp_proveedor"
            Begin Extent = 
               Top = 166
               Left = 330
               Bottom = 454
               Right = 551
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
     ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwPRO_CUS_CID_Rpt001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'    Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwPRO_CUS_CID_Rpt001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwPRO_CUS_CID_Rpt001';

