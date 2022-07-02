use FinalPrograX
go

create VIEW VW_IMPUESTO_CLIENTE
AS
select c.id_cliente,C.Nombre, C.Apellido, C.Salario, R.Nombre AS Rubro, R.Porcentaje, r.id_rubro
from CLIENTES C
JOIN Rubro R ON C.id_rubro = R.id_rubro
go

select * from VW_IMPUESTO_CLIENTE


