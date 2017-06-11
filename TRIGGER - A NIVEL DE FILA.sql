--Controla que no se actualicen fechas de nacimiento que den lugar a personas menores de edad
--en la tabla cliente
CREATE OR REPLACE TRIGGER TR_B_U_FECHANACIMIENTO_CLIENTE 
BEFORE UPDATE OF FECHA_NACIMIENTO ON CLIENTE 
FOR EACH ROW
DECLARE
    EDAD NUMBER;
BEGIN
EDAD:=FLOOR(months_between(SYSDATE,
                                    TO_DATE(:new.FECHA_NACIMIENTO)
                           )/12);
if EDAD<18 THEN
    RAISE_APPLICATION_ERROR(-20002,'La edad es: '||TO_CHAR(EDAD)||' (persona debe ser mayor de edad)');
END IF;
END;