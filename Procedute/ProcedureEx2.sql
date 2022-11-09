CREATE OR ALTER PROCEDURE p_RetornaTotaisFuncionarios
AS
 Select
  d.NomeDepto,
  SUM(e.Salario) as 'Total Salário',
  AVG(e.Salario) as 'Média Salário',
  MAX(e.Salario) as 'Maior Salário',
  MIN(e.Salario) as 'Menor Salário',
  SUM(IsNULL(e.Comissao,0)) as Comissao,
  AVG(IsNULL(e.Comissao,0)) As 'Média Comissão',
  MAX(IsNULL(e.Comissao,0)) As 'Maior Comissão',
  MIN(IsNULL(e.Comissao,0)) As 'Menor Comissão',
  SUM(e.Salario + IsNULL(e.Comissao,0)) as 'Remuneração Total',
  AVG(e.Salario + IsNULL(e.Comissao,0)) as 'Remuneração Total Média',
  Count(*) As 'Total Funcionários'
From
  Empregado e
Inner Join Departamento d On (d.IdDepto = e.IdDepto)
Group by d.NomeDepto
Order by d.NomeDepto

execute p_RetornaTotaisFuncionarios