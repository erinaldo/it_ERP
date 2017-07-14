﻿CREATE VIEW [dbo].[vwcxc_conciliacion_Det_Anticipo]
AS
SELECT        conDet.IdEmpresa, conDet.IdSucursal, conDet.IdConciliacion, conDet.IdCobro, AntCru.IdCobro_cobro, AntCru.IdAnticipo, conDet.IdBodega_nt AS IdBodega, 
                         AntCru.Fecha, AntCru.Observacion, AntCru.pe_apellido, AntCru.pe_nombre, AntCru.IdCobro_tipo, AntCru.cr_Banco, AntCru.cr_NumDocumento, AntCru.IdCaja, 
                         conDet.Valor_Aplicado AS cr_TotalCobro, conDet.Saldo_por_aplicar AS Saldo_Pendiente, conDet.IdTipoConciliacion, conCab.IdCliente
FROM            dbo.cxc_conciliacion AS conCab INNER JOIN
                         dbo.cxc_conciliacion_det AS conDet ON conCab.IdEmpresa = conDet.IdEmpresa AND conCab.IdSucursal = conDet.IdSucursal AND 
                         conCab.IdConciliacion = conDet.IdConciliacion INNER JOIN
                         dbo.vwcxc_anticipos_x_cruzar AS AntCru ON conDet.IdTipoConciliacion = 'ANT_CLI' AND AntCru.IdCobro_cobro = conDet.IdCobro AND 
                         AntCru.IdEmpresa_Cobro = conDet.IdEmpresa_cbr AND AntCru.IdSucursal_cobro = conDet.IdSucursal_cbr




GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[11] 2[40] 3) )"
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
         Begin Table = "conCab"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conDet"
            Begin Extent = 
               Top = 6
               Left = 285
               Bottom = 135
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AntCru"
            Begin Extent = 
               Top = 6
               Left = 532
               Bottom = 135
               Right = 741
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcxc_conciliacion_Det_Anticipo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwcxc_conciliacion_Det_Anticipo';

