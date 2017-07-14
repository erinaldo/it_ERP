﻿CREATE VIEW [dbo].[vwImp_OrdenCompraExt_X_CbteCble]
AS
SELECT     dbo.ct_cbtecble.cb_Observacion, dbo.ct_cbtecble.cb_Estado, dbo.ct_cbtecble.cb_Fecha, dbo.ct_cbtecble.CodCbteCble, dbo.ct_cbtecble.IdCbteCble, 
                      dbo.ct_cbtecble_tipo.tc_TipoCbte, dbo.ct_cbtecble.cb_Valor, dbo.imp_ordencompra_ext_x_ct_cbtecble.imp_IdOrdenCompraExt, 
                      dbo.imp_ordencompra_ext_x_ct_cbtecble.imp_IdSucusal, dbo.imp_ordencompra_ext_x_ct_cbtecble.imp_IdEmpresa, 
                      dbo.imp_ordencompra_ext_x_ct_cbtecble.TipoReg, dbo.imp_ordencompra_ext_x_ct_cbtecble.ct_IdTipoCbte
FROM         dbo.imp_ordencompra_ext_x_ct_cbtecble INNER JOIN
                      dbo.ct_cbtecble ON dbo.imp_ordencompra_ext_x_ct_cbtecble.imp_IdEmpresa = dbo.ct_cbtecble.IdEmpresa AND 
                      dbo.imp_ordencompra_ext_x_ct_cbtecble.ct_IdEmpresa = dbo.ct_cbtecble.IdEmpresa AND 
                      dbo.imp_ordencompra_ext_x_ct_cbtecble.ct_IdCbteCble = dbo.ct_cbtecble.IdCbteCble AND 
                      dbo.imp_ordencompra_ext_x_ct_cbtecble.ct_IdTipoCbte = dbo.ct_cbtecble.IdTipoCbte INNER JOIN
                      dbo.ct_cbtecble_tipo ON dbo.ct_cbtecble.IdTipoCbte = dbo.ct_cbtecble_tipo.IdTipoCbte




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[2] 3) )"
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
         Begin Table = "ct_cbtecble"
            Begin Extent = 
               Top = 6
               Left = 644
               Bottom = 223
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ct_cbtecble_tipo"
            Begin Extent = 
               Top = 0
               Left = 1035
               Bottom = 119
               Right = 1195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "imp_ordencompra_ext_x_ct_cbtecble"
            Begin Extent = 
               Top = 11
               Left = 224
               Bottom = 188
               Right = 469
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwImp_OrdenCompraExt_X_CbteCble';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwImp_OrdenCompraExt_X_CbteCble';

