﻿CREATE VIEW [dbo].[vwin_Transferencia_x_Ing_Egr_Inven]
AS
SELECT        trans.IdEmpresa, trans.IdSucursalOrigen, trans.IdBodegaOrigen, trans.IdTransferencia, trans.IdSucursalDest, trans.IdBodegaDest, trans.tr_Observacion, 
                         trans.tr_fecha, trans.IdEmpresa_Ing_Egr_Inven_Origen, trans.IdSucursal_Ing_Egr_Inven_Origen, trans.IdNumMovi_Ing_Egr_Inven_Origen, 
                         trans.IdEmpresa_Ing_Egr_Inven_Destino, trans.IdSucursal_Ing_Egr_Inven_Destino, trans.IdNumMovi_Ing_Egr_Inven_Destino, trans.Estado, 
                         inv_Origen.IdMovi_inven_tipo AS IdMovi_inven_tipo_Origen, inv_Origen.IdMotivo_Inv AS IdMotivo_Inv_Origen, 
                         inv_Destino.IdMovi_inven_tipo AS IdMovi_inven_tipo_Destino, inv_Destino.IdMotivo_Inv AS IdMotivo_Inv_Destino, trans.Codigo
FROM            dbo.in_transferencia AS trans INNER JOIN
                         dbo.in_Ing_Egr_Inven AS inv_Origen ON trans.IdEmpresa_Ing_Egr_Inven_Origen = inv_Origen.IdEmpresa AND 
                         trans.IdSucursal_Ing_Egr_Inven_Origen = inv_Origen.IdSucursal AND trans.IdNumMovi_Ing_Egr_Inven_Origen = inv_Origen.IdNumMovi INNER JOIN
                         dbo.in_Ing_Egr_Inven AS inv_Destino ON trans.IdEmpresa_Ing_Egr_Inven_Destino = inv_Destino.IdEmpresa AND 
                         trans.IdSucursal_Ing_Egr_Inven_Destino = inv_Destino.IdSucursal AND trans.IdNumMovi_Ing_Egr_Inven_Destino = inv_Destino.IdNumMovi



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
         Begin Table = "trans"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 21
         End
         Begin Table = "inv_Origen"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "inv_Destino"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 301
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_Transferencia_x_Ing_Egr_Inven';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_Transferencia_x_Ing_Egr_Inven';

