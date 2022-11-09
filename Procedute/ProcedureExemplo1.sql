CREATE or alter PROCEDURE p_RetornaTodosFuncionarios
AS
 Select
  e.NomeEmpregado,
  e.Salario,
  IsNULL(e.Comissao,0) as Comissao,
  d.NomeDepto
 From
  Empregado e
  Inner Join Departamento d On (d.IdDepto = e.IdDepto)