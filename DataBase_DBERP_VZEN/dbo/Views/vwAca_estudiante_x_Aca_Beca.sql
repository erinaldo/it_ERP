create view [dbo].[vwAca_estudiante_x_Aca_Beca]
as
SELECT        Aca_estudiante_x_Aca_Beca.IdInstitucion, Aca_estudiante_x_Aca_Beca.IdEstudiante, Aca_estudiante_x_Aca_Beca.IdBeca1, Aca_Beca_1.nom_beca AS nom_beca1, 
                         Aca_estudiante_x_Aca_Beca.FechaEmisionBeca1, Aca_estudiante_x_Aca_Beca.IdBeca2, Aca_Beca_2.nom_beca AS nom_beca2, 
                         Aca_estudiante_x_Aca_Beca.FechaEmisionBeca2, Aca_estudiante_x_Aca_Beca.IdBeca3, Aca_Beca_3.nom_beca AS nom_beca3, 
                         Aca_estudiante_x_Aca_Beca.FechaEmisionBeca3
FROM            Aca_estudiante_x_Aca_Beca INNER JOIN
                         Aca_estudiante ON Aca_estudiante_x_Aca_Beca.IdInstitucion = Aca_estudiante.IdInstitucion AND 
                         Aca_estudiante_x_Aca_Beca.IdEstudiante = Aca_estudiante.IdEstudiante LEFT OUTER JOIN
                         Aca_Beca AS Aca_Beca_3 ON Aca_estudiante_x_Aca_Beca.IdInstitucion = Aca_Beca_3.IdInstitucion AND 
                         Aca_estudiante_x_Aca_Beca.IdBeca3 = Aca_Beca_3.IdBeca LEFT OUTER JOIN
                         Aca_Beca AS Aca_Beca_2 ON Aca_estudiante_x_Aca_Beca.IdInstitucion = Aca_Beca_2.IdInstitucion AND 
                         Aca_estudiante_x_Aca_Beca.IdBeca2 = Aca_Beca_2.IdBeca LEFT OUTER JOIN
                         Aca_Beca AS Aca_Beca_1 ON Aca_estudiante_x_Aca_Beca.IdInstitucion = Aca_Beca_1.IdInstitucion AND Aca_estudiante_x_Aca_Beca.IdBeca1 = Aca_Beca_1.IdBeca

