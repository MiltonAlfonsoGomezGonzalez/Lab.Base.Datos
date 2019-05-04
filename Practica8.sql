USE Restaurante

CREATE TRIGGER trigger_drop
AFTER INSERT ON Cliente
FOR EACH ROW
BEGIN
DROP TABLE Afiliacion;
END;

CREATE TRIGGER trigger_insert
AFTER INSERT ON Afiliacion
FOR EACH ROW
BEGIN
insert into Afiliacion(afiliacion_code,hospital_des)
values ('11','centro medico maeva');
END;

Create function fnCliente()
return table
as
	RETURN select * from Cliente
select * from fnCliente()

declare 
@SQL varchar(300)

set @SQL = 'select * from tabla'

exec(@SQL)

CREATE PROCEDURE PA_INFORMACION_ID_CLIENTE
@cliente_id int
as select Apellidos, Nombre from Cliente 
Where cliente_id = @cliente_id
go

exec PA_INFORMACION_ID_CLIENTE 'Gomez Milton'

CREATE PROCEDURE PA_SABER_ID_CLIENTE
@nombre varchar
as select cliente_id from Cliente 
Where nombre = @nombre
go

exec PA_SABER_ID_CLIENTE '1'

CREATE PROCEDURE PA_INFORMACION_ID_RESERVACION
@reservacion_code int
as select cliente_id from Reservacion
Where reservacion_code = @reservacion_code
go

exec PA_INFORMACION_ID_RESERVACION '1'

CREATE PROCEDURE PA_INFORMACION_ID_DEPARTAMENTO
@departamento_code int
as select descripcion from Departamento 
Where departamento_code = @departamento_code
go

exec PA_INFORMACION_ID_DEPARTAMENTO '1'

CREATE PROCEDURE PA_INFORMACION_ID_DEPARTAMENTO
@departamento_code int
as select descripcion from Departamento 
Where departamento_code = @departamento_code
go

exec PA_INFORMACION_ID_DEPARTAMENTO '2'

CREATE PROCEDURE PA_INFORMACION_ID_DEPARTAMENTO
@departamento_code int
as select descripcion from Departamento 
Where departamento_code = @departamento_code
go

exec PA_INFORMACION_ID_DEPARTAMENTO '3'

CREATE PROCEDURE PA_INFORMACION_PUESTO_CODE
@puesto_code int
as select descripcion, departamento_code from Puesto 
Where puesto_code = @puesto_code
go

exec PA_INFORMACION_ID_CLIENTE '1'

CREATE PROCEDURE PA_INFORMACION_PUESTO_CODE
@puesto_code int
as select descripcion, departamento_code from Puesto 
Where puesto_code = @puesto_code
go

exec PA_INFORMACION_ID_CLIENTE '2'

CREATE PROCEDURE PA_INFORMACION_EMPLEADO_ID
@empleado_id int
as select Apellido, Nombre, puesto_code, afiliacion_code from Empleado 
Where empleado_id = @empleado_id
go

exec PA_INFORMACION_EMPLEADO_ID '1'

CREATE PROCEDURE PA_INFORMACION_EMPLEADO_ID
@empleado_id int
as select Apellido, Nombre, puesto_code, afiliacion_code from Empleado 
Where empleado_id = @empleado_id
go

exec PA_INFORMACION_EMPLEADO_ID '2'

