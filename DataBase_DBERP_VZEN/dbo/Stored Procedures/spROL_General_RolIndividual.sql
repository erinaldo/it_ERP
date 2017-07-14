﻿

CREATE  PROCEDURE [dbo].[spROL_General_RolIndividual]  
	@idempresa int,
	@idnomina_tipo int,
	@idnomina_Tipo_liq int,
	@idperiodo int
AS

BEGIN
/*
declare
    @idempresa int,
	@idnomina_tipo int,
	@idnomina_Tipo_liq int,
	@idperiodo int


	set @idempresa =1
	set @idnomina_tipo =1
	set @idnomina_Tipo_liq =2
	set @idperiodo =201704
	*/
	  delete ro_rol_individual where IdEmpresa=@idempresa
	  and IdNominaTipo=@idnomina_tipo
	  and IdNominaTipoLiqui=@idnomina_Tipo_liq
	  and IdPeriodo=@idperiodo
	insert  into ro_rol_individual (IdEmpresa,IdNominaTipo,IdNominaTipoLiqui,IdPeriodo,IdEmpleado,IdRubro,Ingreso,Egreso,Orden, FechaPago)	
	select D.IdEmpresa,D.IdNominaTipo,D.IdNominaTipoLiqui,D.IdPeriodo,D.IdEmpleado,D.IdRubro,D.Valor,0,D.Orden,'' from ro_rol_detalle as D, ro_rubro_tipo as R	

	  where D.IdEmpresa=@idempresa
	  and IdNominaTipo=@idnomina_tipo
	  and IdNominaTipoLiqui=@idnomina_Tipo_liq
	  and IdPeriodo=@idperiodo
	  and D.IdRubro=R.IdRubro
	  and R.IdEmpresa=D.IdEmpresa
	  And R.ru_tipo='I'
	  and D.Valor>0


	  -- inserto si tiene saldo zero a pagar 
	insert  into ro_rol_individual (IdEmpresa,IdNominaTipo,IdNominaTipoLiqui,IdPeriodo,IdEmpleado,IdRubro,Ingreso,Egreso,Orden, FechaPago)	
	select D.IdEmpresa,D.IdNominaTipo,D.IdNominaTipoLiqui,D.IdPeriodo,D.IdEmpleado,D.IdRubro,D.Valor,0,D.Orden,'' from ro_rol_detalle as D, ro_rubro_tipo as R	

	  where D.IdEmpresa=@idempresa
	  and IdNominaTipo=@idnomina_tipo
	  and IdNominaTipoLiqui=@idnomina_Tipo_liq
	  and IdPeriodo=@idperiodo
	  and D.IdRubro=R.IdRubro
	  and R.IdEmpresa=D.IdEmpresa
	  And R.ru_tipo='A'
	  and D.Valor=0
	  and D.IdRubro=950



	insert  into ro_rol_individual (IdEmpresa,IdNominaTipo,IdNominaTipoLiqui,IdPeriodo,IdEmpleado,IdRubro,Ingreso,Egreso,Orden, FechaPago)	
	select D.IdEmpresa,D.IdNominaTipo,D.IdNominaTipoLiqui,D.IdPeriodo,D.IdEmpleado,D.IdRubro,0,Valor,D.Orden,'' from ro_rol_detalle as D, ro_rubro_tipo as R	

	  where D.IdEmpresa=@idempresa
	  and IdNominaTipo=@idnomina_tipo
	  and IdNominaTipoLiqui=@idnomina_Tipo_liq
	  and IdPeriodo=@idperiodo
	  and R.IdEmpresa=D.IdEmpresa
	  and D.IdRubro=R.IdRubro
	  And R.ru_tipo='E'
	  and D.Valor>0



	 -- select * from ro_rol_detalle
	 -- select * from ro_rol_individual where IdPeriodo=201704 and IdEmpleado=48

	

END