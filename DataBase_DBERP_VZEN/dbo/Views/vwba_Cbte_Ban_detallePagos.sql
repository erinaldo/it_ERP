﻿CREATE VIEW [dbo].[vwba_Cbte_Ban_detallePagos]
AS
SELECT     og.IdEmpresa, og.IdCbteCble_Ogiro, og.co_fechaOg, og.co_observacion, og.co_valorpagar, og_p.MontoAplicado pg_MontoAplicado, og_p.SaldoAnterior pg_saldoAnterior
, og.IdProveedor, 
                      og_p.IdCbteCble_pago IdCbteCble_cbte, og_p.IdTipoCbte_pago IdTipocbte_cbte, og.IdTipoCbte_Ogiro, og.co_factura AS NFactura, p.pr_nombre AS Proveedor, p.pr_girar_cheque_a AS GiraCheque, 
                      p.IdCtaCble_CXP AS CtaProveedor, og_p.IdCancelacion, og_p.IdEmpresa_op IdEmpresa_cbte
FROM         dbo.cp_orden_pago_cancelaciones AS og_p INNER JOIN
                      dbo.cp_orden_giro AS og ON og_p.IdEmpresa_cxp = og.IdEmpresa AND og_p.IdCbteCble_cxp = og.IdCbteCble_Ogiro AND 
                      og_p.IdTipoCbte_cxp = og.IdTipoCbte_Ogiro INNER JOIN
                      dbo.cp_proveedor AS p ON og.IdEmpresa = p.IdEmpresa AND og.IdProveedor = p.IdProveedor




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[15] 2[29] 3) )"
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
         Begin Table = "og_p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "og"
            Begin Extent = 
               Top = 6
               Left = 253
               Bottom = 125
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwba_Cbte_Ban_detallePagos';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwba_Cbte_Ban_detallePagos';

