﻿CREATE VIEW dbo.vwcxc_cobros_x_vta_nota_x_RetFuente
AS
SELECT        A.IdEmpresa, A.IdSucursal, B.IdBodega_Cbte, A.IdCobro, B.IdCbte_vta_nota, SUM(B.dc_ValorPago) AS dc_ValorPago, C.ESRetenFTE, C.IdCobro_tipo, 
                         C.tc_descripcion, AVG(C.PorcentajeRet) AS PorcentajeRet, A.cr_fecha, A.cr_fechaDocu, A.cr_fechaCobro, SUM(B.dc_ValorPago) / (AVG(C.PorcentajeRet) / 100) AS Base,
                          A.cr_NumDocumento, B.dc_TipoDocumento
FROM            dbo.cxc_cobro_det AS B INNER JOIN
                         dbo.cxc_cobro AS A ON B.IdEmpresa = A.IdEmpresa AND B.IdSucursal = A.IdSucursal AND B.IdCobro = A.IdCobro INNER JOIN
                         dbo.cxc_cobro_tipo AS C ON A.IdCobro_tipo = C.IdCobro_tipo
WHERE        (A.cr_estado = 'A')
GROUP BY A.IdEmpresa, A.IdSucursal, B.IdBodega_Cbte, B.IdCbte_vta_nota, C.ESRetenFTE, C.IdCobro_tipo, C.tc_descripcion, A.cr_fecha, A.cr_fechaDocu, A.cr_fechaCobro, 
                         A.cr_NumDocumento, A.IdCobro, B.dc_TipoDocumento
HAVING        (C.ESRetenFTE = 'S')





GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[10] 2[8] 3) )"
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
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 320
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 207
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 17
               Left = 586
               Bottom = 198
               Right = 823
            End
            DisplayFlags = 280
            TopColumn = 15
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcxc_cobros_x_vta_nota_x_RetFuente';




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcxc_cobros_x_vta_nota_x_RetFuente';

