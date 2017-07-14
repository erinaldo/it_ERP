﻿


CREATE view [dbo].[vwROL_Rpt005] as 

SELECT
dbo.tb_persona.pe_cedulaRuc AS CedulaRuc, dbo.tb_persona.pe_nombreCompleto AS NombreCompleto, dbo.ro_empleado.IdEmpleado, 
                         dbo.ro_prestamo.IdPrestamo, dbo.ro_prestamo.IdEmpresa, dbo.ro_prestamo.IdNomina_Tipo, dbo.ro_Nomina_Tipo.Descripcion AS NominaDescripcion, 
                         dbo.ro_prestamo.Estado AS EstadoPrestamo, dbo.ro_prestamo.Fecha, dbo.ro_prestamo.MontoSol, dbo.ro_prestamo.TasaInteres, dbo.ro_prestamo.TotalPrestamo, 
                         dbo.ro_prestamo.NumCuotas, dbo.ro_prestamo.Observacion, dbo.ro_prestamo_detalle.NumCuota, dbo.ro_prestamo_detalle.SaldoInicial, 
                         dbo.ro_prestamo_detalle.Interes, dbo.ro_prestamo_detalle.AbonoCapital, dbo.ro_prestamo_detalle.TotalCuota, dbo.ro_prestamo_detalle.Saldo, 
                         dbo.ro_prestamo_detalle.FechaPago, dbo.ro_prestamo_detalle.EstadoPago, dbo.ro_prestamo_detalle.Observacion_det AS ObservacionCuota, 
                         dbo.ro_rubro_tipo.ru_descripcion AS RubroDescripcion, dbo.ro_empleado.em_codigo AS CodigoEmpleado, dbo.tb_persona.pe_apellido, dbo.tb_persona.pe_nombre, 
                         dbo.ro_catalogo.ca_descripcion
FROM            dbo.ro_empleado INNER JOIN
                         dbo.tb_persona ON dbo.ro_empleado.IdPersona = dbo.tb_persona.IdPersona INNER JOIN
                         dbo.ro_prestamo ON dbo.ro_empleado.IdEmpresa = dbo.ro_prestamo.IdEmpresa AND dbo.ro_empleado.IdEmpresa = dbo.ro_prestamo.IdEmpresa AND 
                         dbo.ro_empleado.IdEmpleado = dbo.ro_prestamo.IdEmpleado INNER JOIN
                         dbo.ro_prestamo_detalle ON dbo.ro_prestamo.IdEmpresa = dbo.ro_prestamo_detalle.IdEmpresa AND 
                         dbo.ro_prestamo.IdPrestamo = dbo.ro_prestamo_detalle.IdPrestamo INNER JOIN
                         dbo.ro_Nomina_Tipo ON dbo.ro_prestamo.IdEmpresa = dbo.ro_Nomina_Tipo.IdEmpresa AND 
                         dbo.ro_prestamo.IdNomina_Tipo = dbo.ro_Nomina_Tipo.IdNomina_Tipo INNER JOIN
                         dbo.ro_rubro_tipo ON dbo.ro_prestamo.IdRubro = dbo.ro_rubro_tipo.IdRubro AND dbo.ro_prestamo.IdEmpresa = dbo.ro_rubro_tipo.IdEmpresa INNER JOIN
                         dbo.ro_catalogo ON dbo.ro_prestamo.IdMotivo_Prestamo = dbo.ro_catalogo.CodCatalogo
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[12] 2[5] 3) )"
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
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ro_empleado"
            Begin Extent = 
               Top = 7
               Left = 289
               Bottom = 255
               Right = 552
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_persona"
            Begin Extent = 
               Top = 14
               Left = 8
               Bottom = 212
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ro_prestamo"
            Begin Extent = 
               Top = 0
               Left = 716
               Bottom = 249
               Right = 925
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ro_prestamo_detalle"
            Begin Extent = 
               Top = 13
               Left = 997
               Bottom = 211
               Right = 1206
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "ro_Nomina_Tipo"
            Begin Extent = 
               Top = 150
               Left = 1058
               Bottom = 279
               Right = 1267
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ro_rubro_tipo"
            Begin Extent = 
               Top = 142
               Left = 450
               Bottom = 291
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ro_Tipo_Prestamo"
            Begin Extent = 
               Top = 176
               Left = 800
               Bottom = 352
               Right = 1009', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwROL_Rpt005';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
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
      Begin ColumnWidths = 27
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1275
         Width = 1020
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2295
         Alias = 2655
         Table = 2085
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwROL_Rpt005';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwROL_Rpt005';

