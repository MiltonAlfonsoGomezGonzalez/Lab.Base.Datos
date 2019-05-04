USE Restaurante	

GRANT SELECT 
 ON Cliente 
 TO milton;

CREATE VIEW INFORMACION_ID_CLIENTE
as select Apellidos, Nombre from Cliente 
 WHERE cliente_id = 1;

SELECT * FROM INFORMACION_ID_CLIENTE;

CREATE VIEW SABER_ID_CLIENTE
as select cliente_id from Cliente 
Where cliente_id = 1 

SELECT * FROM SABER_ID_CLIENTE;

CREATE VIEW INFORMACION_ID_RESERVACION
as select cliente_id from Reservacion
Where reservacion_code = 1

SELECT * FROM INFORMACION_ID_RESERVACION;

CREATE VIEW INFORMACION_ID_DEPARTAMENTO
as select descripcion from Departamento 
Where departamento_code = 1

SELECT * FROM INFORMACION_ID_DEPARTAMENTO;

CREATE VIEW INFORMACION_ID_DEPARTAMENTO
as select descripcion from Departamento 
Where departamento_code = 2

SELECT * FROM INFORMACION_ID_DEPARTAMENTO;

CREATE VIEW INFORMACION_ID_DEPARTAMENTO
as select descripcion from Departamento 
Where departamento_code = 3

SELECT * FROM INFORMACION_ID_DEPARTAMENTO;

CREATE VIEW INFORMACION_PUESTO_CODE
as select descripcion, departamento_code from Puesto 
Where puesto_code = 1

SELECT * FROM INFORMACION_PUESTO_CODE;

CREATE VIEW INFORMACION_PUESTO_CODE
as select descripcion, departamento_code from Puesto 
Where puesto_code = 2

SELECT * FROM INFORMACION_PUESTO_CODE;

CREATE VIEW INFORMACION_EMPLEADO_ID
as select Apellido, Nombre, puesto_code, afiliacion_code from Empleado  
Where empleado_id = 1

SELECT * FROM INFORMACION_EMPLEADO_ID;

CREATE VIEW INFORMACION_EMPLEADO_ID
as select Apellido, Nombre, puesto_code, afiliacion_code from Empleado  
Where empleado_id = 2

SELECT * FROM INFORMACION_EMPLEADO_ID;


