

CREATE proc [CAH].[spMg_Aca_Profesor_Mant]
(
@i_Operacion	varchar(20)
,@i_id	numeric
,@i_name	nvarchar(200)
,@i_surname	nvarchar(200)
,@i_tipo_documento	nvarchar(100)
,@i_document	nvarchar(40)
,@i_address	nvarchar(500)
,@i_phone	nvarchar(80)
,@i_celular	nvarchar(200)
,@i_email	nvarchar(200)
)
as 
begin


declare @w_IdPersona	numeric	
declare @w_CodPersona	varchar(20)
declare @w_pe_Naturaleza	varchar(25)
declare @w_pe_nombreCompleto	varchar(200)
declare @w_pe_razonSocial	varchar(150)
declare @w_pe_apellido	varchar(100)
declare @w_pe_nombre	varchar(100)
declare @w_IdTipoDocumento	varchar(25)
declare @w_pe_cedulaRuc	varchar(50)
declare @w_pe_direccion	varchar(150)
declare @w_pe_telefonoCasa	varchar(50)
declare @w_pe_telefonoOfic	varchar(50)
declare @w_pe_telefonoInter	varchar(50)
declare @w_pe_telfono_Contacto	varchar(50)
declare @w_pe_celular	varchar(50)
declare @w_pe_correo	varchar(100)
declare @w_pe_sexo	varchar	(25)
declare @w_IdEstadoCivil	varchar	(25)
--declare @w_pe_fechaNacimiento	datetime

declare @w_IdInstitucion int
declare @w_UsuarioCreacion  varchar(50)
declare @w_UsuarioUltModificacion varchar(50)
declare @w_IdProfesor int
declare @w_estado char(1)
declare @w_FechaCreacion datetime
declare @w_FechaModificacion datetime


if ( LEN(@i_document)=10)
begin
	set @w_pe_Naturaleza ='NATU'
end
else
begin
	set @w_pe_Naturaleza ='JURI'
end

					
		

					
if (@i_tipo_documento='TIPO_IDENT_CEDULA')
begin
	set @w_IdTipoDocumento ='CED'
end 

					
--if (@i_tipo_documento='TIPO_IDENT_PASAPORTE')
--begin
--	set @w_IdTipoDocumento ='PAS'
--end 
--else
--begin
--	set @w_IdTipoDocumento ='RUC'
--end 

if (len( @i_document)=13 )
begin
  set @w_IdTipoDocumento='RUC'
end 
else
begin
		if (len( @i_document)=10 )
		begin
		  set @w_IdTipoDocumento ='CED'
		end 
		else
		begin
			 set @w_IdTipoDocumento ='PAS'
		end 
end 


if (isnumeric( @i_document)=0 )
begin
  set @w_IdTipoDocumento='PAS'
end


set @w_pe_apellido=@i_surname
set @w_pe_nombre=@i_name
set @w_pe_nombreCompleto = @i_surname + ' '+ @i_name	
set @w_pe_razonSocial=@w_pe_nombreCompleto 

set @w_pe_cedulaRuc=ltrim(rtrim(@i_document))
set @w_pe_direccion= isnull(@i_address,'')
set @w_pe_telefonoCasa=isnull(@i_phone,'')
set @w_pe_telefonoOfic=@w_pe_telefonoCasa
set @w_pe_telefonoInter=@w_pe_telefonoCasa
set @w_pe_telfono_Contacto=@w_pe_telefonoCasa
set @w_pe_celular=isnull(@i_celular,'')
set @w_pe_correo=isnull(@i_email,'')
set @w_pe_sexo='SEXO_MAS'
set @w_IdEstadoCivil='SOLTE'


set @w_IdInstitucion = 1
set @w_UsuarioCreacion = 'sys_mig_aca_Profesor'
set @w_UsuarioUltModificacion = 'sys_mig_aca_Profesor'
set @w_estado = 'A'
set @w_FechaCreacion =  GETDATE()
set @w_FechaModificacion = GETDATE()


