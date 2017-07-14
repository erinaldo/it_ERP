-- EGRESO X REQUISICION -- 2
-- ING X OC -- 11
-- SUCURSAL CAMPAMENTO NATURISA -- 2

--exec  [dbo].[spSys_in_Reversar_aprobacion] 1,2,2,146,0
CREATE PROCEDURE [dbo].[spSys_in_Reversar_aprobacion]
(
@IdEmpresa int,
@IdSucursal int,
@IdMovi_inven_tipo int,
@IdNumMovi numeric,
@Borar bit
)
AS
BEGIN
DECLARE @IdEmpresa_inv int
DECLARE @IdSucursal_inv int
DECLARE @IdBodega_inv int
DECLARE @IdMovi_inven_tipo_inv int
DECLARE @IdNumMovi_inv numeric

--BORRO TABLA PARA REVERSO DE APROBACION
DELETE [dbo].[in_movi_inven_para_reverso_aprobacion]

--OBTENGO LOS ID DEL MOVIMIENTO
INSERT INTO [dbo].[in_movi_inven_para_reverso_aprobacion]

SELECT IdEmpresa_inv,IdSucursal_inv,IdBodega_inv,IdMovi_inven_tipo_inv,IdNumMovi_inv,secuencia_inv 
FROM in_Ing_Egr_Inven_det 
WHERE IdEmpresa = @IdEmpresa and  IdSucursal = @IdSucursal  AND IdMovi_inven_tipo = @IdMovi_inven_tipo AND IdNumMovi = @IdNumMovi

IF(@Borar = 1)
	BEGIN
			UPDATE in_Ing_Egr_Inven_det SET IdEmpresa_inv = null, IdSucursal_inv = null, IdBodega_inv  = null, IdMovi_inven_tipo_inv = null, IdNumMovi_inv = null,
			secuencia_inv = null, IdEstadoAproba = 'PEND'
			WHERE IdEmpresa = @IdEmpresa and  IdSucursal = @IdSucursal  AND IdMovi_inven_tipo = @IdMovi_inven_tipo AND IdNumMovi = @IdNumMovi
				--SI HAY REGISTROS EN LA TABLA DE REVERSO BUSCO ELIMINO RELACIONES Y DIARIOS
				DECLARE @Contador NUMERIC
				SELECT @Contador = count(ISNULL(IdEmpresa_inv,0)) FROM [dbo].[in_movi_inven_para_reverso_aprobacion]
								
				IF(@Contador > 0)
					BEGIN
					SELECT * FROM in_movi_inve
					END
			--BORRO DETALLE
			DELETE in_movi_inve_detalle 
			WHERE EXISTS(
				SELECT * FROM in_movi_inven_para_reverso_aprobacion REV
				WHERE REV.IdEmpresa_inv = in_movi_inve_detalle.IdEmpresa
				AND REV.IdSucursal_inv = in_movi_inve_detalle.IdSucursal
				AND REV.IdBodega_inv = in_movi_inve_detalle.IdBodega
				AND REV.IdMovi_inven_tipo_inv = in_movi_inve_detalle.IdMovi_inven_tipo
				AND REV.IdNumMovi_inv = in_movi_inve_detalle.IdNumMovi
			)
			--BORRO CABECERA
			DELETE in_movi_inve
			WHERE EXISTS(
				SELECT * FROM in_movi_inven_para_reverso_aprobacion REV
				WHERE REV.IdEmpresa_inv = in_movi_inve.IdEmpresa
				AND REV.IdSucursal_inv = in_movi_inve.IdSucursal
				AND REV.IdBodega_inv = in_movi_inve.IdBodega
				AND REV.IdMovi_inven_tipo_inv = in_movi_inve.IdMovi_inven_tipo
				AND REV.IdNumMovi_inv = in_movi_inve.IdNumMovi
			)
	END
ELSE
	BEGIN
		SELECT * FROM in_Ing_Egr_Inven_det WHERE IdEmpresa = @IdEmpresa and  IdSucursal = @IdSucursal  AND IdMovi_inven_tipo = @IdMovi_inven_tipo AND IdNumMovi = @IdNumMovi
		SELECT * FROM in_Ing_Egr_Inven WHERE IdEmpresa = @IdEmpresa and  IdSucursal = @IdSucursal  AND IdMovi_inven_tipo = @IdMovi_inven_tipo AND IdNumMovi = @IdNumMovi
		SELECT * FROM in_movi_inve_detalle where
		EXISTS(
				SELECT * FROM in_movi_inven_para_reverso_aprobacion REV
				WHERE REV.IdEmpresa_inv = in_movi_inve_detalle.IdEmpresa
				AND REV.IdSucursal_inv = in_movi_inve_detalle.IdSucursal
				AND REV.IdBodega_inv = in_movi_inve_detalle.IdBodega
				AND REV.IdMovi_inven_tipo_inv = in_movi_inve_detalle.IdMovi_inven_tipo
				AND REV.IdNumMovi_inv = in_movi_inve_detalle.IdNumMovi
			)
			SELECT * FROM in_movi_inve
			WHERE EXISTS(
				SELECT * FROM in_movi_inven_para_reverso_aprobacion REV
				WHERE REV.IdEmpresa_inv = in_movi_inve.IdEmpresa
				AND REV.IdSucursal_inv = in_movi_inve.IdSucursal
				AND REV.IdBodega_inv = in_movi_inve.IdBodega
				AND REV.IdMovi_inven_tipo_inv = in_movi_inve.IdMovi_inven_tipo
				AND REV.IdNumMovi_inv = in_movi_inve.IdNumMovi
			)
	END
END