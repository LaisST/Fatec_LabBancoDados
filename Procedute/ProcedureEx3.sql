CREATE PROCEDURE p_RetornaFuncionarios
(@idDepto int)
AS
    Select
        e.NomeEmpregado,
        e.Salario,
        IsNULL(e.Comissao,0) as Comissao,
        d.NomeDepto
    From
        Empregado e
    Inner Join Departamento d On (d.IdDepto = e.IdDepto)
    Where
        (d.iddepto=@idDepto)
        
execute p_RetornaFuncionarios 20
  