--set @i_fecha_modificacion=@i_fecha_modificacion
--set @i_fecha_transaccion=isnull(@i_fecha_transaccion,getdate())



	if (@i_Operacion='INSERT')
	begin

	--print '@w_pe_cedulaRuc:' + @w_pe_cedulaRuc
	--print '@w_IdTipoDocumento' + @w_IdTipoDocumento

	--SELECT * FROM tb_persona per where per.pe_cedulaRuc =@w_pe_cedulaRuc and per.pe_cedulaRuc<>'' and per.IdTipoDocumento=@w_IdTipoDocumento

			if exists( SELECT IdPersona FROM tb_persona per where per.pe_cedulaRuc =@w_pe_cedulaRuc and per.pe_cedulaRuc<>'' and per.IdTipoDocumento=@w_IdTipoDocumento)
			begin


			--print 'x update'
						select @w_IdPersona = per.IdPersona
						FROM   tb_persona per
						WHERE        per.pe_cedulaRuc = rtrim(ltrim(@w_pe_cedulaRuc))


				
						UPDATE       tb_persona
						SET
						  pe_Naturaleza =@w_pe_Naturaleza
						, pe_nombreCompleto =@w_pe_nombreCompleto
						, pe_razonSocial =@w_pe_razonSocial
						, pe_apellido =@w_pe_apellido
						, pe_nombre =@w_pe_nombre
						, IdTipoDocumento =@w_IdTipoDocumento
						, pe_cedulaRuc =@w_pe_cedulaRuc
						, pe_direccion =@w_pe_direccion
						, pe_telefonoCasa =@w_pe_telefonoCasa
						, pe_telefonoOfic =@w_pe_telefonoOfic
						, pe_telefonoInter =@w_pe_telefonoInter
						, pe_telfono_Contacto =@w_pe_telfono_Contacto
						, pe_celular =@w_pe_celular
						, pe_correo =@w_pe_correo
						, pe_sexo =@w_pe_sexo
						, IdEstadoCivil =@w_IdEstadoCivil
						--, pe_fechaNacimiento =@w_pe_fechaNacimiento
						, pe_fechaModificacion = @w_FechaModificacion
						, pe_UltUsuarioModi = @w_UsuarioUltModificacion
						FROM          tb_persona 
						WHERE        tb_persona.IdPersona=@w_IdPersona


						if not exists( SELECT * FROM [CAH].[tb_persona_x_mg_profesor_sistema_rrhh] per where per.IdPersona_Erp=@w_IdPersona and per.[IdProfesor_Sistema_RRHH]=@i_id)
						begin


									INSERT INTO [CAH].[tb_persona_x_mg_profesor_sistema_rrhh]
								   ([IdPersona_Erp]	           ,[IdProfesor_Sistema_RRHH]	           ,[nom_persona]
									,nota1 
								   )
									VALUES
								   (@w_IdPersona				,@i_id								,'persona ya existe por cedula #:' + @w_pe_cedulaRuc
								   ,'INSERT - UPDATE'
								   )
						
						end 

						select  @w_IdProfesor=ISNULL(MAX(est.[IdProfesor]),0)+1 from [dbo].[Aca_Profesor] est where est.IdInstitucion=@w_IdInstitucion
						
						INSERT INTO [dbo].[Aca_Profesor]
						([IdInstitucion]			,[IdProfesor]			,[CodProfesor]				,[IdPersona]			,[estado]
						 ,[FechaCreacion]			,[FechaModificacion]	,[UsuarioCreacion]			,[UsuarioModificacion]
						)
						VALUES
						(@w_IdInstitucion			,@w_IdProfesor			,@i_id						,@w_IdPersona			,@w_estado						
						 ,@w_FechaCreacion			,@w_FechaModificacion	,@w_UsuarioCreacion			,@w_UsuarioUltModificacion
						)


			end
			else
			begin


			--print 'x else insert'

					SELECT @w_IdPersona=isnull(max(PER.IdPersona),0)+1 
					FROM [dbo].[tb_persona] PER 

					set @w_CodPersona=@w_IdPersona
					--print '@w_IdTipoDocumento' + @w_IdTipoDocumento
		
					INSERT INTO [dbo].[tb_persona]
					([IdPersona]				,[CodPersona]				,[pe_Naturaleza]				,[pe_nombreCompleto]			,[pe_razonSocial]				,[pe_apellido]			
					,[pe_nombre]				,[IdTipoPersona]			,[IdTipoDocumento]				,[pe_cedulaRuc]					,[pe_direccion]					,[pe_telefonoCasa]				
					,[pe_telefonoOfic]			,[pe_telefonoInter]			,[pe_telfono_Contacto]			,[pe_celular]					,[pe_correo]									
					,[pe_sexo]					,[IdEstadoCivil]			/*,[pe_fechaNacimiento]	*/		,[pe_estado]					,[pe_fechaCreacion]	
					,pe_fax						,pe_UltUsuarioModi			, pe_fechaModificacion 
					)
					VALUES
					(
						@w_IdPersona				,@w_CodPersona					,@w_pe_Naturaleza				,@w_pe_nombreCompleto			,@w_pe_razonSocial				,@w_pe_apellido			
						,@w_pe_nombre				,1								,@w_IdTipoDocumento				,@w_pe_cedulaRuc				,@w_pe_direccion				,@w_pe_telefonoCasa				
						,@w_pe_telefonoOfic			,@w_pe_telefonoInter			,@w_pe_telfono_Contacto			,@w_pe_celular					,@w_pe_correo					
						,@w_pe_sexo					,@w_IdEstadoCivil				/*,@w_pe_fechaNacimiento*/			,'A'							,@w_FechaCreacion		
						,'Mig_from_aca'				,@w_UsuarioUltModificacion		,@w_FechaModificacion
					)

					--select * from [dbo].[tb_persona] where IdPersona=@w_IdPersona


					if not exists( SELECT * FROM [CAH].[tb_persona_x_mg_profesor_sistema_rrhh] per where per.IdPersona_Erp=@w_IdPersona and per.[IdProfesor_Sistema_RRHH]=@i_id)
					begin
							INSERT INTO [CAH].[tb_persona_x_mg_profesor_sistema_rrhh]
						   ([IdPersona_Erp]	           ,[IdProfesor_Sistema_RRHH]	           ,[nom_persona]
						   ,nota1 
						   )
							VALUES
						   (@w_IdPersona				,@i_id								,'persona nueva '
						   ,'INSERT - INSERT  SELECT @w_IdPersona=isnull(max(PER.IdPersona),0)+1 '
						   )
				   end 

				   select  @w_IdProfesor=ISNULL(MAX(est.[IdProfesor]),0)+1 from [dbo].[Aca_Profesor] est where est.IdInstitucion=@w_IdInstitucion
						
						INSERT INTO [dbo].[Aca_Profesor]
						([IdInstitucion]			,[IdProfesor]			,[CodProfesor]				,[IdPersona]			,[estado]
						 ,[FechaCreacion]			,[FechaModificacion]	,[UsuarioCreacion]			,[UsuarioModificacion]
						)
						VALUES
						(@w_IdInstitucion			,@w_IdProfesor			,@i_id						,@w_IdPersona			,@w_estado						
						 ,@w_FechaCreacion			,@w_FechaModificacion	,@w_UsuarioCreacion			,@w_UsuarioUltModificacion
						)


			 end

			
	end 


	if (@i_Operacion='UPDATE')
	begin


		UPDATE       tb_persona
		SET
		  pe_Naturaleza =@w_pe_Naturaleza
		, pe_nombreCompleto =@w_pe_nombreCompleto
		, pe_razonSocial =@w_pe_razonSocial
		, pe_apellido =@w_pe_apellido
		, pe_nombre =@w_pe_nombre
		, IdTipoDocumento =@w_IdTipoDocumento
		, pe_cedulaRuc =@w_pe_cedulaRuc
		, pe_direccion =@w_pe_direccion
		, pe_telefonoCasa =@w_pe_telefonoCasa
		, pe_telefonoOfic =@w_pe_telefonoOfic
		, pe_telefonoInter =@w_pe_telefonoInter
		, pe_telfono_Contacto =@w_pe_telfono_Contacto
		, pe_celular =@w_pe_celular
		, pe_correo =@w_pe_correo
		, pe_sexo =@w_pe_sexo
		, IdEstadoCivil =@w_IdEstadoCivil
		--, pe_fechaNacimiento =@w_pe_fechaNacimiento
		, pe_fechaModificacion = @w_FechaModificacion
		, pe_UltUsuarioModi ='sys_mig_aca'
		FROM            CAH.[tb_persona_x_mg_profesor_sistema_rrhh] INNER JOIN
							tb_persona ON CAH.[tb_persona_x_mg_profesor_sistema_rrhh].IdPersona_Erp = tb_persona.IdPersona
		WHERE        (CAH.[tb_persona_x_mg_profesor_sistema_rrhh].[IdProfesor_Sistema_RRHH] = @i_id)


		UPDATE [CAH].[tb_persona_x_mg_profesor_sistema_rrhh]
		set nota1 ='UPDATE - if @i_Operacion=UPDATE'
		,nota2 =@w_FechaModificacion
		,fecha_update=@w_FechaModificacion
		WHERE        (CAH.[tb_persona_x_mg_profesor_sistema_rrhh].[IdProfesor_Sistema_RRHH] = @i_id)

	end


	update [tb_persona]
	set pe_fechaModificacion=GETDATE()
	where pe_fechaModificacion is null


	update tb_persona 
	set IdTipoDocumento='CED'
	where IdTipoDocumento='RUC' 
	and len(pe_cedulaRuc)<13 and ISNUMERIC(pe_cedulaRuc)=1


	update tb_persona 
	set IdTipoDocumento='PAS'
	where ISNUMERIC(pe_cedulaRuc)=0
	and IdTipoDocumento<>'PAS'


end