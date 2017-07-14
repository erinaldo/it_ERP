﻿CREATE VIEW dbo.vwin_movi_inve_x_estado_contabilizacion
AS
SELECT        dbo.in_movi_inve.IdEmpresa, dbo.in_movi_inve.IdSucursal, dbo.tb_sucursal.codigo AS cod_sucursal, dbo.tb_sucursal.Su_Descripcion AS nom_sucursal, 
                         dbo.in_movi_inve.IdBodega, dbo.tb_bodega.cod_bodega, dbo.tb_bodega.bo_Descripcion AS nom_bodega, dbo.in_movi_inve.IdMovi_inven_tipo, 
                         dbo.in_movi_inven_tipo.tm_descripcion AS nom_tipo_movi, dbo.in_movi_inve.cm_fecha, dbo.in_movi_inve.IdNumMovi, dbo.in_movi_inve.cm_tipo, 
                         dbo.in_movi_inve.cm_observacion, dbo.in_movi_inve_x_ct_cbteCble.IdEmpresa_ct, dbo.in_movi_inve_x_ct_cbteCble.IdTipoCbte, 
                         dbo.in_movi_inve_x_ct_cbteCble.IdCbteCble, CASE WHEN in_movi_inve_x_ct_cbteCble.IdEmpresa_ct IS NULL 
                         THEN 'NO CONTABILIZADO' ELSE 'CONTABILIZADO' END AS Estado_contabilizacion
FROM            dbo.in_movi_inve_x_ct_cbteCble RIGHT OUTER JOIN
                         dbo.in_movi_inve INNER JOIN
                         dbo.in_movi_inven_tipo ON dbo.in_movi_inve.IdEmpresa = dbo.in_movi_inven_tipo.IdEmpresa AND 
                         dbo.in_movi_inve.IdMovi_inven_tipo = dbo.in_movi_inven_tipo.IdMovi_inven_tipo ON 
                         dbo.in_movi_inve_x_ct_cbteCble.IdEmpresa = dbo.in_movi_inve.IdEmpresa AND dbo.in_movi_inve_x_ct_cbteCble.IdSucursal = dbo.in_movi_inve.IdSucursal AND 
                         dbo.in_movi_inve_x_ct_cbteCble.IdBodega = dbo.in_movi_inve.IdBodega AND 
                         dbo.in_movi_inve_x_ct_cbteCble.IdMovi_inven_tipo = dbo.in_movi_inve.IdMovi_inven_tipo AND 
                         dbo.in_movi_inve_x_ct_cbteCble.IdNumMovi = dbo.in_movi_inve.IdNumMovi LEFT OUTER JOIN
                         dbo.tb_sucursal INNER JOIN
                         dbo.tb_bodega ON dbo.tb_sucursal.IdEmpresa = dbo.tb_bodega.IdEmpresa AND dbo.tb_sucursal.IdSucursal = dbo.tb_bodega.IdSucursal ON 
                         dbo.in_movi_inve.IdEmpresa = dbo.tb_bodega.IdEmpresa AND dbo.in_movi_inve.IdSucursal = dbo.tb_bodega.IdSucursal AND 
                         dbo.in_movi_inve.IdBodega = dbo.tb_bodega.IdBodega
WHERE        (dbo.in_movi_inve.Estado = 'A') AND (dbo.in_movi_inven_tipo.Genera_Diario_Contable = 1) AND (dbo.in_movi_inve.IdEmpresa_x_Anu IS NULL)
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_movi_inve_x_estado_contabilizacion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_movi_inve_x_estado_contabilizacion';


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
         Begin Table = "in_movi_inve_x_ct_cbteCble"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "in_movi_inve"
            Begin Extent = 
               Top = 6
               Left = 285
               Bottom = 135
               Right = 548
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "in_movi_inven_tipo"
            Begin Extent = 
               Top = 6
               Left = 586
               Bottom = 135
               Right = 801
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_sucursal"
            Begin Extent = 
               Top = 6
               Left = 839
               Bottom = 135
               Right = 1069
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_bodega"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 299
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
         Or = 1350', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwin_movi_inve_x_estado_contabilizacion';

