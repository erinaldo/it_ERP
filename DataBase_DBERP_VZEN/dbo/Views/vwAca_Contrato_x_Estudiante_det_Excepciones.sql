
CREATE view vwAca_Contrato_x_Estudiante_det_Excepciones
as
SELECT  ISNULL(row_number() over( order by dbo.Aca_Contrato_x_Estudiante.IdInstitucion),0) as IdRow, dbo.Aca_Contrato_x_Estudiante.IdInstitucion, dbo.Aca_Contrato_x_Estudiante.IdEstudiante, dbo.Aca_Contrato_x_Estudiante.IdContrato, dbo.Aca_Contrato_x_Estudiante_det.IdRubro, 
                         dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion_Per, dbo.Aca_Contrato_x_Estudiante_det.IdAnioLectivo_Per, dbo.Aca_Contrato_x_Estudiante_det.IdPeriodo_Per, dbo.Aca_Rubro.Descripcion_rubro, 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.Valor, dbo.Aca_Anio_Lectivo.Descripcion, dbo.Aca_periodo.pe_FechaIni, dbo.Aca_periodo.pe_FechaFin, det.IdEmpresa, det.IdDescuento, 
                         dbo.fa_descuento.de_nombre AS descuento, CASE WHEN det.IdDescuento IS NULL THEN 0 ELSE 1 END AS TieneDescuento, CASE WHEN det.IdDescuento IS NULL THEN NULL 
                         ELSE fa_descuento.de_nombre END AS nom_descuento, det.ValorExepcion, det.porcentaje_excepcion, det.IdExepcion, det.estado
FROM            dbo.Aca_Contrato_x_Estudiante_det_Excepcion AS det LEFT OUTER JOIN
                         dbo.fa_descuento ON det.IdEmpresa = dbo.fa_descuento.IdEmpresa AND det.IdDescuento = dbo.fa_descuento.IdDescuento RIGHT OUTER JOIN
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo INNER JOIN
                         dbo.Aca_periodo ON dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdInstitucion_per = dbo.Aca_periodo.IdInstitucion AND dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdAnioLectivo = dbo.Aca_periodo.IdAnioLectivo AND 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdPeriodo = dbo.Aca_periodo.IdPeriodo INNER JOIN
                         dbo.Aca_Anio_Lectivo INNER JOIN
                         dbo.Aca_Contrato_x_Estudiante ON dbo.Aca_Anio_Lectivo.IdInstitucion = dbo.Aca_Contrato_x_Estudiante.IdInstitucion AND 
                         dbo.Aca_Anio_Lectivo.IdAnioLectivo = dbo.Aca_Contrato_x_Estudiante.IdAnioLectivo INNER JOIN
                         dbo.Aca_Contrato_x_Estudiante_det ON dbo.Aca_Contrato_x_Estudiante.IdContrato = dbo.Aca_Contrato_x_Estudiante_det.IdContrato AND 
                         dbo.Aca_Contrato_x_Estudiante.IdInstitucion = dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion ON 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdInstitucion_rub = dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion AND 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdRubro = dbo.Aca_Contrato_x_Estudiante_det.IdRubro AND 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdInstitucion_per = dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion_Per AND 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdAnioLectivo = dbo.Aca_Contrato_x_Estudiante_det.IdAnioLectivo_Per AND 
                         dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdPeriodo = dbo.Aca_Contrato_x_Estudiante_det.IdPeriodo_Per INNER JOIN
                         dbo.Aca_Rubro ON dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdRubro = dbo.Aca_Rubro.IdRubro AND dbo.Aca_Rubro_x_Aca_Periodo_Lectivo.IdInstitucion_rub = dbo.Aca_Rubro.IdInstitucion ON 
                         det.IdInstitucion = dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion AND det.IdContrato = dbo.Aca_Contrato_x_Estudiante_det.IdContrato AND det.IdRubro = dbo.Aca_Contrato_x_Estudiante_det.IdRubro AND 
                         det.IdInstitucion_Per = dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion_Per AND det.IdAnioLectivo_Per = dbo.Aca_Contrato_x_Estudiante_det.IdAnioLectivo_Per AND 
                         det.IdPeriodo_Per = dbo.Aca_Contrato_x_Estudiante_det.IdPeriodo_Per
WHERE        (dbo.Aca_Contrato_x_Estudiante_det.IdContrato NOT IN
                             (SELECT        IdContrato
                               FROM            dbo.Aca_Contrato_x_Estudiante_det_Excepcion AS Bec
                               WHERE        (dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion = IdContrato) AND (dbo.Aca_Contrato_x_Estudiante_det.IdInstitucion = IdInstitucion) AND (dbo.Aca_Contrato_x_Estudiante_det.IdRubro = IdRubro) 
                                                         AND (dbo.Aca_Contrato_x_Estudiante_det.IdAnioLectivo_Per = IdAnioLectivo_Per) AND (dbo.Aca_Contrato_x_Estudiante_det.IdPeriodo_Per = IdPeriodo_Per)))
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwAca_Contrato_x_Estudiante_det_Excepciones';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'               Right = 1218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aca_periodo"
            Begin Extent = 
               Top = 159
               Left = 1346
               Bottom = 322
               Right = 1590
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
      Begin ColumnWidths = 22
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1560
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1836
         Alias = 1728
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwAca_Contrato_x_Estudiante_det_Excepciones';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[10] 2[12] 3) )"
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
         Begin Table = "fa_descuento"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 290
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "det"
            Begin Extent = 
               Top = 0
               Left = 338
               Bottom = 353
               Right = 582
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Aca_Anio_Lectivo"
            Begin Extent = 
               Top = 326
               Left = 1329
               Bottom = 489
               Right = 1573
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aca_Rubro"
            Begin Extent = 
               Top = 0
               Left = 1329
               Bottom = 163
               Right = 1573
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aca_Contrato_x_Estudiante_det"
            Begin Extent = 
               Top = 0
               Left = 674
               Bottom = 363
               Right = 918
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aca_Contrato_x_Estudiante"
            Begin Extent = 
               Top = 170
               Left = 985
               Bottom = 333
               Right = 1203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aca_Rubro_x_Aca_Periodo_Lectivo"
            Begin Extent = 
               Top = 0
               Left = 974
               Bottom = 163
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwAca_Contrato_x_Estudiante_det_Excepciones';

