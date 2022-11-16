create or alter PROCEDURE DepartamentoDelete(
@idDepto int, @totalDepto int OUTPUT) AS
DELETE FROM Departamento WHERE iddepto=@idDepto
select @totalDepto = COUNT(*) FROM Departamento;

declare @t int

EXECUTE DepartamentoDelete
60, @t OUTPUT
 
 select @t

 
 select * from Departamento