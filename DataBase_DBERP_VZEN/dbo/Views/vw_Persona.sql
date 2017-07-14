﻿create view [dbo].[vw_Persona]
as

SELECT     IdPersona, pe_nombreCompleto AS Nombre_Completo, pe_razonSocial AS Razon_Social, pe_apellido AS Apellido, pe_nombre AS Nombre, 
                      pe_cedulaRuc AS Cedula_Ruc, pe_direccion AS Direccion, pe_telefonoCasa AS Tel_Casa, pe_telefonoOfic AS Tel_Oficina, pe_telefonoInter AS Tel_Internacional, 
                      pe_telfono_Contacto AS Tel_Contacto, pe_celular AS Celular, pe_correo AS Correo, pe_fax AS Fax, pe_casilla AS Casilla, pe_fechaNacimiento AS Fecha_Nacimiento, 
                      pe_estado AS Estado, pe_fechaCreacion AS Fecha_Creacion
FROM         tb_persona


