﻿
CREATE VIEW [dbo].[vwcom_MotivoRequerimiento]
AS
SELECT        IdCatalogocompra_tipo AS IdTipoCatalogo, CodCatalogo AS Codigo, IdCatalogocompra AS Id, Nombre AS descripcion, Estado, Orden, NombreIngles AS name
FROM            dbo.com_catalogo




